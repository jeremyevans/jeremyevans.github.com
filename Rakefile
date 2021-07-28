require "rake"
require "rake/clean"

CLEAN.include ["public/*.html"]

desc "Make local version of website"
task :default => :clean do
  sh %{#{FileUtils::RUBY} make_www.rb}
end

desc "Serve local version of website via rackup"
task :serve => :default do
  sh %{#{FileUtils::RUBY} -S rackup -p 8080}
end
