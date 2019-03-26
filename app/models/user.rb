class User < ApplicationRecord
	has_many :user_comments
	has_many :comments, through: :user_comments
	has_secure_password
end
