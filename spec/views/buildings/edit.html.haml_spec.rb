require 'spec_helper'

describe "buildings/edit" do
  before(:each) do
    @building = assign(:building, stub_model(Building,
      :name => "MyString",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders the edit building form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", building_path(@building), "post" do
      assert_select "input#building_name[name=?]", "building[name]"
      assert_select "input#building_latitude[name=?]", "building[latitude]"
      assert_select "input#building_longitude[name=?]", "building[longitude]"
    end
  end
end
