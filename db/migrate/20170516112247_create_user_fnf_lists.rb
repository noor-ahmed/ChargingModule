class CreateUserFnfLists < ActiveRecord::Migration[5.0]
  def change
    create_table :user_fnf_lists do |t|
      t.string :phone_no
      t.string :fnf_phone_no

      t.timestamps
    end
  end
end
