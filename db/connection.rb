require 'active_record'

ActiveRecord::Base.establish_connection({
  :adapter => "postgresql",
  :host     => "localhost",
  :username => "nycdeployment",
  :password => "915broadway",
  :database => "adventure"
})

ActiveRecord::Base.logger = Logger.new(STDOUT)
