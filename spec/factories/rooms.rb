# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :room do
    building 1
    number 1
    claimed false
    claimed_by "MyString"
  end
end
