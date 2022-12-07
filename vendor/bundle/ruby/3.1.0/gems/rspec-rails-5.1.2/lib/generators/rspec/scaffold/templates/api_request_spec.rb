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

<% module_namespacing do -%>
RSpec.describe "/<%= name.underscore.pluralize %>", <%= type_metatag(:request) %> do
  # This should return the minimal set of attributes required to create a valid
  # <%= class_name %>. As you add validations to <%= class_name %>, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the headers
  # in order to pass any filters (e.g. authentication) defined in
  # <%= controller_class_name %>Controller, or in your router and rack
  # middleware. Be sure to keep this updated too.
  let(:valid_headers) {
    {}
  }

<% unless options[:singleton] -%>
  describe "GET /index" do
    it "renders a successful response" do
      <%= class_name %>.create! valid_attributes
      get <%= index_helper %>_url, headers: valid_headers, as: :json
      expect(response).to be_successful
    end
  end
<% end -%>

  describe "GET /show" do
    it "renders a successful response" do
      <%= file_name %> = <%= class_name %>.create! valid_attributes
      get <%= show_helper %>, as: :json
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new <%= class_name %>" do
        expect {
          post <%= index_helper %>_url,
               params: { <%= singular_table_name %>: valid_attributes }, headers: valid_headers, as: :json
        }.to change(<%= class_name %>, :count).by(1)
      end

      it "renders a JSON response with the new <%= singular_table_name %>" do
        post <%= index_helper %>_url,
             params: { <%= singular_table_name %>: valid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end

    context "with invalid parameters" do
      it "does not create a new <%= class_name %>" do
        expect {
          post <%= index_helper %>_url,
               params: { <%= singular_table_name %>: invalid_attributes }, as: :json
        }.to change(<%= class_name %>, :count).by(0)
      end

      it "renders a JSON response with errors for the new <%= singular_table_name %>" do
        post <%= index_helper %>_url,
             params: { <%= singular_table_name %>: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested <%= singular_table_name %>" do
        <%= file_name %> = <%= class_name %>.create! valid_attributes
        patch <%= show_helper %>,
              params: { <%= singular_table_name %>: new_attributes }, headers: valid_headers, as: :json
        <%= file_name %>.reload
        skip("Add assertions for updated state")
      end

      it "renders a JSON response with the <%= singular_table_name %>" do
        <%= file_name %> = <%= class_name %>.create! valid_attributes
        patch <%= show_helper %>,
              params: { <%= singular_table_name %>: new_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end

    context "with invalid parameters" do
      it "renders a JSON response with errors for the <%= singular_table_name %>" do
        <%= file_name %> = <%= class_name %>.create! valid_attributes
        patch <%= show_helper %>,
              params: { <%= singular_table_name %>: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested <%= singular_table_name %>" do
      <%= file_name %> = <%= class_name %>.create! valid_attributes
      expect {
        delete <%= show_helper %>, headers: valid_headers, as: :json
      }.to change(<%= class_name %>, :count).by(-1)
    end
  end
end
<% end -%>
