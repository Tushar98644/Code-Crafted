# frozen_string_literal: true

class BlogPost < ApplicationRecord
  has_rich_text :content
  belongs_to :user
  has_one_attached :image

  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :description, presence: true
  validates :content, presence: true
  validates :image, presence: true
end
