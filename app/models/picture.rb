class Picture < ActiveRecord::Base
  has_attached_file :file, :styles => { :medium => "500x500>", :thumb => "100x100>" }#, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :file, :content_type => /\Aimage\/.*\Z/
end
