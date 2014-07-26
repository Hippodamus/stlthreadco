# -*- encoding : utf-8 -*-
class Design < ActiveRecord::Base
	if Rails.env.development?
			has_attached_file :image, :styles => { :medium => "510x>", :thumb => "100x100>" }, :default_url => "/missing.png"
			validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	else
		has_attached_file :image, :styles => { :medium => "510x>", :thumb => "100x100>" }, :default_url => "/missing.png", 
	                 	  :storage => :dropbox, 
	                  	:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
	                  	:path => ":style/:id_:filename"
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  end

  belongs_to :category
  validates :name, :category, :description, presence: true
  validates_attachment_presence :image
end
