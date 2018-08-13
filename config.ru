
require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Run `rake db:migrate` to resolve the issue.'
end

use UsersController
use MoviesController
use Rack::MethodOverride

run ApplicationController
