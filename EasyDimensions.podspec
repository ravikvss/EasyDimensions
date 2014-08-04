Pod::Spec.new do |s|
  s.name             = "EasyDimensions"
  s.version          = "0.1.0"
  s.summary          = "Simple category on UIView that makes it easy to get and set the frame properties"
  s.description      = <<-DESC
                       An optional longer description of EasyDimensions

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/ravikvss/EasyDimensions"
  s.license          = 'MIT'
  s.author           = { "Ravi Kondapalli" => "kvss.ravi@gmail.com" }
  s.source           = { :git => "https://github.com/ravikvss/EasyDimensions.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/kvssravi'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resources = 'Pod/Assets/*.png'

  s.frameworks = 'UIKit'
end
