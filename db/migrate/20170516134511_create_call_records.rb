class CreateCallRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :call_records do |t|
      t.string :call_destination
      t.integer :duration
      t.date :call_date
      t.time :call_time
      t.string :call_charge
      t.references :user_account, index: true, foreign_key: true

      t.timestamps
    end
  end
end
