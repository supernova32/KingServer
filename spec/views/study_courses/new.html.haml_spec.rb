require 'spec_helper'

describe "study_courses/new" do
  before(:each) do
    assign(:study_course, stub_model(StudyCourse,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new study_course form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", study_courses_path, "post" do
      assert_select "input#study_course_name[name=?]", "study_course[name]"
    end
  end
end
