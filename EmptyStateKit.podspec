#
# Be sure to run `pod lib lint EmptyStateKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  s.platform = :ios
  s.ios.deployment_target = '9.0'
  s.name              = 'EmptyStateKit'
  s.summary           = 'Beautiful, animated & fully customizable empty state view. A great way to engage and keep users whenever the view has no content to display.'
  s.description       = 'Empty states are actually a great way to engage, keep and delight users at critical moments. Use `EmptyStateKit` to make your app even more interesting and add a bit of fun to the UI interactions whenever the view has no content to display. Display awesome placeholder empty state in any UIView or UITableView/UICollectionView with refresh content features. It is super-useful to speed up a mobile development workflow due to its flexibility and ease of use.'
  s.version           = '1.0.4'
  
  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  s.license           = { :type => 'MIT', :file => 'LICENSE' }
  
  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  s.author            = { 'Alberto Aznar' => 'info@alberdev.com' }
  s.homepage          = 'https://github.com/alberdev/EmptyStateKit'
  s.social_media_url  = 'https://twitter.com/alberdev'
  
  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  s.source            = { :git => 'https://github.com/alberdev/EmptyStateKit.git', :tag => s.version.to_s }
  
  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  s.framework         = 'UIKit'
  
  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  s.source_files      = 'EmptyStateKit/**/*'
  
  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  s.resource         = 'EmptyStateKit/Resources/EmptyStateView.xib'
  
  # ――― Swift Version ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  s.swift_version     = '5.0'
  
  
  
end
