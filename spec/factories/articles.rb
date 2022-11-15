# frozen_string_literal: true

FactoryBot.define do
  factory :article do
    title { Faker::Book.title }
    content { "#{title} Content" }
    slug { title.gsub(' ', '-').downcase }
  end
end
