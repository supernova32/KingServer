require 'spec_helper'

describe "hidden_locations/index" do
  before(:each) do
    assign(:hidden_locations, [
      stub_model(HiddenLocation,
        :name => "Name",
        :latitude => 1.5,
        :longitude => 1.5
      ),
      stub_model(HiddenLocation,
        :name => "Name",
        :latitude => 1.5,
        :longitude => 1.5
      )
    ])
  end

  it "renders a list of hidden_locations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
