class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.integer :age
      t.references :member
      t.timestamps
    end
  end
end
