#
# Be sure to run `pod lib lint Functional.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Functional'
  s.version          = '0.1.0'
  s.summary          = 'Functional is a library that simplifies functional programming in Swift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Functional is a library that simplifies functional programming in Swift.
This library enable to use functional interfaces of Java, higher-order functions of Kotlin, and more in Swift.
                       DESC

  s.homepage         = 'https://github.com/geonu1109@gmail.com/Functional'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'geonu1109@gmail.com' => 'geoun1109@gmail.com' }
  s.source           = { :git => 'https://github.com/geonu1109@gmail.com/Functional.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Functional/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Functional' => ['Functional/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
