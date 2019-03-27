class Service < ApplicationRecord

	has_many :facility_services, :dependent => :destroy
	has_many :facilities, through: :facility_services
end
