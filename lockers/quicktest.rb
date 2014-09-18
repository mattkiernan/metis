lockers = []

lockers <<(1..100).each {|locker| {locker_number: locker, locker_state: "closed"}}

puts lockers