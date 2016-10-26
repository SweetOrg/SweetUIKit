Pod::Spec.new do |s|
  s.name             = "SweetUIKit"
  s.summary          = "Helpers and sugar for the UIKit framework."
  s.version          = "1.3.0"
  s.homepage         = "https://github.com/UseSweet/SweetUIKit"
  s.license          = 'MIT'
  s.author           = { "Use Sweet" => "usesweet.contact@gmail.com" }
  s.source           = { :git => "https://github.com/UseSweet/SweetUIKit.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/use_sweet'
  s.ios.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'
  s.requires_arc = true
  s.source_files = 'Sources/**/*.swift'
  # spec.resource_bundles = { 'OnePasswordExtensionResources' => ['1Password.xcassets/*.imageset/*.png', '1Password.xcassets'] }
end
