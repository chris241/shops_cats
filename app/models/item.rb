class Item < ApplicationRecord
<<<<<<< HEAD


	validates :title, presence: true, length: { in: 5..10 }
	validates :description, presence: true, length: { in: 10..200 }
	validates :price, presence: true
	URL_REGEXP = /A^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$Z/ix
	validates :image_url, presence: true, format: { with: URL_REGEXP, message: 'You provided invalid URL'}
=======
	validates :title, presence: true, length: { in: 5..10 }
	validates :description, presence: true, length: { in: 10..200 }
	validates :price, presence: true
	validates :image_url, presence: true


	has_many :joins
	has_many :carts, through: :joins
>>>>>>> developpement
end
