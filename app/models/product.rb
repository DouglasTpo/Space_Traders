class Product < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  CATEGORIES = ["Droids", "Vehicles", "Spaceships"]

  validates :name, :model, :price, :manufacturer, :overview, :category, presence: true
  validates :photos, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :category, inclusion: { in: CATEGORIES }
end
