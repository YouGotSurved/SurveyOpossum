class Question < ActiveRecord::Base
  validates :order_number, presence: true
  validates :question_type, presence: true
  validates :text, presence: true

  belongs_to :survey
  has_many :answers

  accepts_nested_attributes_for :answers,
    reject_if: :all_blank,
    allow_destroy: true

end
