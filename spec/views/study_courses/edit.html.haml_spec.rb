require 'spec_helper'

describe "study_courses/edit" do
  before(:each) do
    @study_course = assign(:study_course, stub_model(StudyCourse,
      :name => "MyString"
    ))
  end

  it "renders the edit study_course form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", study_course_path(@study_course), "post" do
      assert_select "input#study_course_name[name=?]", "study_course[name]"
    end
  end
end
