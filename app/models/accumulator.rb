class Accumulator < ApplicationRecord
  belongs_to :bonus_account, optional: true
  belongs_to :offer, optional: true
end
