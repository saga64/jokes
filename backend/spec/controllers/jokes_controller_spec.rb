require "rails_helper.rb"

RSpec.describe JokesController do
  describe "GET index" do
    it "return jokes" do
      get :index, { format: :json }
      expect(response.status).to be(200)
      expect(JSON.parse(response.body).length).to eq(3)
    end

    it "renders the index template" do
      get :index

      expect(response).to render_template("index")
    end
  end
end
