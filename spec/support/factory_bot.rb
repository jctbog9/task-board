require 'factory_bot'

FactoryBot.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password { 'password' }
    password_confirmation { 'password' }
  end

  factory :project do
    title { "Test Project" }
    description { "Test project's description" }
  end

  factory :column do
    title { "Test Project" }
  end

  factory :task do
    body { "Task Body!" }
  end
end
