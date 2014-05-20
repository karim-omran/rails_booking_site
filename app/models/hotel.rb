class Hotel < ActiveRecord::Base
	has_many :hotels_pics
	has_many :rooms
end
