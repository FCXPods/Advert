#
#  Be sure to run `pod spec lint Advert.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "Advert"
  s.version      = "0.0.1"
  s.summary      = "FCX's Advert."
  s.description  = <<-DESC
                    Advert of FCX
                   DESC

  s.homepage     = "https://github.com/FCXPods/Advert"

  s.license      = "MIT"
  s.author       = { "fengchuanxiang" => "fengchuanxiang@126.com" }
  s.source       = { :git => "https://github.com/FCXPods/Advert.git", :tag => "0.0.1" }
   s.platform     = :ios, "6.0"

  s.source_files  = "FCXAdvert/"
#, "Baidu/"
  #s.exclude_files = "Classes/Exclude"
 # s.resource     = 'Baidu/baidumobadsdk.bundle'


  s.vendored_libraries = "FCXAdvert/libGDTMobSDK.a"
#, "Baidu/libBaiduMobAdSdk64bit.a"
  s.vendored_frameworks = "FCXAdvert/GoogleMobileAds.framework"

  s.frameworks  = "AdSupport", "CoreLocation", "SystemConfiguration", "CoreTelephony", "Security", "StoreKit", "QuartzCore", "AudioToolbox", "AVFoundation", "CoreGraphics", "CoreMedia", "EventKit", "EventKitUI", "MessageUI", "CoreMotion", "MediaPlayer", "MessageUI", "CoreLocation", "Foundation", "WebKit"

  # s.library   = "iconv"
   s.libraries = "z"


  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
# s.dependency "Google-Mobile-Ads-SDK", "~> 7.6.0"

end
