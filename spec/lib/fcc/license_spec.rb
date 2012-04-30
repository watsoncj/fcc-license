require_relative '../../spec_helper'
 
describe FCC::License do
 
  describe "default attributes" do
 
    it "must include httparty methods" do
      FCC::License.should include(HTTParty)
    end
 
    it "must have the base url set to the Dribble API endpoint" do
      FCC::License.base_uri.should eq('http://data.fcc.gov/api/license-view/basicSearch/getLicenses')
    end
 
  end 


  describe "GET licenses" do

    let(:license) { FCC::License.new }
 
    before do
      VCR.insert_cassette 'license', :record => :new_episodes
    end
   
    after do
      VCR.eject_cassette
    end
   
    it "must have a search method" do
      license.should respond_to(:search)
    end

    it "must parse the api request" do
      license.search("Watson").size.should be > 1
    end
 
  end

end
