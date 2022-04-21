class StudentStory < ApplicationRecord
  belongs_to :professor

  validates :title, presence: true, length: { maximum: 200, minimum: 2 }
  validates :text, presence: true, length: { maximum: 10_000, minimum: 20 }
  validates :date, presence: true
end
