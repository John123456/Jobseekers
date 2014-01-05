class Announcement < ActiveRecord::Base
  has_many :notes
  attr_accessible :description, :title
end
