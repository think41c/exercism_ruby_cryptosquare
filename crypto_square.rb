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
  end

end

