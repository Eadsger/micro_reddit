class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  # Validations
  validates :title, presence: true, length: { maximum: 255 }
  validates :url, presence: true, uniqueness: true, if: -> { url.present? }
  validates :content, presence: true, if: -> { url.blank? } # Content is required if URL is blank
  validates :user, presence: true
end
