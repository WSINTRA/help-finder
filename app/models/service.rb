class Service < ApplicationRecord
	has_many :facility_services
	has_many :facilities, through: :facility_services
end
