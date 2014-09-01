module Services
  class Screenshot
    def from_url(url, opts={})
      file = Rails.root.join("tmp","screenshots","screen.png").to_s

      width = opts.fetch(:width, 1024)
      height = opts.fetch(:height, 768)
      timeout = opts.fetch(:timeout, 10)
      
      screen = Webshot::Screenshot.instance
      screen.start_session do
        screen.capture url, "screen.png", width: width, height: height, timeout: timeout
      end
      
      file
    end
  end
end
