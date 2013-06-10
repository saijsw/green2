class Account < ActiveRecord::Base
  belongs_to :user
  before_save :set_default_currency
  #belongs_to :currency
  has_many :transaction, class_name: 'Transaction', foreign_key: 'account_to'
  #has_many :account_from, class_name: 'Transaction', foreign_key: 'account_from'

  attr_accessible :user_id, :currency_id, :balance, :credit_limit

  def balance_with_currency
    "#{balance} #{APP_CONFIG['currency_code']}"
  end

  def set_default_currency
    self.currency_id = 1
    self.credit_limit = APP_CONFIG['default_credit_limit']
  end
end
