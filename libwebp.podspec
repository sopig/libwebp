Pod::Spec.new do |s|
  s.name            = 'libwebp'
  s.version         = '0.5.0'
  s.summary         = 'Library to encode and decode images in WebP format.'
  s.homepage        = 'https://developers.google.com/speed/webp/'
  s.author          = 'Google Inc.'
  s.license         = { :type => 'BSD', :file => 'COPYING' }
  s.source          = { :git => 'https://github.com/sopig/libwebp.git', :tag => "#{s.version}" }

  s.compiler_flags  = '-D_THREAD_SAFE'
  s.requires_arc    = false
  
  #s.source_files = 'src/**/*.{h,c}'
  #s.source_files = 'src/*'

  s.subspec 'dec' do |ss|
    ss.source_files = 'dec/*.{h.c}'
  end
  
  s.subspec 'demux' do |ss|
    ss.source_files = 'demux/*.{h.c}'
  end

   s.subspec 'dsp' do |ss|
    ss.source_files = 'dsp/*.{h.c}'
  end

   s.subspec 'enc' do |ss|
    ss.source_files = 'enc/*.{h.c}'
  end

   s.subspec 'mux' do |ss|
    ss.source_files = 'mux/*.{h.c}'
  end

   s.subspec 'utils' do |ss|
    ss.source_files = 'utils/*.{h.c}'
  end

   s.subspec 'webp' do |ss|
    ss.source_files = 'webp/*.{h.c}'
  end

end