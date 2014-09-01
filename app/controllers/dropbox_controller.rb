require 'dropbox_sdk'

class DropboxController < ApplicationController
  before_filter :authenticate_user!

  def upload_from_url
    screenshot = Services::Screenshot.new
    screenshot = screenshot.from_url params[:url]
    puts screenshot

    client = build_client
    puts client

    puts open(screenshot)
    client.put_file('/screen.png', open(screenshot))
    
    redirect_to root_path
  end

  def upload_from_file
  end

  private

  def build_client
    DropboxClient.new(current_user.access_token) 
  end
end
