class Weight < ApplicationRecord
	
	belongs_to :user

	validates :Weight, presence: true

end
