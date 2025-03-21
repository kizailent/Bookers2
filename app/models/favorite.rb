class Favorite < ApplicationRecord
  belogns_to :user
  belogns_to :book

  validates :user_id, uniqueness: {scope: :book_id}
end
