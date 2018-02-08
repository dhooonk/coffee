class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.belongs_to :ingredient
      t.belongs_to :product
      t.integer :quantity
      t.integer :price
      t.timestamps
    end
  end
end
