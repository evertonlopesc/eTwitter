FactoryBot.define do
  factory :notification do
    relationship { nil }
    user { nil }
    message { "MyString" }
    active { false }
  end
end
