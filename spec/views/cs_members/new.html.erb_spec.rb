require 'spec_helper'

describe "cs_members/new.html.erb" do
  before(:each) do
    assign(:cs_member, stub_model(CsMember,
      :name => "MyString",
      :email => "MyString",
      :address => "MyString",
      :address2 => "MyString",
      :address3 => "MyString",
      :county => "MyString",
      :country => "MyString",
      :mobile => 1
    ).as_new_record)
  end

  it "renders new cs_member form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cs_members_path, :method => "post" do
      assert_select "input#cs_member_name", :name => "cs_member[name]"
      assert_select "input#cs_member_email", :name => "cs_member[email]"
      assert_select "input#cs_member_address", :name => "cs_member[address]"
      assert_select "input#cs_member_address2", :name => "cs_member[address2]"
      assert_select "input#cs_member_address3", :name => "cs_member[address3]"
      assert_select "input#cs_member_county", :name => "cs_member[county]"
      assert_select "input#cs_member_country", :name => "cs_member[country]"
      assert_select "input#cs_member_mobile", :name => "cs_member[mobile]"
    end
  end
end
