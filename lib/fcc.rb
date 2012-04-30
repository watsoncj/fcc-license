require "httparty"

Dir[File.dirname(__FILE__) + '/fcc/*.rb'].each do |file|
  require file
end
