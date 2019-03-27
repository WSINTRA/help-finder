class Facility < ApplicationRecord
	has_many :user_comments
	has_many :comments, through: :user_comments
	has_many :users, through: :user_comments
	
	has_many :facility_services
	has_many :services, through: :facility_services
end
