FactoryBot.define do
  factory :user, aliases: [:author, :assignee] do
    first_name
    last_name
    password
    email
    avatar
  end
end
