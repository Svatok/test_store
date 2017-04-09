# This migration comes from engine_cart (originally 20170328210637)
class CreateEngineCartAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :engine_cart_addresses do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :zip
      t.references :country, index: true
      t.string :phone
      t.string :address_type
      t.references :addressable, polymorphic: true, index: {name: 'addressable_index'}

      t.timestamps
    end
  end
end
