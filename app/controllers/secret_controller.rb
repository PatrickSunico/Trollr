class SecretController < ApplicationController
  before_action :current_user
  layout 'secret'
  def index

  end
end
