describe "root", :type => :request do
  context "v1" do
    it "#openapi.json" do
      get("/api/v1.0/openapi.json", :headers => default_headers)

      expect(response.content_type).to eq("application/json")
      expect(response).to have_http_status(:ok)
    end
  end
end
