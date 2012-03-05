require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :email => "Email",
        :pubkey => "Pubkey"
      ),
      stub_model(User,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :email => "Email",
        :pubkey => "Pubkey"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pubkey".to_s, :count => 2
  end
end
