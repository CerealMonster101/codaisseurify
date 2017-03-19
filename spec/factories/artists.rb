FactoryGirl.define do
  factory :artist do
    artist_name    { Faker::RockBand.unique.name }
  end
end
