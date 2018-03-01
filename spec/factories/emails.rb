FactoryBot.define do
  factory :email do
    object "MyString"
    body "MyText"
    read false
  end
end
