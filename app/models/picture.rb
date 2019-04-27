include Rails.application.routes.url_helpers
class Picture < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_one_attached :image

  def image_url
	  url_for(image)
  end
end