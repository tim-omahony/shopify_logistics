class Item < ApplicationRecord
  has_many :warehouses
  
  validates :name, presence: true
  validates :count, presence: true
end
