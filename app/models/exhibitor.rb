class Exhibitor < ActiveRecord::Base
  attr_accessible :description, :exhibitor_category_id, :name
  validates :name, :presence => true
  validates :description, :presence => true
  validates :exhibitor_category_id, :presence => true
  
  belongs_to :exhibitor_category
  has_one :sponsor
  has_many :meetings, :through => :sponsor
  
end
