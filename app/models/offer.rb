class Offer < ApplicationRecord
  has_one :item_feature
  has_one :priority
end
