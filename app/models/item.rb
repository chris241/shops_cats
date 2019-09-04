class Item < ApplicationRecord
	validates :title, presence: true, length: { in: 2..10 }
	validates :description, presence: true, length: { in: 2..200 }
	validates :price, presence: true
	URL_REGEXP = /\A^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$\z/ix
	validates :image_url, presence: true, format: { with: URL_REGEXP, message: 'You provided invalid URL'}

	has_many :carts
end