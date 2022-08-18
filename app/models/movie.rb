class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, presence: true, uniqueness: { scope: :title }
  validates :overview, length: { minimum: 1 }
end
