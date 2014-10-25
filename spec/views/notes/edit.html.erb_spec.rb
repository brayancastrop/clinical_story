require 'rails_helper'

RSpec.describe "notes/edit", :type => :view do
  before(:each) do
    @note = assign(:note, Note.create!(
      :content => "MyText",
      :patient => nil
    ))
  end

  it "renders the edit note form" do
    render

    assert_select "form[action=?][method=?]", note_path(@note), "post" do

      assert_select "textarea#note_content[name=?]", "note[content]"

      assert_select "input#note_patient_id[name=?]", "note[patient_id]"
    end
  end
end
