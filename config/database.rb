require "matrack"

module Todo
  class ActiveManager < Matrack::BaseModel
    db = self.connection
  end
end