# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :transaction do
    account_from 1
    account_to 1
    amount "9.99"
    notes "MyString"
  end
end
