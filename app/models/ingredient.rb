class Ingredient < ApplicationRecord
  belongs_to :recipe

  validates_presence_of :name
  validates_length_of :name, maximum: 100
end
