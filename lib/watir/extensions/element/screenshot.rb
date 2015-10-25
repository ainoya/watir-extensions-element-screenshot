require "watir/extensions/element/screenshot/version"
require 'Rmagick'

module Watir
  class Element
    def screenshot(dest)
      file = Tempfile.new('sc')
      begin
        browser.screenshot.save(file)
        image = Magick::Image.read(file.path).first
        output = image.crop(wd.location.x + 1, wd.location.y + 1, wd.size.width, wd.size.height)
        output.write(dest)
      ensure 
        file.unlink 
      end
    end
  end
end
