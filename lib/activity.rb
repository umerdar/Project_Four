require 'active_record'

class Activity < ActiveRecord::Base
    self.belongs_to(:user)
    self.belongs_to(:category)
end


