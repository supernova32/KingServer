require 'spec_helper'

describe "hidden_locations/new" do
  before(:each) do
    assign(:hidden_location, stub_model(HiddenLocation,
      :name => "MyString",
      :latitude => 1.5,
      :longitude => 1.5
    ).as_new_record)
  end

  it "renders new hidden_location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", hidden_locations_path, "post" do
      assert_select "input#hidden_location_name[name=?]", "hidden_location[name]"
      assert_select "input#hidden_location_latitude[name=?]", "hidden_location[latitude]"
      assert_select "input#hidden_location_longitude[name=?]", "hidden_location[longitude]"
    end
  end
end
