class Note < ActiveRecord::Base
  belongs_to :announcement
  attr_accessible :body
end
