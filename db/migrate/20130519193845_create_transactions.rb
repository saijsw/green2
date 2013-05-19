class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :account_from
      t.integer :account_to
      t.decimal :amount, precision: 10, scale: 2
      t.string :notes

      t.timestamps
    end
  end
end
