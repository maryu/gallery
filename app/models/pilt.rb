class Pilt < ActiveRecord::Base
	has_many :comments
	mount_uploader :picture, PictureUploader
 	attr_accessible :description, :name, :picture, :rating
 	validates :rating, :inclusion => { :in => 0..5 }
 	def self.possible_ratings
		(1..5).to_a
	end
end
