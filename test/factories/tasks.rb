FactoryBot.define do
  factory :task do
    name
    description
    author { nil }
    assignee { nil }
    expired_at
    trait :author do
      author
    end
    trait :assignee do
      assignee
    end
  end
end
