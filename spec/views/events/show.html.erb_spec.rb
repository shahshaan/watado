require 'spec_helper'

describe "events/show" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :name => "Name",
      :venue => "Venue",
      :location => "Location",
      :length => "Length",
      :image => "Image",
      :category => "Category",
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Venue/)
    rendered.should match(/Location/)
    rendered.should match(/Length/)
    rendered.should match(/Image/)
    rendered.should match(/Category/)
    rendered.should match(/Url/)
  end
end
