class AddDefaultCreditLimitToCurrencies < ActiveRecord::Migration
  def change
    add_column :currencies, :default_credit_limit, :decimal, precision: 10, scale: 2
  end
end
