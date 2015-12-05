require "rails_helper"

RSpec.describe QuadrantsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/quadrants").to route_to("quadrants#index")
    end

    it "routes to #new" do
      expect(:get => "/quadrants/new").to route_to("quadrants#new")
    end

    it "routes to #show" do
      expect(:get => "/quadrants/1").to route_to("quadrants#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/quadrants/1/edit").to route_to("quadrants#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/quadrants").to route_to("quadrants#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/quadrants/1").to route_to("quadrants#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/quadrants/1").to route_to("quadrants#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/quadrants/1").to route_to("quadrants#destroy", :id => "1")
    end

  end
end
