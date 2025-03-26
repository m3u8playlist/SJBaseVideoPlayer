Pod::Spec.new do |s|
  s.name         = 'SJBaseVideoPlayer'
  s.version      = '4.0'
  s.summary      = 'video player.'
  s.description  = 'https://github.com/m3u8playlist/SJBaseVideoPlayer/blob/master/README.md'
  s.homepage     = 'https://github.com/m3u8playlist/SJBaseVideoPlayer'
  s.license      = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author       = { 'SanJiang' => 'changsanjiang@gmail.com' }
  s.platform     = :ios, '15.0'
  s.source       = { :git => 'https://github.com/m3u8playlist/SJBaseVideoPlayer.git', :tag => "v#{s.version}" }
  s.frameworks  = "UIKit", "AVFoundation"
  s.requires_arc = true

  s.source_files = 'SJBaseVideoPlayer/*.{h,m}'
  s.default_subspecs = 'Common', 'AVPlayer'
  
  s.subspec 'Common' do |ss|
    ss.source_files = 'SJBaseVideoPlayer/Common/**/*.{h,m}'
    ss.dependency 'SJBaseVideoPlayer/ResourceLoader'
  end
  
  s.subspec 'ResourceLoader' do |ss|
    ss.source_files = 'SJBaseVideoPlayer/ResourceLoader/*.{h,m}'
    ss.resources = 'SJBaseVideoPlayer/ResourceLoader/SJBaseVideoPlayerResources.bundle'
  end
  
  s.subspec 'AVPlayer' do |ss|
      ss.source_files = 'SJBaseVideoPlayer/AVPlayer/**/*.{h,m}'
      ss.dependency 'SJBaseVideoPlayer/Common'
  end
  
  s.subspec 'FSPlayer' do |ss|
      ss.source_files = 'SJBaseVideoPlayer/FSPlayer/**/*.{h,m}'
      ss.dependency 'SJBaseVideoPlayer/Common'
      ss.libraries = 'z', 'c++'
  end

  s.dependency 'Masonry'
  s.dependency 'SJUIKit/AttributesFactory', '>= 0.0.0.38'
  s.dependency 'SJUIKit/ObserverHelper'
  s.dependency 'SJUIKit/Queues'
  s.dependency 'SJUIKit/SQLite3'
end
