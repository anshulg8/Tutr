class Post < ActiveRecord::Base
	
	validates_uniqueness_of :title, :case_sensitive => false
	
	extend FriendlyId
  friendly_id :title, use: :slugged

	def previous
	  Post.where(["id < ?", id]).last
	end

	def next
	  Post.where(["id > ?", id]).first
	end
end