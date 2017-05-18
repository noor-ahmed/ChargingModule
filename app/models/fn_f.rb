class FnF < ApplicationRecord
  belongs_to :product
  has_one :item_feature
  has_one :priority
end
