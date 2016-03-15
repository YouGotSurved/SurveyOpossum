class Survey < ActiveRecord::Base
  validates :title, presence: true

  before_update :delete_marked_questions

  belongs_to :author
  has_many :questions
  has_many :answers, through: :questions
  has_many :takers, through: :answers
  # has_many :answers, through: :takers
  accepts_nested_attributes_for :questions,
    reject_if: :all_blank,
    allow_destroy: true

  accepts_nested_attributes_for :takers,
    reject_if: :all_blank,
    allow_destroy: true


  private def delete_marked_questions
    questions.to_a.delete_if { |q| q.destroy if q.obliterate == "1" }
  end

end
