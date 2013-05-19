class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :user_id
      t.decimal :balance, precision: 10, scale: 2
      t.integer :currency_id

      t.timestamps
    end
  end
end
