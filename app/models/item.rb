class Item < ApplicationRecord
	validates :title, presence: true, length: { in: 5..10 }
	validates :description, presence: true, length: { in: 10..200 }
	validates :price, presence: true
	validates :image_url, presence: true

	
	has_many :joins
	has_many :carts, through: :joins
end
