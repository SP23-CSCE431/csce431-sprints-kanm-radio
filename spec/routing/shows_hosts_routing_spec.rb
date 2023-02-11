require "rails_helper"

RSpec.describe ShowsHostsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/shows_hosts").to route_to("shows_hosts#index")
    end

    it "routes to #new" do
      expect(get: "/shows_hosts/new").to route_to("shows_hosts#new")
    end

    it "routes to #show" do
      expect(get: "/shows_hosts/1").to route_to("shows_hosts#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/shows_hosts/1/edit").to route_to("shows_hosts#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/shows_hosts").to route_to("shows_hosts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/shows_hosts/1").to route_to("shows_hosts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/shows_hosts/1").to route_to("shows_hosts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/shows_hosts/1").to route_to("shows_hosts#destroy", id: "1")
    end
  end
end
