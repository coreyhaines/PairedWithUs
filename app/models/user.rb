class User < ActiveRecord::Base
  has_many :pairing_sessions, :foreign_key => :pair_1_id
end
