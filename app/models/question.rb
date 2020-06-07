class Question < ApplicationRecord
  belongs_to :book

  validates :item, presence: true, length: {maximum: 40}
end
