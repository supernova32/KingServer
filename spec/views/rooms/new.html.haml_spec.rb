require 'spec_helper'

describe "rooms/new" do
  before(:each) do
    assign(:room, stub_model(Room,
      :building => 1,
      :number => 1,
      :claimed => false,
      :claimed_by => "MyString"
    ).as_new_record)
  end

  it "renders new room form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", rooms_path, "post" do
      assert_select "input#room_building[name=?]", "room[building]"
      assert_select "input#room_number[name=?]", "room[number]"
      assert_select "input#room_claimed[name=?]", "room[claimed]"
      assert_select "input#room_claimed_by[name=?]", "room[claimed_by]"
    end
  end
end
