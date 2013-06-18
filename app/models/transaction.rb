class Transaction < ActiveRecord::Base
  belongs_to :account, class_name: 'Account', foreign_key: 'account_from'
  before_save :change_balances
  # belongs_to :account, class_name: 'Account', foreign_key: 'account_to'
  attr_accessible :account_from, :accounts_to, :amount, :notes
  attr_accessor :user_to

  validates :account_from, presence: true
  validates :account_to, presence: true
  validates_numericality_of :amount, :greater_than => 0

  def change_balances
    balance_from = Account.find(self.account_from)
    balance_from.balance = balance_from.balance - self.amount
    balance_to = Account.find(self.account_to)
    balance_to.balance = balance_to.balance - self.amount
  end

  def amount_with_currency
    "#{amount} #{APP_CONFIG['currency_code']}"
  end
end
