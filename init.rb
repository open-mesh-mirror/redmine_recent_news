require 'redmine'

require_dependency 'redmine_recent_news'

Redmine::Plugin.register :redmine_recent_news do
  name 'Recent news macro'
  author 'Sven Eckelmann'
  author_url 'https://git.open-mesh.org/redmine_recent_news.git'
  description 'Recent news for pages'
  version '0.0'
end
