require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :firstname => "MyString",
      :lastname => "MyString",
      :email => "MyString",
      :pubkey => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_firstname", :name => "user[firstname]"
      assert_select "input#user_lastname", :name => "user[lastname]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_pubkey", :name => "user[pubkey]"
    end
  end
end
