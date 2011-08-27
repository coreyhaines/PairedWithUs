class PairingSession < ActiveRecord::Base
  belongs_to :pair_1, :foreign_key => :pair_1_id, :class_name => "User"
  belongs_to :pair_2, :foreign_key => :pair_2_id, :class_name => "User"
  has_many :notes, :class_name => "PairingSessionNote"

  def self.with_users
    all(:include => [:pair_1, :pair_2], :order => "start")
  end
end
