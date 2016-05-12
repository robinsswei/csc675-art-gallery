class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :status
      t.integer :country_id
      t.date :date_of_birth
      t.text :background
      t.string :phone_number
      t.string :email

      t.timestamps null: false
    end
  end
end
