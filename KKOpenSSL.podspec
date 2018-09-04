Pod::Spec.new do |s|
s.name         = "KKOpenSSL"
s.version      = "0.0.3"
s.summary      = "KKOpenSSL Libraries and CocoaPod with BitCode for iOS,depend on OpenSSL"
s.description  = "KKOpenSSL is an SSL/TLS and Crypto toolkit. Deprecated in Mac OS and gone in iOS, this spec gives your project non-deprecated OpenSSL support. Supports iOS including Simulator (armv7, arm64, i386, x86_64)."
s.homepage     = "https://github.com/CheckNill/KKOpenSSL"
s.license         = { :type => 'KKOpenSSL', :file => 'LICENSE' }
s.source       = { :git => "https://github.com/CheckNill/KKOpenSSL.git", :branch => "master", :tag => "#{s.version}" }

s.authors       =  {'Mark J. Cox' => 'mark@openssl.org',
'Ralf S. Engelschall' => 'rse@openssl.org',
'Dr. Stephen Henson' => 'steve@openssl.org',
'Ben Laurie' => 'ben@openssl.org',
'Lutz Jänicke' => 'jaenicke@openssl.org',
'Nils Larsch' => 'nils@openssl.org',
'Richard Levitte' => 'nils@openssl.org',
'Bodo Möller' => 'bodo@openssl.org',
'Ulf Möller' => 'ulf@openssl.org',
'Andy Polyakov' => 'appro@openssl.org',
'Geoff Thorpe' => 'geoff@openssl.org',
'Holger Reif' => 'holger@openssl.org',
'Paul C. Sutton' => 'geoff@openssl.org',
'Eric A. Young' => 'eay@cryptsoft.com',
'Tim Hudson' => 'tjh@cryptsoft.com',
'Justin Plouffe' => 'plouffe.justin@gmail.com'}

s.platform     = :ios, "8.0"
s.ios.source_files        = 'KKOpenSSL/include-ios/openssl/**/*.h'
s.ios.public_header_files = 'KKOpenSSL/include-ios/openssl/**/*.h'
s.ios.header_dir          = 'KKOpenSSL/openssl'
s.ios.preserve_paths      = 'KKOpenSSL/lib-ios/libcrypto.a', 'KKOpenSSL/lib-ios/libssl.a'
s.ios.vendored_libraries  = 'KKOpenSSL/lib-ios/libcrypto.a', 'KKOpenSSL/lib-ios/libssl.a'

s.libraries = 'ssl', 'crypto'
end
