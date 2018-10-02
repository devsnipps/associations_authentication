class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.integer :user_id
      t.string :type
      t.string :name
      t.string :phone_number

      t.timestamps
    end
    add_index :contacts, [:type, :user_id]
  end
end
