def chime &action
  chime_times = Time.new.hour%12
  if chime_times == 0
    chime_times = 12
  end
  chime_times.times do
    action.call
  end
end

chime do
  puts 'DONG!'
end
