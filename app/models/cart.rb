class Cart < ApplicationRecord

  belongs_to :user
  belongs_to :item

  has_many :join_cart_items
  has_many :items, through: :join_cart_items

end
