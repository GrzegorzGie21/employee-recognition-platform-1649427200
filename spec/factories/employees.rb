FactoryBot.define do
  factory :employee, aliases: %i[giver receiver] do
    sequence :email do |i|
      "test#{i}@email.com"
    end
    sequence :password do |i|
      "secret#{i}"
    end
  end
end
