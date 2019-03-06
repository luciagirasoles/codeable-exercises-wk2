# Write a simple regex to validate a username. Allowed characters are:

# lowercase letters,
# numbers,
# underscore
# Length should be between 4 and 16 characters (both included).

def validate_usr(username)
  pattern = '^[a-z|0-9|_]{4,16}$'
  return !!(username =~ /#{pattern}/)
end