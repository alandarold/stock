class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.string :cnpj
      t.string :phone_one
      t.string :phone_two
      t.string :address
      t.string :district
      t.references :city, index: true
      t.string :state
      t.string :email
      t.text :description
      t.date :data_record

      t.timestamps
    end
  end
end
