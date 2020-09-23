#
# Be sure to run `pod lib lint DiscoverCore.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DiscoverCore'
  s.version          = '0.1.0'
  s.summary          = 'A short description of DiscoverCore.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Fetches the WordPress.com discover feed for you
                       DESC

  s.homepage         = 'https://github.com/jkmassel/DiscoverCore'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jkmassel' => 'jeremy.massel@automattic.com' }
  s.source           = { :git => 'https://github.com/jkmassel/DiscoverCore.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files = 'DiscoverCore/Classes/**/*'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'FeedKit', '~> 9.1.2'
  s.dependency 'NSString_stripHtml'
end
