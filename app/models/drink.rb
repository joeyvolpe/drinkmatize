class Drink < ActiveRecord::Base
  belongs_to :user
  #before save
end
