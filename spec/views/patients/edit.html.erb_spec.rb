require 'rails_helper'

RSpec.describe "patients/edit", :type => :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
      :name => "MyString",
      :identification => "MyString",
      :account => nil
    ))
  end

  it "renders the edit patient form" do
    render

    assert_select "form[action=?][method=?]", patient_path(@patient), "post" do

      assert_select "input#patient_name[name=?]", "patient[name]"

      assert_select "input#patient_identification[name=?]", "patient[identification]"

      assert_select "input#patient_account_id[name=?]", "patient[account_id]"
    end
  end
end
