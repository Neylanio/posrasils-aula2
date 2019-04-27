require 'rails_helper'

RSpec.decribe Api::V1::PicturesController, type: :controller do
    describe "#index" do
        before do 
            get :index
        end
        it "responds :ok" do
            expect(response).to have_http_status(:ok)
        end

        it "contains all pictures" do
            expect(response.body.as_json).to include(Pictures.all.as_json.to_s)
        end
    end
end
