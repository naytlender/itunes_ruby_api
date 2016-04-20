# main App class
class Application
  require 'mongoid'
  Mongoid.load!('mongoid.yml', :development)
end
