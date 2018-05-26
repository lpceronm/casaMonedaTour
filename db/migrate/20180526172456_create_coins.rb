class CreateCoins < ActiveRecord::Migration[5.2]
  def change
    create_table :coins do |t|
      t.string :name
      t.string :num_record
      t.string :material
      t.string :country
      t.string :denomination
      t.string :batch
      t.text :location
      t.string :issuer
      t.string :serial_number
      t.int :part_number
      t.int :quantity
      t.string :image

      t.timestamps
    end
  end
end
