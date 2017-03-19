FactoryGirl.define do
  factory :artist do
    artist_name    { Faker::Name.name }
  end
end
