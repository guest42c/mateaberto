class Checkin < ActiveRecord::Base
  attr_accessible :arrive, :comment, :contact, :leave, :name
end
