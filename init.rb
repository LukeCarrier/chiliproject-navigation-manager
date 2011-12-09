require 'yaml'

Redmine::Plugin.register :navigation_manager do
  name 'Navigation manager'
  version '0.1.0'
  description 'Enables adding custom navigation elements to the navigation menus in the header and project modules'
  url 'http://github.com/LukeCarrier/chiliproject-navigation-manager'
  
  author 'Luke Carrier'
  author_url 'http://lukecarrier.me/'
end

require File.dirname(__FILE__) << '/lib/hooks'
NavigationManager.post_initialize
