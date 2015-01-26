class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.references :product, index: true
      t.references :code, index: true
      t.integer :amount
      t.integer :discount
      t.references :user, index: true

      t.timestamps
    end
  end
end
