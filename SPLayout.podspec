#
# Be sure to run `pod lib lint SPLayout.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SPLayout'
  s.version          = '0.1.3'
  s.summary          = 'This is a layout tool that adapts to RTL (Right-to-Left) layouts'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/sayiwen/SPLayout'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sayiwen' => 'sayiwen@163.com' }
  s.source           = { :git => 'https://github.com/sayiwen/SPLayout.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  
  s.source_files = 'SPLayout/Classes/**/*'
  
  s.dependency 'Masonry', '~> 1.1.0'
end
