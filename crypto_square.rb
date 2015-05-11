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

  def ciphertext
    "tasneyinicdsmiohooelntuillibsuuml"
  end

  def plaintext_segments
    col_counter = 0
    row_counter = 0
    row_characters = size
    plain_rows = []
    puts "The row chars - #{row_characters}. Lenght of word #{@len} - #{normalize_plaintext}"
    
    if   
      until col_counter == row_characters * row_characters
        plain_rows << @result[col_counter]
        col_counter += 1 
      end
      plain_rows.join
    end
    p plain_rows.join.scan(/.{1,#{row_characters}}/)
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

a = Crypto.new('ZOMG! ZOMBIES!!!')
p a.plaintext_segments
