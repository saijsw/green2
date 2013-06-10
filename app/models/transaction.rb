class Transaction < ActiveRecord::Base
  belongs_to :account, class_name: 'Account', foreign_key: 'account_from'
  # belongs_to :account, class_name: 'Account', foreign_key: 'account_to'
  attr_accessible :account_from, :accounts_to, :amount, :notes
  attr_accessor :user_to

  validates :account_from, presence: true
  validates :account_to, presence: true
  validates_numericality_of :amount, :greater_than => 0

  def amount_with_currency
    "#{amount} #{APP_CONFIG['currency_code']}"
  end
end
