FactoryBot.define do
  factory :notification do
    user { nil }
    message { "MyString" }
    is_active { false }
  end
end
