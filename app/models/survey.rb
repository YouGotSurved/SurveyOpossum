class Survey < ActiveRecord::Base
  validates :title, presence: true

  belongs_to :author
  has_many :questions
  has_many :answers, through: :questions
  has_many :takers, through: :answers

  accepts_nested_attributes_for :questions,
    reject_if: :all_blank,
    allow_destroy: true

  accepts_nested_attributes_for :takers,
    reject_if: :all_blank,
    allow_destroy: true
end
