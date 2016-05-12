class User < ActiveRecord::Base
  has_many :events, dependent: :destroy
  has_many :tickets

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /.*@.*\..*/,
    message: "invalid email" }

end
