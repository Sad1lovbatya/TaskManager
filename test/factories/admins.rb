FactoryBot.define do
  factory :admin, parent: :user 
    type { 'Admin' }
  end
end
