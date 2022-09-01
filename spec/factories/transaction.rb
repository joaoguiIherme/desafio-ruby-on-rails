FactoryBot.define do
  factory :transaction do
    kind { Faker::Number.between(from: 1, to: 10) }
    date { Faker::Number.between(from: 1_000_000, to: 9_999_999) }
    value { Faker::Number.between(from: 1, to: 100_000_000) }
    cpf { Faker::Number.between(from: 10_000_000_000, to: 9_999_999_999) }
    time { Faker::Number.between(from: 1_000_000, to: 444_444) }
    owner { Faker::Name.name_with_middle }
    name { Faker::Company.name }
  end
end
