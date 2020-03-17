FactoryBot.define do
  factory :ir_member do
    name { 'Example User' }
    sequence(:email) { |n| "user_#{n}@example.com" }
  end
end