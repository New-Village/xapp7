class Sbsc < ActiveRecord::Base
  belongs_to  :site, :foreign_key => 'site_id'
  validates_uniqueness_of :site_id, :scope => :user_id
  
  # ログインユーザのレコードを抽出
  scope :own, lambda { |uid| where("user_id = ?", "#{uid}") }
  
end
