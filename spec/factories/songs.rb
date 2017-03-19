FactoryGirl.define do
  factory :song do
    name  {Faker::Lorem.sentence}
  end
end
