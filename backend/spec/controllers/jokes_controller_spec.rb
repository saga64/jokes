require "rails_helper.rb"

RSpec.describe JokesController do
  let(:user) { create(:user) }

  describe "GET index" do
    before { create(:joke, user: user) }

    it "returns jokes" do
      get :index, { format: :json }

      expect(response.status).to be(200)
      expect(JSON.parse(response.body).length).to eq(1)
    end

    it "renders the index template" do
      get :index

      expect(response).to render_template("index")
    end
  end

  describe "GET jokes with comments" do
    let(:joke) { create(:joke, user:user) }

    before do
      create(:comment, joke: joke, user: user)
    end

    it "returns jokes with comments" do
      get :index, { format: :json }

      expect(JSON.parse(response.body).first).to have_key("comment")
    end
  end

  describe "GET latest 25" do
    before { create_list(:joke, 30, user: user) }

    it "returns jokes" do
      get :index, { format: :json }

      expect(response.status).to be(200)
      expect(JSON.parse(response.body).length).to eq(25)
    end
  end
end
