# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ad do
    user_id 1
    title "MyString"
    description "MyText"
    offer false
    category_id 1
    expiration_date "2013-05-19"
  end
end
