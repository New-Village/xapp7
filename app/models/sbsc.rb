class Sbsc < ActiveRecord::Base
  belongs_to  :site, :foreign_key => 'site_id'
  validates_uniqueness_of :site_id, :scope => :user_id
end
