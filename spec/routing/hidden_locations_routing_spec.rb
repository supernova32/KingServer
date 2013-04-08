require "spec_helper"

describe HiddenLocationsController do
  describe "routing" do

    it "routes to #index" do
      get("/hidden_locations").should route_to("hidden_locations#index")
    end

    it "routes to #new" do
      get("/hidden_locations/new").should route_to("hidden_locations#new")
    end

    it "routes to #show" do
      get("/hidden_locations/1").should route_to("hidden_locations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hidden_locations/1/edit").should route_to("hidden_locations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hidden_locations").should route_to("hidden_locations#create")
    end

    it "routes to #update" do
      put("/hidden_locations/1").should route_to("hidden_locations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hidden_locations/1").should route_to("hidden_locations#destroy", :id => "1")
    end

  end
end
