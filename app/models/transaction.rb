class Transaction < ActiveRecord::Base
  belongs_to :user, foreign_key: 'account_from'
  belongs_to :user, foreign_key: 'account_to'
  attr_accessible :accounts_from, :accounts_to, :amount, :notes
  attr_accessor :user_to
end
