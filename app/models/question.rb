class Question < ApplicationRecord
  belongs_to :book

  validates :title, presence: true, length: {maximum: 40}
end
