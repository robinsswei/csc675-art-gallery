class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :seller_type
      t.string :organization_name
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.text :address
      t.string :email
      t.integer :country_id

      t.timestamps null: false
    end
  end
end
