require 'rails_helper'

RSpec.describe "memberships/edit", :type => :view do
  before(:each) do
    @membership = assign(:membership, Membership.create!(
      :user => nil,
      :account => nil,
      :role => nil
    ))
  end

  it "renders the edit membership form" do
    render

    assert_select "form[action=?][method=?]", membership_path(@membership), "post" do

      assert_select "input#membership_user_id[name=?]", "membership[user_id]"

      assert_select "input#membership_account_id[name=?]", "membership[account_id]"

      assert_select "input#membership_role_id[name=?]", "membership[role_id]"
    end
  end
end
