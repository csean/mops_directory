# == Schema Information
#
# Table name: children
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  age        :integer
#  member_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Child < ActiveRecord::Base
  belongs_to :member
end
