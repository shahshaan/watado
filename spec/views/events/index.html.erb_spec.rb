require 'spec_helper'

describe "events/index" do
  before(:each) do
    assign(:events, [
      stub_model(Event,
        :name => "Name",
        :venue => "Venue",
        :location => "Location",
        :length => "Length",
        :image => "Image",
        :category => "Category",
        :url => "Url"
      ),
      stub_model(Event,
        :name => "Name",
        :venue => "Venue",
        :location => "Location",
        :length => "Length",
        :image => "Image",
        :category => "Category",
        :url => "Url"
      )
    ])
  end

  it "renders a list of events" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Venue".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Length".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
