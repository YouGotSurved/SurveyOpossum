class Question < ActiveRecord::Base
  validates :order_number, presence: true
  validates :question_type, presence: true
  validates :text, presence: true

  belongs_to :survey
  has_many :answers
end
