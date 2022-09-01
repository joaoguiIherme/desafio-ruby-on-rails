FactoryBot.define do
  factory :owner do
    name { Faker::Name.name_with_middle }
  end
end
