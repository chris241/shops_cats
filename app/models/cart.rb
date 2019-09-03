class Cart < ApplicationRecord
  belongs_to :user
  has_many :joins
  has_many :items, through: :joins
end
