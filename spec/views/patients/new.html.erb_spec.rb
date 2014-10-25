require 'rails_helper'

RSpec.describe "patients/new", :type => :view do
  before(:each) do
    assign(:patient, Patient.new(
      :name => "MyString",
      :identification => "MyString",
      :account => nil
    ))
  end

  it "renders new patient form" do
    render

    assert_select "form[action=?][method=?]", patients_path, "post" do

      assert_select "input#patient_name[name=?]", "patient[name]"

      assert_select "input#patient_identification[name=?]", "patient[identification]"

      assert_select "input#patient_account_id[name=?]", "patient[account_id]"
    end
  end
end
