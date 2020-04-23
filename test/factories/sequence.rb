FactoryBot.define do
  sequence :email do |n|
    "person#{n}@example.com"
  end

  sequence(:name, aliases: %i[first_name last_name password avatar]) do |n|
    "string#{n}"
  end

  sequence :expired_at do
    Time.now
  end
end
