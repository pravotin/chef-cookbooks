unless node[:opsworks][:skip_uninstall_of_other_rails_stack]
  Chef::Log.error("SANTA: Uninstalling Apache2")
  include_recipe "apache2::uninstall"
end

include_recipe "aws-php"
include_recipe "nginx"

