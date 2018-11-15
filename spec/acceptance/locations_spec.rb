require 'rails_helper'
require 'rspec_api_documentation/dsl'

resource "Locations" do
  explanation "Fetch locations from the database based on optional parameters"

  get "/locations" do

# //20.times do
# Location.create address: Faker::Address.state  
# print '🌆'
# end

    parameter :address, "List of addresses where the artists are domiciled.", with_example: true
    let(:address) { ['123 Elmwood St.', '1 Blue Bird Ln.'] }

    
    example "Listing locations" do
      do_request

      status.should == 200
    end
  end

  get "/locations/:id" do
    let(:location) { Location.create(address: '1 Blue Bird Ln.') }
    let(:id) { location.id }

    example "Get a specific location" do
      do_request

      status.should == 200
    end
  end
end

