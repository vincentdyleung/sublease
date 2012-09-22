class Residence < ActiveRecord::Base
  attr_accessible :address, :availability, :bathroom, :bedroom, :name, :num_people, :price
end
