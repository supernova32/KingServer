# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :hidden_location do
    name 'Bar Foo'
    latitude 1.5
    longitude 1.5
    points 100
    hint 'Look for FooBar'
  end
end
