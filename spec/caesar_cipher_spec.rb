require './caesar_cipher'

describe CaesarCipher do
  describe "#encrypt" do
    it "encrypts lowercase letters without wrapping from z-a" do
      cipher = CaesarCipher.new
      expect(cipher.encrypt("goodtime", 6)).to eql("muujzosk")
    end

    it "encrypts lowercase letters including wrapping from z-a" do
      cipher = CaesarCipher.new
      expect(cipher.encrypt("goodtime", 7)).to eql("nvvkaptl")
    end

    it "encrypts uppercase letters without wrapping from z-a" do
      cipher = CaesarCipher.new
      expect(cipher.encrypt("GOODTIME", 6)).to eql("MUUJZOSK")
    end

    it "encrypts uppercase letters including wrapping from z-a" do
      cipher = CaesarCipher.new
      expect(cipher.encrypt("GOODTIME", 7)).to eql("NVVKAPTL")
    end

    it "encrypts both uppercase and lowercase letters including wrapping from z-a" do
      cipher = CaesarCipher.new
      expect(cipher.encrypt("What a good time", 6)).to eql("Cngz g muuj zosk")
    end

    it "encrypts non-alphabet characters" do
      cipher = CaesarCipher.new
      expect(cipher.encrypt("What a good time!", 6)).to eql("Cngz g muuj zosk!")
    end

    it "encrypts using a large positive shift" do
      cipher = CaesarCipher.new
      expect(cipher.encrypt("What a good time!", 66)).to eql("Kvoh o uccr hwas!")
    end

    it "encrypts using a large negative shift" do
      cipher = CaesarCipher.new
      expect(cipher.encrypt("What a good time!", -66)).to eql("Itmf m saap fuyq!")
    end
  end
end