class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.text :comment
      t.timestamps
    end
  end
end
