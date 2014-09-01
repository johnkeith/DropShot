module Services
  class Screenshot
    def from_url(url, opts={})
      img_file = Rails.root.join("tmp","screenshots","screen.png").to_s
      img_file.slice!(0)
      # edit to reupload to heroku since phantomjs disappeared
      width = opts.fetch(:width, 1024)
      height = opts.fetch(:height, 768)
      timeout = opts.fetch(:timeout, 2)
      
      screen = Webshot::Screenshot.instance
      screen.start_session do
        screen.capture url, img_file, width: width, height: height, timeout: timeout
      end
      img_file
    end
  end
end
