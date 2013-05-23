# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :room do
    FactoryGirl.create(:building)
    building_id 1
    number '123'
    claimed false
    claimed_by 'MyString'
  end
end
