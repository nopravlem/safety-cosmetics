class IngredientsPresenter
  RATING = {
    0 => "neutral",
    1 => "bad",
    2 => "okay",
    3 => "good"
  }.freeze

  delegate :id, :name, :description, :main_purpose, :verdict, :other_names, to: :@ingredients

  def initialize(ingredients)
    @ingredients = ingredients
  end

  def rating_label
    @rating_label ||= RATING[@ingredients.good_for_skin]
  end
end