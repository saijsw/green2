class Transaction < ActiveRecord::Base
  belongs_to :account, class_name: 'Account', foreign_key: 'account_to'
  belongs_to :account, class_name: 'Account', foreign_key: 'account_from'
  attr_accessible :account_from, :accounts_to, :amount, :notes
  attr_accessor :user_to
end
