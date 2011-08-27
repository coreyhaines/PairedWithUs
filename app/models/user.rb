class User < ActiveRecord::Base
  include Gravtastic
  is_gravtastic secure: false, size: 80, default: "identicon"

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :token_authenticatable

  has_many :pairing_sessions, :foreign_key => :pair_1_id
end
