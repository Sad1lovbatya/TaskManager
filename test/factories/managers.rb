FactoryBot.define do
  factory :manager, parent: :user  
    type { 'Manager' }
  end
end
