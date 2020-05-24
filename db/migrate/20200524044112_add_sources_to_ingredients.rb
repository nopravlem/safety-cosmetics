class AddSourcesToIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :sources do |t|
      t.belongs_to :ingredient
      t.string :source
      t.string :url
    end
  end
end
