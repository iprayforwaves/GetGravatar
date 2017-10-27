Pod::Spec.new do |s|
  s.name     = 'GetGravatar'
  s.version  = '1.1'
  s.summary  = 'A simple class for generating a gravatar from an email address.'
  s.homepage = 'https://github.com/iprayforwaves/GetGravatar'
  s.author   = { 'Raquel Galan' => 'iprayforwaves@gmail.com' }
  s.source   = { :git => 'https://github.com/iprayforwaves/GetGravatar.git', :tag => "#{s.version}" }
  s.source_files = '*.{h,m}'
end
