class Product < ApplicationRecord
  attribute :quantity, :integer, default: 1

  validates :quantity, presence: true
  has_many :orders
end
