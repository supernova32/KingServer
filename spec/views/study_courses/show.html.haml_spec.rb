require 'spec_helper'

describe "study_courses/show" do
  before(:each) do
    @study_course = assign(:study_course, stub_model(StudyCourse,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
