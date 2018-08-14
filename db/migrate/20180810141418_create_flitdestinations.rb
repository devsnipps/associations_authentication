class CreateFlitdestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :flitdestinations do |t|
      t.integer :flit_id
      t.integer :destination_id

      t.timestamps
    end
  end
end
