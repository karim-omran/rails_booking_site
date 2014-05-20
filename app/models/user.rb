class User < ActiveRecord::Base

	has_many :rates
	has_many :res_rooms

  attr_accessor :password

  before_save :encrypt_password
  after_save :clear_password

  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  validates :name, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
  validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
  validates :password, :confirmation => true
  #Only on Create so other actions like update password attribute can be nil
  validates_length_of :password, :in => 6..20, :on => :create

  attr_accessible :name, :email, :password, :password_confirmation


  def self.authenticate(name_or_email="", login_password="")

    if  EMAIL_REGEX.match(name_or_email)    
      user = User.find_by_email(name_or_email)
    else
      user = User.find_by_name(name_or_email)
    end

    if user && user.match_password(login_password)
      return user
    else
      return false
    end
  end   

  def match_password(login_password="")
    BCrypt::Password.new(self.enc_password) == login_password
  end

  def encrypt_password
    self.enc_password = BCrypt::Password.create(password) if password.present?
  end

  def clear_password
    self.password = nil
  end

end
