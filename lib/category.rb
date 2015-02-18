require "active_record"

class Category < ActiveRecord::Base
    self.has_many(:activities)
end

