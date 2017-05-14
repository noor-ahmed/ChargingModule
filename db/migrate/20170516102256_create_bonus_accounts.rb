class CreateBonusAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :bonus_accounts do |t|
      t.float :da_val_availbale
      t.float :da_val_change
      t.float :da_val_before
      t.references :item_feature, foreign_key: true

      t.timestamps
    end
  end
end
