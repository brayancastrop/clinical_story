require 'rails_helper'

RSpec.describe "notes/index", :type => :view do
  before(:each) do
    assign(:notes, [
      Note.create!(
        :content => "MyText",
        :patient => nil
      ),
      Note.create!(
        :content => "MyText",
        :patient => nil
      )
    ])
  end

  it "renders a list of notes" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
