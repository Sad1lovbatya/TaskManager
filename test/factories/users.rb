FactoryBot.define do
  factory :user, aliases: %i[author assignee] do
    first_name
    last_name
    password
    email
    avatar 
    trait :admin do
      type { 'Admin' }
    end
    trait :developer do
      type { 'Developer' }
    end
    trait :manager do
      type { 'Manager' }
    end
    factory :admin_user, traits:[:admin]
    factory :developer_user, traits:[:developer]
    factory :manager_user, traits:[:manager]
  end
end
