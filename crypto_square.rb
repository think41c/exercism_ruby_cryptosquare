class Crypto

  def initialize(x)
    @x = x
  end

  def normalize_plaintext
    result = @x.downcase.gsub(/\W/, "")
  end

  def normalize_ciphertext
  end

  def plaintext_segments
  end

  def size
    size = 0 
    a = Math.sqrt(@x)
    if a % 1 == 0
      size = a.round
    else
      size = a.round + 1 
    end
    size
  end
end

# a = Crypto.new(10)
