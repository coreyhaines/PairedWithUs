User.destroy_all

p1 = User.create email: "coreyhaines@example.com", name: "Corey"
p2 = User.create email: "sarahgray@example.com", name: "Sarah"

PairingSession.destroy_all

def new_session(from, duration, pair_1, pair_2)
  PairingSession.create pair_1: pair_1, pair_2: pair_2, from: from, duration: duration
end

new_session DateTime.now, 4, p1, p2
new_session 1.day.ago, 3, p1, p2
new_session 2.days.ago, 6, p1, p2
new_session 3.days.ago, 6, p2, p1
