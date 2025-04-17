Pod::Spec.new do |s|
    s.name             = 'ffmpeg_kit_flutter_custom'
    s.version          = '6.0.3'
    s.summary          = 'FFmpeg Kit for Flutter'
    s.description      = 'A Flutter plugin for running FFmpeg and FFprobe commands.'
    s.homepage         = 'https://github.com/arthenica/ffmpeg-kit'
    s.license          = { :file => '../LICENSE' }
    s.author           = { 'ARTHENICA' => 'open-source@arthenica.com' }

    s.source = {
        :http => 'https://github.com/bawahakim/ffmpeg-kit/releases/download/6.0.3/ffmpeg-kit-6.0.3-ios-min-xcframework.zip',
    }
    s.vendored_frameworks = [
        'ffmpegkit.xcframework',
        'libavdevice.xcframework',
        'libavcodec.xcframework',
        'libavfilter.xcframework',
        'libavformat.xcframework',
        'libavutil.xcframework',
        'libswresample.xcframework',
        'libswscale.xcframework'
      ]
  
    s.platform            = :ios
    s.requires_arc        = true
    s.static_framework    = true
  
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  
  end
  