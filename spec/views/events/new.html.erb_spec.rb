require 'spec_helper'

describe "events/new" do
  before(:each) do
    assign(:event, stub_model(Event,
      :name => "MyString",
      :venue => "MyString",
      :location => "MyString",
      :length => "MyString",
      :image => "MyString",
      :category => "MyString",
      :url => "MyString"
    ).as_new_record)
  end

  it "renders new event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => events_path, :method => "post" do
      assert_select "input#event_name", :name => "event[name]"
      assert_select "input#event_venue", :name => "event[venue]"
      assert_select "input#event_location", :name => "event[location]"
      assert_select "input#event_length", :name => "event[length]"
      assert_select "input#event_image", :name => "event[image]"
      assert_select "input#event_category", :name => "event[category]"
      assert_select "input#event_url", :name => "event[url]"
    end
  end
end
