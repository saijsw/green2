class Account < ActiveRecord::Base
  belongs_to :user
  belongs_to :currency
  has_many :transaction, class_name: 'Transaction', foreign_key: 'account_to'
  #has_many :account_from, class_name: 'Transaction', foreign_key: 'account_from'

  attr_accessible :user_id, :currency_id, :balance, :credit_limit

  def balance_with_currency
    "#{balance} #{self.currency.code}"
  end
end
