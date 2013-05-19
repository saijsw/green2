class Transaction < ActiveRecord::Base
  belongs_to :user, foreign_key: 'account_from'
  belongs_to :user, foreign_key: 'account_to'
end
