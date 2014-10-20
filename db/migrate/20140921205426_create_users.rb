class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username
      t.boolean :admin, default: false
      t.string :encrypted_password, null: false, default: ""
      t.datetime :remember_created_at
      t.timestamps
    end
    add_index :users, :username, unique: true
  end

  def self.down
    drop_table :users
  end
end
