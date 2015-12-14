Pod::Spec.new do |s|

  s.name         = "mobAPI"
  s.version      = "1.0.0"
  s.summary      = "mobAPI is SDK that enable users can get information ,such as the weather, the postalcode and so on."
  s.license          = 'MIT'
  s.author           = { "YongchaoLi" => "ok_lyc@126.com" }

  s.homepage         = 'http://www.mob.com'
  s.source           = { :git => "https://github.com/MobClub/mobAPI.git", :tag => s.version.to_s }
  s.platform         = :ios
  s.ios.deployment_target = "6.0"
  s.libraries        = 'icucore', 'z.1.2.5', 'stdc++', ''
  s.frameworks       = 'javascriptcore'

  s.vendored_frameworks = 'libraries/mobAPI.framework','libraries/MOBFoundation.framework'

end
