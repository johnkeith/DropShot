class DropboxController < ApplicationController
  before_filter :authenticate_user!

  def upload
  end

  private

  def build_client 
  end
end
