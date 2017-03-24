FactoryGirl.define do
  factory :tweet, class: Twitter::Tweet do
    id { |n| n }
    text { |n| "Tweet text #{n}" }
  end
end
