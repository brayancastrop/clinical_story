require 'rails_helper'

RSpec.describe "patients/index", :type => :view do
  before(:each) do
    assign(:patients, [
      Patient.create!(
        :name => "Name",
        :identification => "Identification",
        :account => nil
      ),
      Patient.create!(
        :name => "Name",
        :identification => "Identification",
        :account => nil
      )
    ])
  end

  it "renders a list of patients" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Identification".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
