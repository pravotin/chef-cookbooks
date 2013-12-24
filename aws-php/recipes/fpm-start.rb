include_recipe "aws-php::fpm-service"

service "php-fpm" do
  action :start
end
