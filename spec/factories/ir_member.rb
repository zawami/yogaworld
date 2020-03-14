FactoryBot.define do
  factory :ir_member do
    name {"山田"}
    sequence(:email){|n| "member#{n}@example.com"}
    password {"pw"}
  end
end