class Survey < ActiveRecord::Base
  validates :title, presence: true
  validates :author_id, presence: true

  belongs_to :author
  has_many :questions

  accepts_nested_attributes_for :questions,
    reject_if: :all_blank,
    allow_destroy: true
end
