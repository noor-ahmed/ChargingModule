class CreatePriorities < ActiveRecord::Migration[5.0]
  def change
    create_table :priorities do |t|
      t.integer :value

      t.timestamps
    end
  end
end
