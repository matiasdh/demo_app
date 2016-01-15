class User < ActiveRecord::Base
  validates :email,     presence: true, uniqueness: true
  validates :birthdate, presence: true
  validates :gender,    presence: true

  enum gender: %w(male female)

  has_many :posts

  def karma
    posts.count / 10
  end
end
