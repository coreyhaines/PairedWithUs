class CreatePairingSessions < ActiveRecord::Migration
  def change
    create_table :pairing_sessions do |t|
      t.references :pair_1
      t.references :pair_2
      t.date :from
      t.date :to
      t.datetime :duration

      t.timestamps
    end
  end
end
