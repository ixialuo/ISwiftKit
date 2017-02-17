Pod::Spec.new do |s|

  s.name         = "ISwiftKit"
  s.version      = “0.0.3”
  s.summary      = "ISwiftKit for iOS swift"
  s.description  = <<-DESC
			All tools in ISwitKit, it’s very convenient.
                   DESC
  s.homepage     = "https://github.com/ixialuo/ISwiftKit"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "ixialuo" => "ixialuo@gmail.com" }
  s.social_media_url   = "http://blog.csdn.net/ixialuo"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/ixialuo/ISwiftKit.git", :tag => s.version }
  s.source_files = "Sources/Regexp.swift"
  s.requires_arc = true

end
