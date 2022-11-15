# frozen_string_literal: true

class Article < ApplicationRecord
  validates_presence_of :title, :content, :slug
  validates_uniqueness_of :slug

  scope :recent, -> { order(created_at: :desc) }
end
