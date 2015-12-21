require "matrack"

def required_paths
  [
    File.join(File.dirname(__FILE__), "..", "app", "controllers"),
    File.join(File.dirname(__FILE__), "..", "app", "models"),
    File.join(File.dirname(__FILE__), "..", "db")
  ]
end

required_paths.each { |path| $LOAD_PATH << path }

module Todo
  class Application < Matrack::Application
  end
end