Pod::Spec.new do |s|
  s.name             = "EasyDimensions"
  s.version          = "0.2"
  s.summary          = "Category on UIView to easily set and get frames"
  s.description      = <<-DESC
                       A category on UIView that makes it easy to get and set the frame properties. Also available is a developing list of other boilerplate UIView methods.

                       * Set and get frames
                       * Easily access properties of the frame of the view
                       * Perform simple UIView animation tasks
                       DESC
  s.homepage         = "https://github.com/ravikvss/EasyDimensions"
  s.license          = 'MIT'
  s.author           = { "Ravi Kondapalli" => "kvss.ravi@gmail.com" }
  s.source           = { :git => "https://github.com/ravikvss/EasyDimensions.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/kvssravi'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resources    = nil

  s.frameworks   = 'UIKit'
end
