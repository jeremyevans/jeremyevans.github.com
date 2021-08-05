require 'roda'

files = Dir['pages/*.erb'].map{|f| File.basename(f).delete_suffix('.erb')}
files += files.map{|f| "#{f}.html"}
Roda.plugin :render, :views=>'pages', :layout=>'../layout', :allowed_paths=>['.']
Roda.plugin :public
Roda.route do |r|
  r.get files do |file|
    view file.chomp('.html')
  end
  r.public
end
run Roda.app.freeze
