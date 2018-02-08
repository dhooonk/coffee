class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :comment
      t.integer :price
      t.binary :confirm
      t.belongs_to :user
      t.timestamps
    end
  end
end
