#
# Be sure to run `pod lib lint LXFProtocolTool.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LXFProtocolTool'
  s.version          = '0.1.2'
  s.summary          = 'LXFProtocolTool是实用的协议应用工具库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
LXFProtocolTool是使用Swift中的协议来实现多种方便、实用的工具库
                       DESC

  s.homepage         = 'https://github.com/LinXunFeng/LXFProtocolTool'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'LinXunFeng' => '598600855@qq.com' }
  s.source           = { :git => 'https://github.com/LinXunFeng/LXFProtocolTool.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }

  # s.source_files = 'LXFProtocolTool/Classes/**/*.swift'

  s.subspec 'LXFNibloadable' do |t|
    t.source_files = 'LXFProtocolTool/Classes/LXFNibloadable/**/*.{swift}'
  end

  s.subspec 'LXFEmptyDataSetable' do |t|
    t.source_files = 'LXFProtocolTool/Classes/LXFEmptyDataSetable/**/*.{swift}'
    t.resource_bundles = {
      'LXFProtocolTool' => ['LXFProtocolTool/Assets/LXFEmptyDataSetable/*']
    }
    t.dependency 'DZNEmptyDataSet', '~> 1.8.1'
  end

  # pod 'DZNEmptyDataSet', '~> 1.8.1'
  
  # s.resource_bundles = {
  #   'LXFProtocolTool' => ['LXFProtocolTool/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
