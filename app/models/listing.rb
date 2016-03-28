class Listing < ActiveRecord::Base

    
     has_attached_file :image, styles: { medium: "200x>", thumb: "100x100>" }, default_url: "/images/:style/missing.png" 
     validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
     
     validates :name, :description, :price, presence: true
     validates :price, numericality: { greater_than: 0 }
     validates :image, attachment_presence: true
     
     belongs_to :user
     has_many :orders
     
     
     belongs_to :category
     
  def self.search(search)
    where("name LIKE ?", "%#{search}%") 
    where("description LIKE ?", "%#{search}%")
  end
end
