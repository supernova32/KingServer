# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "Test User"
    study_course { FactoryGirl.create(:study_course) }
    sequence :email do |n|
      "person#{n}@localhost.com"
    end
    password 'testPassword'
    password_confirmation 'testPassword'
    factory :admin do
      admin true
    end
  end
end
