
Pod::Spec.new do |s|
  s.name             = 'Stringee-Dynamic'
  s.version          = '0.1.0'
  s.summary          = 'Developed by Stringee'

  s.description      = <<-DESC
The Stringee platform, developed by Stringee, makes it easy to embed high-quality interactive video, voice, messaging, and screen sharing into web and mobile apps.
                       DESC

  s.homepage         = 'https://github.com/stringeecom/Stringee-iOS-SDK-Dynamic'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Stringee' => 'info@stringee.com' }
  s.source           = { :git => 'https://github.com/stringeecom/Stringee-iOS-SDK-Dynamic.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.pod_target_xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}

  s.source_files = 'Stringee-Dynamic/Classes/**/Stringee.framework/Headers/*.h'
  s.public_header_files = 'Stringee-Dynamic/Classes/**/Stringee.framework/Headers/*.h'

  s.frameworks = 'CoreFoundation', 'VideoToolbox', 'AudioToolbox', 'AVFoundation', 'GLKit'
  s.libraries = 'icucore', 'stdc++'

  s.vendored_frameworks = 'Stringee-Dynamic/Classes/**/Stringee.framework'
  s.dependency "GoogleWebRTC", '1.1.31999'

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }

end
