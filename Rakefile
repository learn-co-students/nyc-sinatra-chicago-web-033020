ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

desc 'Enters a Pry session that knows about models, migrations, etc'
task :console do
  Pry.start
end

# Type `rake -T` on your command line to see the available rake tasks.
