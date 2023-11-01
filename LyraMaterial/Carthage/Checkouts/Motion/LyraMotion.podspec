Pod::Spec.new do |s|
  s.name = 'LyraMotion'
  s.version = '4.0.0'
  s.swift_version = '5.0'
  s.license = 'MIT'
  s.summary = 'This library is a fork of CosmicMind Motion library that fix the compilation problem with Xcode 15'
  s.homepage = 'https://github.com/lyra/Motion'
  s.authors = { 'Lyra Dev Mobile' => 'dev-mobile@lyra-network.com'}
  s.source = { :git => 'https://github.com/lyra/Motion.git', :tag => s.version }
  s.platform = :ios, '11.0'

  s.default_subspec = 'Core'

  s.subspec 'Core' do |s|
    s.ios.deployment_target = '11.0'
    s.ios.source_files = 'Sources/**/*.swift'
    s.requires_arc = true
  end
end
