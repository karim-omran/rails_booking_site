class User < ActiveRecord::Base
	has_many :rates
	has_many :res_rooms
end
