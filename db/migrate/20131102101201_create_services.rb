class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :type
      t.string :company
      t.string :contact
      t.string :phone
      t.string :email
      t.text :description
      t.float :price
      t.float :price_with_vat
      t.boolean :payed

      t.timestamps
    end
  end
end
