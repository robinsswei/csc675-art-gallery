class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :seller_type
      t.string :organization_name
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :address
      t.string :email
      t.references :country, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
