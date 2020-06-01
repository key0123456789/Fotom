class Book < ApplicationRecord
  belongs_to :user
  has_many :questions

  validates :title, presence: true, length: { maximum: 40 }

  enum genre: {
    unset: 0,
    life: 1,
    love: 2,
    hobby: 3,
    work: 4,
    other: 9
  }, _prefix: true

end
