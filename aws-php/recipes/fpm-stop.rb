include_recipe "aws-php::fpm-service"

service "php-fpm" do
  action :stop
end
