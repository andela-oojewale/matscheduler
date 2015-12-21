require "./config/application"

MatrackApp = Matrack::Application.new

require "./config/routes"


use Rack::Reloader
run MatrackApp