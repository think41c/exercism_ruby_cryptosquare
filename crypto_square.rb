class Crypto

  def initialize(plain_word)
    @plain_word = plain_word
    normalize_plaintext
    @len        = @result.length
    
  end

  def normalize_plaintext
    @result = @plain_word.downcase.gsub(/\W/, "")
  end

  def normalize_ciphertext
  end

  def plaintext_segments
  end

  def size
    square   = 1
    counter  = 2
    until counter >= @len
      square += 1
      counter = square * square
    end
    square
  end
end

a = Crypto.new("6789")
p a.size
