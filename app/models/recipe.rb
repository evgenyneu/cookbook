class Recipe < ApplicationRecord
  has_many :ingredients

  validates_presence_of :name, :instructions, :cuisine, :cooking_time
  validates_length_of :name, :cuisine, maximum: 100
  validates_length_of :instructions, maximum: 1000
  validates :cooking_time, numericality: { greater_than: 0, only_integer: true }
end
