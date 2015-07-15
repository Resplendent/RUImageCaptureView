#
# Be sure to run `pod lib lint RUImageCaptureView.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "RUImageCaptureView"
  s.version          = "0.1.0"
  s.summary          = "A UIView subclass that displays video input from camera devices."
# s.description      = <<-DESC
#                        An optional longer description of RUImageCaptureView
#
#                        * Markdown format.
#                        * Don't worry about the indent, we strip it!
#                        DESC
  s.homepage         = "https://github.com/Resplendent/RUImageCaptureView"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Richard Reitzfeld" => "richie.reitzfeld@gmail.com" }
  s.source           = { :git => "https://github.com/Resplendent/RUImageCaptureView.git", :tag => "v#{s.version}" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'RUImageCaptureView' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'ResplendentUtilities', '~> 0.2'
end
