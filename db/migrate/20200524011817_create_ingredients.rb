class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :description
      t.string :main_purpose
      t.string :verdict
      t.integer :good_for_skin
      t.string :other_names, array: true, default: []
    end

    create_table :ingredients_products, id: false do |t|
      t.belongs_to :product
      t.belongs_to :ingredient
    end
  end
end
