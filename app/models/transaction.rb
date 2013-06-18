class Transaction < ActiveRecord::Base
  belongs_to :account, class_name: 'Account', foreign_key: 'account_from'
  #belongs_to :account, class_name: 'Account', foreign_key: 'account_to'
  attr_accessible :account_from, :accounts_to, :amount, :notes
  attr_accessor :user_to

  validates :account_from, presence: true
  validates :account_to, presence: true
  validates_numericality_of :amount, :greater_than => 0
  validate :change_balances

  def amount_with_currency
    "#{amount} #{APP_CONFIG['currency_code']}"
  end

private
  def change_balances
    balance_from = Account.find(self.account_from)
    balance_from.balance = balance_from.balance - self.amount
    if balance_from.balance < -balance_from.credit_limit
      errors.add(:balance_error, "you cant spend more than your credit limit")
    else
      balance_from.save
      balance_to = Account.find(self.account_to)
      balance_to.balance = balance_to.balance + self.amount
      balance_to.save
    end
  end
end
