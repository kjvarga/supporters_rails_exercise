require 'network'

class NetworkController < ApplicationController
  def index
  	render json: Network.fetch_by_user_id(1234)
  end
end
