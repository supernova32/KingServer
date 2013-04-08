require 'spec_helper'

describe "rooms/index" do
  before(:each) do
    assign(:rooms, [
      stub_model(Room,
        :building => 1,
        :number => 2,
        :claimed => false,
        :claimed_by => "Claimed By"
      ),
      stub_model(Room,
        :building => 1,
        :number => 2,
        :claimed => false,
        :claimed_by => "Claimed By"
      )
    ])
  end

  it "renders a list of rooms" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Claimed By".to_s, :count => 2
  end
end
