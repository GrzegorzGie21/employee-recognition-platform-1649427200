FactoryBot.define do
  factory :kudo do
    title { 'Test' }
    content { 'Using factory' }
    giver { factory :giver }
    receiver { factory :receiver }
  end
end
