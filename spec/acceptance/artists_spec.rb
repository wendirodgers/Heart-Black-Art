require 'rails_helper'
require 'rspec_api_documentation/dsl'

resource "Artists" do
  explanation "Fetch artists from the database based on optional parameters"

  get "/artists" do

    parameter :media, "List of media that the artists use in their work.", with_example: true
    let(:media) { ['Acrylic', 'Photography'] }

    parameter :instagram, "Artists in results must have an Instagram account.", with_example: true
    let(:instagram) { true }

    parameter :name, "Results should return name of artist (or Artists in results must have a name).", with_example: true
    let(:name) { ["Jojo Smith"] }

    parameter :location, "List of locations where an artist is domiciled.", with_example: true
    let(:location) { ['Austin, TX', 'New York City'] }

    parameter :gender, "Artists in results should return a gender.", with_example: true
    let(:gender) { ['male', 'female'] }

    parameter :age, "Artists in results must have an age range.", with_example: true
    let(:age) { ['25 and under'] }

    parameter :facebook, "Artists in results must have a Facebook account.", with_example: true
    let(:facebook) { true }

    parameter :tumblr, "Artists in results must have a Tumblr account.", with_example: true
    let(:tumblr) { true }

    parameter :twitter, "Artists in results must have a Twitter account.", with_example: true
    let(:twitter) { true }

    example "Listing artists" do
      do_request

      status.should == 200
    end
  end

  get "/artists/:id" do
    let(:artist) { Artist.create(name: "Jojo Smith") }
    let(:id) { artist.id }

    example "Get a specific artist" do
      do_request

      status.should == 200
    end
  end
end
