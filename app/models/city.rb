class City < ApplicationRecord
  belongs_to :utilisateur, optional: true
end
