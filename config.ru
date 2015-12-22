require "./config/application"

MatrackApp = Matrack::Application.new

require "./config/routes"
require "./config/database"

use Rack::Reloader
run MatrackApp