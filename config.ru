require "./config/application"

MatrackApp = Matrack::Application.new

require "./config/routes"
require "./config/active_manager"

use Rack::MethodOverride
use Rack::Reloader
run MatrackApp