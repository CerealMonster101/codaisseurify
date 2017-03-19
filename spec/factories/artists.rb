FactoryGirl.define do
  factory :artist do
    name    { Faker::RockBand.unique.name }
  end
end
