#
# Be sure to run `pod lib lint RUImageCaptureView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RUImageCaptureView'
  s.version          = '0.1.5'
  s.summary          = 'A subclass of `UIView` that displays video input from camera devices.'

  s.description      = <<-DESC
Provides `RUImageCaptureView`, a subclass of `UIView` that displays video input from camera devices. Provides a few properties to control some other camera-related features.
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
  
  s.dependency 'ResplendentUtilities', '~> 0.5.2'
end
