class AddCreditlimitToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :credit_limit, :decimal, precision: 10, scale: 2
  end
end
