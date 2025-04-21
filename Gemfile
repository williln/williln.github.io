source "https://rubygems.org"

gem "jekyll", "~> 4.3.2"

# Use older sass converter to avoid protobuf issues
gem "jekyll-sass-converter", "~> 2.2"

# GitHub Pages compatibility (uncomment when deploying)
# gem "github-pages", group: :jekyll_plugins

# Plugins
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.17.0"
  gem "jekyll-seo-tag", "~> 2.8.0"
end

# Windows and JRuby for native platform failure fixes
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1"
  gem "tzinfo-data"
end

# Performance-optimized watching
gem "wdm", "~> 0.1.1", :platforms => [:mingw, :x64_mingw, :mswin]
gem "webrick", "~> 1.8"
