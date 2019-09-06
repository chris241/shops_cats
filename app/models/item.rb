class Item < ApplicationRecord
	validates :title, presence: true, length: { in: 2..10 }
	validates :description, presence: true, length: { in: 2..200 }
	validates :price, presence: true
	
	
	has_many :join_order_items
	has_many :orders, through: :join_order_items

  has_many :join_cart_items
  has_many :carts, through: :join_cart_items
  has_one_attached :adminavatar
end
