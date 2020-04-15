FactoryBot.define do
  sequence :name do |n|
    "name#{n}"
  end

  sequence :author_id do |n|
    "author_id #{n}"
  end

  sequence :assignee_id do |n|
    "assignee_id#{n}"
  end

  sequence :state do |n|
    "state#{n}"
  end

  sequence :description do |n|
    "date#{n}"
  end
end
