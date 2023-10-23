Pod::Spec.new do |s|
	s.name = 'LyraMaterial'
	s.version = '1.0.4'
	s.swift_version = '5.0'
	s.license = 'BSD-3-Clause'
	s.summary = 'This library is a fork of CosmicMind Material library that fix the compilation problem with Xcode 15'
	s.homepage = 'https://github.com/lyra/Material'
	s.authors = { 'Lyra Dev Mobile' => 'dev-mobile@lyra-network.com' }
 	s.source = { :git => 'https://github.com/lyra/Material.git', :tag => s.version }

	s.default_subspec = 'Core'
	s.platform = :ios, '11.0'

	s.subspec 'Core' do |s|
		s.ios.deployment_target = '11.0'
		s.ios.source_files = 'Sources/**/*.swift'
		s.requires_arc = true
		s.resource_bundles = {
			'com.cosmicmind.material.icons' => ['Sources/**/*.xcassets'],
			'com.cosmicmind.material.fonts' => ['Sources/**/*.ttf']
		}

		s.dependency 'LyraMotion', '~> 4.0.0'
	end
end
