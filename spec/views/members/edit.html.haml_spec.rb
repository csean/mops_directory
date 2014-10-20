require 'rails_helper'

RSpec.describe "members/edit", :type => :view do
  before(:each) do
    @member = assign(:member, Member.create!(
      :name => "MyString",
      :birthday => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :phone => 1,
      :email => "MyString"
    ))
  end

  it "renders the edit member form" do
    render

    assert_select "form[action=?][method=?]", member_path(@member), "post" do

      assert_select "input#member_name[name=?]", "member[name]"

      assert_select "input#member_birthday[name=?]", "member[birthday]"

      assert_select "input#member_address[name=?]", "member[address]"

      assert_select "input#member_city[name=?]", "member[city]"

      assert_select "input#member_state[name=?]", "member[state]"

      assert_select "input#member_zip[name=?]", "member[zip]"

      assert_select "input#member_phone[name=?]", "member[phone]"

      assert_select "input#member_email[name=?]", "member[email]"
    end
  end
end
