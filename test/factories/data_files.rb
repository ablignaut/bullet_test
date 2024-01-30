FactoryBot.define do
  factory :data_file do
    association :team
    document { nil }
  end
end
