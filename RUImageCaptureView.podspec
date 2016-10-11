#
# Be sure to run `pod lib lint RUImageCaptureView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RUImageCaptureView'
  s.version          = '0.1.3'
  s.summary          = 'A UIView subclass that displays video input from camera devices.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Resplendent/RUImageCaptureView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 
    'Benjamin Maer' => 'ben@resplendent.co',
    'Richard Reitzfeld' => 'richie.reitzfeld@gmail.com'
}
  s.source           = { :git => 'https://github.com/Resplendent/RUImageCaptureView.git', :tag => "v#{s.version}" }

  s.ios.deployment_target = '7.0'

  s.source_files = 'RUImageCaptureView/Classes/**/*'
  
  s.dependency 'ResplendentUtilities', '~> 0.4.0'
end
