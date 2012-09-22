class Residence < ActiveRecord::Base
  attr_accessible :address, :bathroom, :bedroom, :building, :capacity, :email, :end_date, :person, :phone, :start_date
end
