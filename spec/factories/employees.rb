FactoryBot.define do
  factory :employee, aliases: [:giver, :receiver] do
    email { 'emp1@emial.com' }
    password { 'secret1' }
  end
end
