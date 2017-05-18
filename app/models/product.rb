class Product < ApplicationRecord
  has_one :item_feature
  has_one :community
  has_one :fnf
  belongs_to :user_accounts
end
