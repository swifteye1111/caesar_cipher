require './caesar_cipher'

describe "#caesar_cipher" do
  it "works with both uppercase and lowercase letters" do
    expect(caesar_cipher("goodtime", 6)).to eql("muujzosk")
  end

  it "works with non-alphabet characters" do
    expect(caesar_cipher("What a good time!", 6)).to eql("Cngz g muuj zosk!")
  end
end