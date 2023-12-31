#
# Be sure to run `pod lib lint OrbitCoordinator.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OrbitCoordinator'
  s.version          = '0.1.0'
  s.summary          = 'A short description of OrbitCoordinator.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/edo oktarifa/OrbitCoordinator'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'edo oktarifa' => 'edo.oktarifa@phincon.com' }
  s.source           = { :git => 'https://github.com/edo oktarifa/OrbitCoordinator.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'
  s.dependency 'MyTelkomselSuperappFrameworkIntegration', '0.0.1'
  s.dependency 'React'


  s.source_files = 'OrbitCoordinator/Classes/**/*'
  
  # s.resource_bundles = {
  #   'OrbitCoordinator' => ['OrbitCoordinator/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
