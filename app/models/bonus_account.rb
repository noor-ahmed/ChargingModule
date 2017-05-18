class BonusAccount < ApplicationRecord
  has_one :item_feature
  has_one :priority
  has_one :accumulator
end
