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

require 'rails_helper'

RSpec.describe User, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
