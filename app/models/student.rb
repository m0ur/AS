class Student < ActiveRecord::Base
  belongs_to :event
  belongs_to :attendance
end
