class Article < ActiveRecord::Base
 
acts_as_taggable

has_attached_file :pic, :styles => 
          { :medium => "300x300>", :thumb => "100x100>" }

validates_attachment_content_type :pic, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  def self.search(query)
    # where(:title, query) 
    where("title like ?", "%#{query}%") 
  end

end
