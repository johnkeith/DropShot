module Services
  class Screenshot
    def from_url(url, opts={})
      file = Rails.root.join("tmp","screenshots","screen.png").to_s
      
      width = opts.fetch(:width, 1024)
      height = opts.fetch(:height, 768)
      timeout = opts.fetch(:timeout, 2)
      
      screen = Webshot::Screenshot.instance
      screen.capture url, file, width: width, height: height, timeout: timeout

      file
    end
  end
end
