FactoryBot.define do
  factory :employee, aliases: [:giver, :receiver] do
    email { 'nerd@email.com' }
    password { 'secret' }
  end
end
