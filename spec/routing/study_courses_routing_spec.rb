require "spec_helper"

describe StudyCoursesController do
  describe "routing" do

    it "routes to #index" do
      get("/study_courses").should route_to("study_courses#index")
    end

    it "routes to #new" do
      get("/study_courses/new").should route_to("study_courses#new")
    end

    it "routes to #show" do
      get("/study_courses/1").should route_to("study_courses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/study_courses/1/edit").should route_to("study_courses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/study_courses").should route_to("study_courses#create")
    end

    it "routes to #update" do
      put("/study_courses/1").should route_to("study_courses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/study_courses/1").should route_to("study_courses#destroy", :id => "1")
    end

  end
end
