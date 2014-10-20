class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.string :business_name
      t.string :business_url

      t.timestamps
    end
  end
end
