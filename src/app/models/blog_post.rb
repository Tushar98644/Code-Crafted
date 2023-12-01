# frozen_string_literal: true
#

class BlogPost < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :description, presence: true
  validates :body, presence: true
  validates :image, presence: true
end
