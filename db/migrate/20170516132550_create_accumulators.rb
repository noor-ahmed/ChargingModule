class CreateAccumulators < ActiveRecord::Migration[5.0]
  def change
    create_table :accumulators do |t|
      t.float :acc_val_change
      t.float :acc_val_available
      t.references :bonus_account, index: true, foreign_key: true, optional: true
      t.references :offer, index: true, foreign_key: true, optional: true

      t.timestamps
    end
  end
end
