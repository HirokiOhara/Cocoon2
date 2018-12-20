class Cd < ApplicationRecord
    belongs_to :artist
    has_many :songs, inverse_of: :cd
    accepts_nested_attributes_for :songs, reject_if: :all_blank, allow_destroy: true
end
