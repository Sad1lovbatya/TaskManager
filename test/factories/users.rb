FactoryBot.define do
  factory :user, aliases: %i[author assignee] do
    first_name
    last_name
    password
    email
    avatar
    type 
  end
end
