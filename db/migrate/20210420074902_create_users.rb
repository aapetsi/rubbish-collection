class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :house_number
      t.string :street_name
      t.string :suburb
      t.string :dustbin_id
      t.string :dustbin_size
      t.string :payment_code
      t.string :collection_type

      t.timestamps
    end
  end
end
