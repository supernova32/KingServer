require 'spec_helper'

describe "study_courses/index" do
  before(:each) do
    assign(:study_courses, [
      stub_model(StudyCourse,
        :name => "Name"
      ),
      stub_model(StudyCourse,
        :name => "Name"
      )
    ])
  end

  it "renders a list of study_courses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
