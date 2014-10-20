# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  username            :string(255)
#  admin               :boolean          default(FALSE)
#  encrypted_password  :string(255)      default(""), not null
#  remember_created_at :datetime
#  created_at          :datetime
#  updated_at          :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    username "MyString"
  end
end
