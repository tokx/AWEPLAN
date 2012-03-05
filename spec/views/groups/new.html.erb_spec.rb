require 'spec_helper'

describe "groups/new" do
  before(:each) do
    assign(:group, stub_model(Group,
      :name => "MyString",
      :repo => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new group form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => groups_path, :method => "post" do
      assert_select "input#group_name", :name => "group[name]"
      assert_select "input#group_repo", :name => "group[repo]"
      assert_select "input#group_description", :name => "group[description]"
    end
  end
end
