class Topic < ApplicationRecord
  
  def index
    @topics = Topic.all
  end  
  
  def new
    @topic = Topic.new
  end
  
  validates :user_id, presence: true
  validates :description, presence: true
  validates :image, presence: true
  
  belongs_to :user 
  
  mount_uploader :image, ImageUploader
  
  has_many :favorites
  has_many :favorite_users, through: :favorites, source: 'user'
end
