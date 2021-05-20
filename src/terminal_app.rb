welcome = "Welcome reader.\n"

welcome.each_char do |char|
    putc char
    $stdout.flush
    sleep 0.25
end

welcome_message = "You are about to set on a reading adventure. Where the story will take you depends solely on you.\n"

welcome_message.each_char do |char|
    putc char
    $stdout.flush
    sleep 0.05
end

print "Click enter to proceed."
