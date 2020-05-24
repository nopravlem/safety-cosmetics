class ProductsPresenter
  delegate :price, :picture, :company, :name, :buy_online, to: :@product

  def initialize(product)
    @product = product
  end

  def ingredients
    @ingredients ||= @product.ingredients.map { |ing| IngredientsPresenter.new(ing) }
  end
end