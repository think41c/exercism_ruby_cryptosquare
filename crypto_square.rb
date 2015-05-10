class Crypto

  def initialize(x)
    @x = x
    normalize_plaintext
  end

  def normalize_plaintext
    result = @x.downcase.gsub(/\W/, "")
    @len = @x.length
  end

  def normalize_ciphertext
  end

  def plaintext_segments
  end

  def size
    counter = 1
    square  = 2
    until square >= @len
      counter += 1
      puts "counter #{counter}, square #{square}, len #{@len}"
      square = counter * counter
    end
    counter
  end
end

a = Crypto.new("6789")
p a.size
