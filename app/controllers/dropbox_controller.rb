require 'dropbox_sdk'

class DropboxController < ApplicationController
  before_filter :authenticate_user!

  def upload_from_url
    client = build_client
    binding.pry
  end

  def upload_from_file
  end

  private

  def build_client
    DropboxClient.new(current_user.access_token) 
  end
end
