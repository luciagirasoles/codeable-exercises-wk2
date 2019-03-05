def abbrev_name(name)
  first_name, last_name = name.split(" ")
  result = "#{first_name[0].upcase}.#{last_name[0].upcase}"
end

puts abbrev_name("paulo tijero")