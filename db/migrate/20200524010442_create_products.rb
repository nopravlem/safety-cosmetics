class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.real :price
      t.string :picture
      t.string :company
      t.string :name
      t.string :buy_online

      t.timestamps
    end
  end
end
