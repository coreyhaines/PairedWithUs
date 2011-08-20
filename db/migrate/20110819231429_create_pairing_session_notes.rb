class CreatePairingSessionNotes < ActiveRecord::Migration
  def change
    create_table :pairing_session_notes do |t|
      t.references :pairing_session
      t.string :content

      t.timestamps
    end
  end
end
