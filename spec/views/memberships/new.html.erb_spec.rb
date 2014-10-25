require 'rails_helper'

RSpec.describe "memberships/new", :type => :view do
  before(:each) do
    assign(:membership, Membership.new(
      :user => nil,
      :account => nil,
      :role => nil
    ))
  end

  it "renders new membership form" do
    render

    assert_select "form[action=?][method=?]", memberships_path, "post" do

      assert_select "input#membership_user_id[name=?]", "membership[user_id]"

      assert_select "input#membership_account_id[name=?]", "membership[account_id]"

      assert_select "input#membership_role_id[name=?]", "membership[role_id]"
    end
  end
end
