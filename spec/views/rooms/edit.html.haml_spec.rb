require 'spec_helper'

describe "rooms/edit" do
  before(:each) do
    @room = assign(:room, stub_model(Room,
      :building => 1,
      :number => 1,
      :claimed => false,
      :claimed_by => "MyString"
    ))
  end

  it "renders the edit room form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", room_path(@room), "post" do
      assert_select "input#room_building[name=?]", "room[building]"
      assert_select "input#room_number[name=?]", "room[number]"
      assert_select "input#room_claimed[name=?]", "room[claimed]"
      assert_select "input#room_claimed_by[name=?]", "room[claimed_by]"
    end
  end
end
