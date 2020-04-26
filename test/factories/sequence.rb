FactoryBot.define do
  sequence :mail do |n|
    "person#{n}@example.com"
  end

  sequence(:name, aliases: %i[first_name last_name password avatar description ]) do |n|
    "string#{n}"
  end

  sequence :expired_at do
    Time.current
  end
end
