class Professor < ApplicationRecord
  has_many :student_stories, dependent: :destroy

  validates :name, presence: true, length: {maximum: 100}
  validates :subject, presence: true
  validates :rating, presence: true
  validates :difficulty, presence: true


end
