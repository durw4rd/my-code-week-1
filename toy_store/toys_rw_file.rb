require 'json'

def read_items
  json = File.read('toys.json')
  array = JSON.parse(json, {:symbolize_names => true})
end

def write_items(toys)
  File.open("toys.json", "w") do |f|
    json = JSON.pretty_generate(toys)
    f.write(json)
  end
end
