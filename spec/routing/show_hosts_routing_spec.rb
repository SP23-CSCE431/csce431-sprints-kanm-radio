require "rails_helper"

RSpec.describe ShowHostsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/show_hosts").to route_to("show_hosts#index")
    end

    it "routes to #new" do
      expect(get: "/show_hosts/new").to route_to("show_hosts#new")
    end

    it "routes to #show" do
      expect(get: "/show_hosts/1").to route_to("show_hosts#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/show_hosts/1/edit").to route_to("show_hosts#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/show_hosts").to route_to("show_hosts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/show_hosts/1").to route_to("show_hosts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/show_hosts/1").to route_to("show_hosts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/show_hosts/1").to route_to("show_hosts#destroy", id: "1")
    end
  end
end
