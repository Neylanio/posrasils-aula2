class Picture < ApplicationRecord
	validates :name, presence: true, uniqueness: true
	has_one_attached :image

	def image_url
		image.service_url.split("?").first
	end
end
