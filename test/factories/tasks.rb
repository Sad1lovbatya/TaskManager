FactoryBot.define do
  factory :task do
    name   
    description   
    author { nil }
    assigne { nil }
    expired_at
  end
end
