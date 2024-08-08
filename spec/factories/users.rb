FactoryBot.define do
  factory :user do
    nickname { Faker::Name.last_name }
    email { Faker::Internet.email }
    password              {'aaaaa1'}
    password_confirmation { password }
    family_name { "山田" }
    first_name { "太郎" }
    family_name_kana { "ヤマダ" }
    first_name_kana { "タロウ" }
    birth_day { "1990-01-01" }
  end
end

# FactoryBot.define do
#  factory :user do
#    nickname              { "testuser" }
#    email                 { "test@example.com" }
#    password              { "password1" }
#    password_confirmation { "password1" }
#    family_name           { "山田" }
#    first_name            { "太郎" }
#    family_name_kana      { "ヤマダ" }
#    first_name_kana       { "タロウ" }
#    birth_day             { "1980-01-01" }
#  end
# end