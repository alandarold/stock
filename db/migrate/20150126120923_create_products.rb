class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :code
      t.references :provider, index: true
      t.string :marck
      t.string :modelo
      t.integer :amount
      t.decimal :purchase_value
      t.decimal :sale_value
      t.text :description
      t.boolean :active
      t.date :data

      t.timestamps
    end
  end
end
