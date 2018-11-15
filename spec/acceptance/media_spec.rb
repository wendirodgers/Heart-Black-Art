require 'rails_helper'
require 'rspec_api_documentation/dsl'

resource "Media" do
  explanation "Fetch media from the database based on optional parameters"

  get "/media" do

    parameter :media, "List of media that the artists use in their work.", with_example: true
    let(:media) { ['Acrylic', 'Photography'] }

    example "Listing media" do
      do_request

      status.should == 200
    end
  end

  get "/media/:id" do
    let(:medium) { Medium.create(name: "Acrylic") }
    let(:id) { medium.id }

    example "Get a specific medium" do
      do_request

      status.should == 200
    end
  end
end
