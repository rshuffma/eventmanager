class Exhibitor < ActiveRecord::Base
  attr_accessible :description, :exhibitor_category_id, :name, :sponsor_id
  validates :name, :presence => true
  validates :description, :presence => true
  validates :exhibitor_category_id, :presence => true
  
  belongs_to :exhibitor_category
  has_one :sponsor
  has_many :meetings, :through => :sponsor
  has_many :contests, :through => :sponsor
  
  def status
    Sponsor.exists?()
  end
  
end
