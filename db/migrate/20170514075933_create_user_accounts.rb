class CreateUserAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :user_accounts do |t|
      t.string :phoneNo
      t.string :name

      t.timestamps
    end
  end
end
