FactoryBot.define do
  factory :task do
    name
    description
   
    trait :have_author do
      author
    end
    trait :have_assignee do
      assignee
    end
    factory :author,  traits:[:have_author]
    factory :assignee, traits:[:have_assignee]
  end
end
