require 'dropbox_sdk'

class DropboxController < ApplicationController
  before_filter :authenticate_user!

  def upload_from_url
    url = params[:url]
    # send url from form to screenshot service
      # screenshot service captures shot of site, saves it to a file in the /tmp dir
    # screenshot service returns a file object


    # client = build_client
    # client.put_file('/db_text.txt', open(Rails.root.join('tmp','db_test.txt').to_s))
    redirect_to root_path
  end

  def upload_from_file
  end

  private

  def build_client
    DropboxClient.new(current_user.access_token) 
  end
end
