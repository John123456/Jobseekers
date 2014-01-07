class Announcement < ActiveRecord::Base
  has_many :notes
  belongs_to :user
  attr_accessible :description, :title

default_scope order('created_at DESC')

end
