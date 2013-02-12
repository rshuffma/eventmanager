class Sponsor < ActiveRecord::Base
  attr_accessible :exhibitor_id, :logo, :url
  validates :logo, :presence => true
  validates :url, :presence => true
  validates :exhibitor_id, :presence => true
  
  belongs_to :exhibitor
  has_and_belongs_to_many :meetings
  
end
