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

RSpec.describe "/djs", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Dj. As you add validations to Dj, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Dj.create! valid_attributes
      get djs_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      dj = Dj.create! valid_attributes
      get dj_url(dj)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_dj_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      dj = Dj.create! valid_attributes
      get edit_dj_url(dj)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Dj" do
        expect {
          post djs_url, params: { dj: valid_attributes }
        }.to change(Dj, :count).by(1)
      end

      it "redirects to the created dj" do
        post djs_url, params: { dj: valid_attributes }
        expect(response).to redirect_to(dj_url(Dj.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Dj" do
        expect {
          post djs_url, params: { dj: invalid_attributes }
        }.to change(Dj, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post djs_url, params: { dj: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested dj" do
        dj = Dj.create! valid_attributes
        patch dj_url(dj), params: { dj: new_attributes }
        dj.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the dj" do
        dj = Dj.create! valid_attributes
        patch dj_url(dj), params: { dj: new_attributes }
        dj.reload
        expect(response).to redirect_to(dj_url(dj))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        dj = Dj.create! valid_attributes
        patch dj_url(dj), params: { dj: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested dj" do
      dj = Dj.create! valid_attributes
      expect {
        delete dj_url(dj)
      }.to change(Dj, :count).by(-1)
    end

    it "redirects to the djs list" do
      dj = Dj.create! valid_attributes
      delete dj_url(dj)
      expect(response).to redirect_to(djs_url)
    end
  end
end
