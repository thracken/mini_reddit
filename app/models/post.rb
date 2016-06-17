class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :link, presence: true
  validates :user_id, presence: true
  belongs_to :user
  has_many :comments
end
