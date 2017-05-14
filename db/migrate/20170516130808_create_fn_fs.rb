class CreateFnFs < ActiveRecord::Migration[5.0]
  def change
    create_table :fn_fs do |t|
      t.integer :no_of_fnf

      t.timestamps
    end
  end
end
