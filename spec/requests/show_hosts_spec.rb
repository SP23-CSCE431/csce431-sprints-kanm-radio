require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/show_hosts", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # ShowHost. As you add validations to ShowHost, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      ShowHost.create! valid_attributes
      get show_hosts_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      show_host = ShowHost.create! valid_attributes
      get show_host_url(show_host)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_show_host_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      show_host = ShowHost.create! valid_attributes
      get edit_show_host_url(show_host)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new ShowHost" do
        expect {
          post show_hosts_url, params: { show_host: valid_attributes }
        }.to change(ShowHost, :count).by(1)
      end

      it "redirects to the created show_host" do
        post show_hosts_url, params: { show_host: valid_attributes }
        expect(response).to redirect_to(show_host_url(ShowHost.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new ShowHost" do
        expect {
          post show_hosts_url, params: { show_host: invalid_attributes }
        }.to change(ShowHost, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post show_hosts_url, params: { show_host: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested show_host" do
        show_host = ShowHost.create! valid_attributes
        patch show_host_url(show_host), params: { show_host: new_attributes }
        show_host.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the show_host" do
        show_host = ShowHost.create! valid_attributes
        patch show_host_url(show_host), params: { show_host: new_attributes }
        show_host.reload
        expect(response).to redirect_to(show_host_url(show_host))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        show_host = ShowHost.create! valid_attributes
        patch show_host_url(show_host), params: { show_host: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested show_host" do
      show_host = ShowHost.create! valid_attributes
      expect {
        delete show_host_url(show_host)
      }.to change(ShowHost, :count).by(-1)
    end

    it "redirects to the show_hosts list" do
      show_host = ShowHost.create! valid_attributes
      delete show_host_url(show_host)
      expect(response).to redirect_to(show_hosts_url)
    end
  end
end