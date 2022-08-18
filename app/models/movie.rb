class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, presence: true, uniqueness: { scope: :title }
  validates :overview, presence: true
end
