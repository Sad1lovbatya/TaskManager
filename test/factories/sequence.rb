FactoryBot.define do
  sequence :email do |n|
    "person#{n}@example.com"
  end

  sequence(:string, aliases: [:name, :first_name, :last_name, :password, :avatar, :description]) do |n|
    "string#{n}"
  end

  sequence :expired_at do
    Time.current
  end
end
