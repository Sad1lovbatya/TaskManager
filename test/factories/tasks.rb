FactoryBot.define do
  factory :task do
    name
    description
    expired_at

    trait :have_author do
      author
    end
    trait :have_assignee do
      assignee
    end
    factory :author_tasks,  traits:[:have_author]
    factory :assignee_tasks, traits:[:have_assignee]
  end
end
