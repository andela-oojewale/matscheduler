require "matrack"
$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")

require "pages_controller"

module Todo
  class Application < Matrack::Application

  end
end