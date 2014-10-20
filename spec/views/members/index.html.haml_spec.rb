require 'rails_helper'

RSpec.describe "members/index", :type => :view do
  before(:each) do
    assign(:members, [
      Member.create!(
        :name => "Name",
        :birthday => "Birthday",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :phone => 1,
        :email => "Email"
      ),
      Member.create!(
        :name => "Name",
        :birthday => "Birthday",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :phone => 1,
        :email => "Email"
      )
    ])
  end

  it "renders a list of members" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Birthday".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
