# == Schema Information
#
# Table name: members
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  birthday   :date
#  address    :string(255)
#  city       :string(255)
#  state      :string(255)
#  zip        :string(255)
#  phone      :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :children
  accepts_nested_attributes_for :children,
    reject_if: proc { |attributes| attributes['name'].blank? }

  validates :first_name, :last_name, presence: true

  validates :email, format: { with: /@/, message: 'is not a valid email' },
    allow_blank: true

  validates :phone,
    length: { maximum: 10 }, numericality: { only_integer: true },
    allow_blank: true

  validates :zip, length: { is: 5 }, allow_blank: true

  before_create :set_state
  before_validation :strip_phone_number

  scope :ordered, -> { order('last_name asc') }

  def name
    "#{first_name} #{last_name}"
  end

  def title
    return 'Mentor' if mentor?
    return 'Leadership' if leadership?
  end

  private

  def set_state
    self.state = 'TX'
  end

  def strip_phone_number
    self.phone = phone.gsub(/\D*/, '')
  end

end
