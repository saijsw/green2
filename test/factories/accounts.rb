# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :account do
    user_id 1
    balance 1
    currency_id 1
  end
end
