class Product < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_and_belongs_to_many :orders

  CATEGORIES = ["Droids", "Vehicles", "Spaceships"]

  validates :name, :model, :price, :manufacturer, :overview, :category, presence: true
  validates :photos, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :category, inclusion: { in: CATEGORIES }
end
