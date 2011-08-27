class User < ActiveRecord::Base
  has_many :pairing_sessions, :foreign_key => :pair_1_id

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :token_authenticatable
end
