require 'spec_helper'

describe "cs_members/show.html.erb" do
  before(:each) do
    @cs_member = assign(:cs_member, stub_model(CsMember,
      :name => "Name",
      :email => "Email",
      :address => "Address",
      :address2 => "Address2",
      :address3 => "Address3",
      :county => "County",
      :country => "Country",
      :mobile => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address2/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address3/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/County/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Country/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
