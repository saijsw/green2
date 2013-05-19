class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.integer :user_id
      t.string :title
      t.text :description
      t.boolean :offer
      t.integer :category_id
      t.date :expiration_date

      t.timestamps
    end
  end
end
