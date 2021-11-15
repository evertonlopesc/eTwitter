FactoryBot.define do
  factory :notification do
    relationship { nil }
    user { nil }
    message { "MyString" }
    is_active { false }
  end
end
