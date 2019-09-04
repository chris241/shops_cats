class Cart < ApplicationRecord

  belongs_to :item
  has_many :items
  has_one :user

end
