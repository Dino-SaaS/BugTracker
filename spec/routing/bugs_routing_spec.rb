require "rails_helper"

RSpec.describe BugsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bugs").to route_to("bugs#index")
    end

    it "routes to #new" do
      expect(get: "/bugs/new").to route_to("bugs#new")
    end

    it "routes to #show" do
      expect(get: "/bugs/1").to route_to("bugs#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bugs/1/edit").to route_to("bugs#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bugs").to route_to("bugs#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bugs/1").to route_to("bugs#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bugs/1").to route_to("bugs#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bugs/1").to route_to("bugs#destroy", id: "1")
    end
  end
end
