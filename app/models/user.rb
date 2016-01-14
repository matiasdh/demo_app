class User < ActiveRecord::Base
  validates :email,     presence: true, uniqueness: true
  validates :birthdate, presence: true
  validates :gender,    presence: true

  enum gender: %w(male female)

  def karma
    0
  end
end
