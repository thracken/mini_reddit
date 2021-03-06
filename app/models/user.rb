class User < ActiveRecord::Base
  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  before_save { self.email = self.email.downcase }
  validates :username, presence: true, length: {minimum: 4, maximum: 30}, uniqueness: true
  validates :email, presence: true, length: {maximum: 255}, format: {with: EMAIL_REGEX}, uniqueness: {case_sensitive: false, case_sensitive: false}
  validates :password, presence: true, length: {minimum: 8}
  has_many :posts
  has_many :comments
end
