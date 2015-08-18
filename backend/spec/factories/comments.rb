FactoryGirl.define do
  factory :comment do
    body "this is a test comment"
    created_at '2015-08-11'
    thumbs 0
  end
end
