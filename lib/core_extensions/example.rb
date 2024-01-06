# class Integer
#   alias_method :original_to_s, :to_s

#   def to_s
#     "_#{original_to_s}_"
#   end
# end

# p a = 1.to_s
# p b = 2.to_s
# p (a + b).to_i

# class DateTime
#   def sunday?
#     false
#   end

#   def weekend?
#     sunday? || saturday?
#   end
# end

# class Dog
#   def speak
#     'GO GO GO'
#   end
# end

# class Dog
#   def is_swimming?
#     true
#   end

#   def speak
#     'Meow'
#   end
# end
