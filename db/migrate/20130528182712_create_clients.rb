class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :id
      t.text :name
      t.text :address
      t.text :email
      t.integer :user_id

      t.timestamps
    end
    add_index :clients, :id, :unique => true
  end
end
