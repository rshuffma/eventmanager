class Meeting < ActiveRecord::Base
  attr_accessible :end_date, :name, :start_date, :venue_id, :sponsor_ids
  validates :end_date, :presence => true
  validates :start_date, :presence => true
  validates :name, :presence => true
  validates :venue_id, :presence => true
  
  has_and_belongs_to_many :sponsors
  belongs_to :venue
  has_many :exhibitors, :through => :sponsors
  has_many :contests
  
end
