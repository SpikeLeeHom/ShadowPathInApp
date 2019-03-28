Pod::Spec.new do |s|
  s.name         = "ShadowPathInApp"
  s.version      = "0.1.1"
  s.summary      = "Http and Socks proxy based on Privoxy and Antinat"
  s.description  = <<-DESC
                   Http and Socks proxy based on Privoxy and Antinat.
                   DESC
  s.homepage     = "ShadowPathInApp"
  s.license      = "GPLv2"
  s.author        = { "iCodesign" => "ShadowPathInApp.com" }
  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.9'
  s.source     = { :git => 'https://github.com/SpikeLeeHom/ShadowPathInApp.git', :tag => s.version.to_s }
  s.source_files  = "ShadowPathInApp", "ShadowPathInApp/**/*.{c,h,m,swift}"
  s.libraries = "z" 
  s.pod_target_xcconfig = { 
    'OTHER_CFLAGS' => '-DHAVE_CONFIG_H -DUSE_CRYPTO_OPENSSL -DLIB_ONLY -DUDPRELAY_LOCAL -DMODULE_LOCAL', 
    # 'HEADER_SEARCH_PATHS' => '',
  }
  s.vendored_libraries = 'ShadowPathInApp/Antinat/expat-lib/lib/libexpat.a', 'ShadowPathInApp/shadowsocks-libev/libopenssl/lib/libcrypto.a', 'ShadowPathInApp/shadowsocks-libev/libopenssl/lib/libssl.a', 'ShadowPathInApp/shadowsocks-libev/libsodium-ios/lib/libsodium.a'
end
