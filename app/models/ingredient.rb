class Ingredient < ApplicationRecord
  has_and_belongs_to_many :products
  has_many :sources
end

class Source < ApplicationRecord
  belongs_to :ingredient
end
