Pod::Spec.new do |s|
  s.name     = 'GetGravatar'
  s.version  = '1.2'
  s.summary  = 'Simple class for generating a gravatar from an email address.'
  s.homepage = 'https://github.com/iprayforwaves/GetGravatar'
  s.author   = { 'Raquel Galan' => 'iprayforwaves@gmail.com' }
  s.source   = { :git => 'https://github.com/iprayforwaves/GetGravatar.git', :tag => "#{s.version}" }
  s.source_files = '*.{h,m}'
end
