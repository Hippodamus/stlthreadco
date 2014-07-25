class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "noavatar.png",
                    :storage => :dropbox, 
	                  :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
	                  :path => ":style/:id_:filename"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  validates :username, presence: true
end