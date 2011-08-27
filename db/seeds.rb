User.destroy_all

p1 = User.create email: "coreyhaines@example.com", name: "Corey", password: "password"
p2 = User.create email: "sarahgray@example.com", name: "Sarah", password: "password"

PairingSession.destroy_all

def new_session(from, duration, pair_1, pair_2, *notes)
  p = PairingSession.create pair_1: pair_1, pair_2: pair_2, start: from, duration: duration
  notes.each do |note|
    p.notes << PairingSessionNote.new(content: note)
  end
end

new_session DateTime.now, 4, p1, p2, "this was great"
new_session 1.day.ago, 3, p1, p2, "what a great time", "love pairing"
new_session 2.days.ago, 6, p1, p2
new_session 3.days.ago, 6, p2, p1
