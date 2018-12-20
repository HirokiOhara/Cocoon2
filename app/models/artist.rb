class Artist < ApplicationRecord
    has_many :cds, inverse_of: :artist
    accepts_nested_attributes_for :cds, reject_if: :all_blank, allow_destroy: true    
end
