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

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable
  # 
  # def email=
  #   @email = self.username
  # end
  #
  # def email
  #   self.username
  # end
end
