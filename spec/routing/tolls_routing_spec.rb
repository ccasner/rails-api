require "rails_helper"

RSpec.describe TollsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tolls").to route_to("tolls#index")
    end


    it "routes to #show" do
      expect(:get => "/tolls/1").to route_to("tolls#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/tolls").to route_to("tolls#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tolls/1").to route_to("tolls#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tolls/1").to route_to("tolls#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tolls/1").to route_to("tolls#destroy", :id => "1")
    end

  end
end
