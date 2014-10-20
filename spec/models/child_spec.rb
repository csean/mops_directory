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

require 'rails_helper'

RSpec.describe Child, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
