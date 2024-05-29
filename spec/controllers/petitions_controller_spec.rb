require 'rails_helper'

RSpec.describe PetitionsController do
  describe 'GET index' do
    it 'responds' do
      get :index
      expect(response).to be_present
    end
  end
end
