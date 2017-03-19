FactoryGirl.define do
  factory :song do
    song_name  {Faker::Lorem.sentence}
  end
end
