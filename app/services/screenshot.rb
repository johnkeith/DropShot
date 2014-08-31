module Services
  class Screenshot
    def from_url(url)
      Webshot.capybara_setup!
      file = Rails.root.join("tmp","screenshots","screen.png").to_s
      screen = Webshot::Screenshot.instance
      screen.capture url, file
    end
  end
end
