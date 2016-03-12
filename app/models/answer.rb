class Answer < ActiveRecord::Base
  # validates :question_id, presence: true
  # validates :text, presence: true

  belongs_to :question
end
