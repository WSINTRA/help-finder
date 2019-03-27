class UserComment < ApplicationRecord
  belongs_to :user
  belongs_to :comment
  belongs_to :facility
  
end
