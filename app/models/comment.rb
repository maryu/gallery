class Comment < ActiveRecord::Base
	belongs_to :pilt
	attr_accessible :body, :pilt_id, :user_name
end
