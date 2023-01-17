class Recipe < ApplicationRecord
  
  has_many :bookmarks, dependent: :destroy
  has_many :recipe_comments, dependent: :destroy
  
  has_one_attached :image
  
  def bookmarked_by?(user)
    bookmarks.where(user_id: user).exists?
  end
  
end
