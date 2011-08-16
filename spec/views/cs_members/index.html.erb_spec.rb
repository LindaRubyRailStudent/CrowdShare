require 'spec_helper'

describe "cs_members/index.html.erb" do
  before(:each) do
    assign(:cs_members, [
      stub_model(CsMember,
        :name => "Name",
        :email => "Email",
        :address => "Address",
        :address2 => "Address2",
        :address3 => "Address3",
        :county => "County",
        :country => "Country",
        :mobile => 1
      ),
      stub_model(CsMember,
        :name => "Name",
        :email => "Email",
        :address => "Address",
        :address2 => "Address2",
        :address3 => "Address3",
        :county => "County",
        :country => "Country",
        :mobile => 1
      )
    ])
  end

  it "renders a list of cs_members" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address3".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "County".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
