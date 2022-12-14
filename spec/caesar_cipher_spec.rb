require './caesar_cipher'

describe CaesarCipher do
  describe "#encrypt" do
    it "works with lowercase letters without wrapping from z-a" do
      cipher = CaesarCipher.new
      expect(cipher.encrypt("goodtime", 6)).to eql("muujzosk")
    end

    it "works with lowercase letters including wrapping from z-a" do
      cipher = CaesarCipher.new
      expect(cipher.encrypt("goodtime", 7)).to eql("nvvkaptj")
    end

    it "works with uppercase letters without wrapping from z-a" do
      cipher = CaesarCipher.new
      expect(cipher.encrypt("GOODTIME", 6)).to eql("MUUJZOSK")
    end

    it "works with uppercase letters including wrapping from z-a" do
      cipher = CaesarCipher.new
      expect(cipher.encrypt("GOODTIME", 7)).to eql("NVVKAPTJ")
    end

    it "works with both uppercase and lowercase letters including wrapping from z-a" do
      cipher = CaesarCipher.new
      expect(cipher.encrypt("What a good time", 6)).to eql("Cngz g muuj zosk")
    end

    it "works with non-alphabet characters" do
      cipher = CaesarCipher.new
      expect(cipher.encrypt("What a good time!", 6)).to eql("Cngz g muuj zosk!")
    end
  end
end