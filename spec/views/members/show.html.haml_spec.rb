require 'rails_helper'

RSpec.describe "members/show", :type => :view do
  before(:each) do
    @member = assign(:member, Member.create!(
      :name => "Name",
      :birthday => "Birthday",
      :address => "Address",
      :city => "City",
      :state => "State",
      :zip => "Zip",
      :phone => 1,
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Birthday/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Email/)
  end
end
