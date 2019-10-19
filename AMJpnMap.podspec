Pod::Spec.new do |s|
    s.name         = "AMJpnMap"
    s.version      = "2.1.1"
    s.summary      = "It can display a simple map of Japan."
    s.license      = { :type => 'MIT', :file => 'LICENSE' }
    s.homepage     = "https://github.com/adventam10/AMJpnMapView"
    s.author       = { "am10" => "adventam10@gmail.com" }
    s.source       = { :git => "https://github.com/adventam10/AMJpnMapView.git", :tag => "#{s.version}" }
    s.platform     = :ios, "9.0"
    s.requires_arc = true
    s.source_files = 'Source/**/*.{swift}'
    s.swift_version = "5.0"
end
