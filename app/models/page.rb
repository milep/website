class Page < ActiveRecord::Base
  validates_uniqueness_of :short_name
  validates_presence_of :title, :short_name, :order

  def self.root
    find(:first, :order => '`order` ASC')
  end
    
end
