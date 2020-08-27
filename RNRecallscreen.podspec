
Pod::Spec.new do |s|
  s.name         = "RNRecallscreen"
  s.version      = "1.0.0"
  s.summary      = "RNRecallscreen"
  s.description  = <<-DESC
                  RNRecallscreen
                   DESC
  s.homepage     = "https://github.com/xiaocui00/react-native-recallscreen.git"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/xiaocui00/react-native-recallscreen.git", :tag => "master" }
  s.source_files  = "ios/*.{h,m}"
  s.requires_arc = true
  s.vendored_frameworks = 'ios/*.framework'


  s.dependency "React"
  #s.dependency "others"

end

  