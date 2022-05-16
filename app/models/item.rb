class Item < ApplicationRecord
  validates :name, presence: true
  validates :count, presence: true
end
