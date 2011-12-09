class NavigationManager
  def self.post_initialize
    config = YAML.load_file(File.dirname(__FILE__) << '/../config/navigation.yml')['navigation_manager']
    config.each do |menu_name,menu_links|
      menu_links.each do |link_name,link_addr|
        Redmine::MenuManager.map(menu_name.to_s).push(
            I18n.t("navigation_manager.#{menu_name}.#{link_name}"), link_addr, {})
      end
    end
  end
end
