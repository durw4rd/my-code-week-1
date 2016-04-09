require './contacts_file.rb'

def index(contacts)
  puts
  contacts.each_with_index do |contact, i|
    puts "#{i+1}) #{contact[:name]}"
  end
  puts
end

def show(contact)
  puts
  puts "Name: #{contact[:name]}"
  puts "phone: #{contact[:phone]}"
  puts "mail: #{contact[:email]}"
  puts
end

def ask(prompt)
  print prompt
  gets.chomp
end

def create_new_contact
  contact = {}

  puts
  puts "Enter the details."

  contact[:name] = ask "Name: "
  contact[:phone] = ask "Phone: "
  contact[:email] = ask "Email: "

  contact
end

def action_new(contacts)
  contact = create_new_contact

  contacts << contact

  write_contacts(contacts)

  puts
  puts "New contact added:"
  puts

  show(contact)
  puts
end

def delete_contact(contacts)
  puts
  response = ask "Which contact to delete? "

  i = response.to_i

  deleted_contact = contacts.delete_at(i-1)

  puts
  puts "Contact for #{deleted_contact[:name]} deleted!"

  write_contacts(contacts)
end

def action_show(contacts, i)
  contact = contacts[i-1]

  show(contact)
end

def action_error
  puts
  puts "Sorry, unknown command."
  puts
end

def search(contacts)
  puts
  pattern = ask "Search for? "
  puts

  contacts.each do |contact|
    if contact[:name] =~ /\b#{pattern}/i
      show(contact)
      puts
    end
  end
end


loop do
  contacts = read_contacts

  index(contacts)

  response = ask "Pick a number ('n' for new, 'd' for delete, 's' for search, 'q' to quit): "

  break if response == "q"

    if response == "n"
      action_new(contacts)
    elsif response == "d"
      delete_contact(contacts)
    elsif response == "s"
      search(contacts)
    elsif response =~ /[0-9]+/
      # # if response == contacts[i-1]
      action_show(contacts, response.to_i)
      # # else
      # #   action_error
      # end
    else
      action_error
    end
end

puts "Bye!"
puts
