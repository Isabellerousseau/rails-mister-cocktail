# frozen_string_literal: true

class Ingredient < ApplicationRecord
  has_many :doses

  INGREDIENT = Ingredient.name

  validates :name, uniqueness: true, presence: true
end
