class HomeController < ApplicationController
  allow_unauthenticated_access only: :index
  def index
  end

  def dashboard
  end
end
