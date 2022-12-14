require 'pry-byebug'

# Caesar Cipher
# Takes a word or phrase and shifts it a certain number of letters
# ASCII chars:
#  A = 65, Z = 90
#  a = 97, z = 122

def caesar_cipher (str, shift)
  codes_shift = str.chars.map do |c|
    c = c.ord
    if c.between?(65, 90)
      c += shift
      if c - 90 > 0
        c = c - 26
      end
    elsif c.between?(97, 122)
      c += shift
      if c - 122 > 0
        c = c - 26
      end
    end
    c.chr
  end

  codes_shift.join()
end

p caesar_cipher("What a good time!", 6)
p caesar_cipher("What a string!", 5)