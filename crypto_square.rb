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
    plaintext_segments
    puts "This is the plain result #{@plain_result}"
    puts @plain_result[0][0]
    puts @plain_result[1][0]
    # ...
    puts @plain_result[4][5]
    # Result should be -> "tasneyinicdsmiohooelntuillibsuuml"
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
    @plain_result = plain_rows.join.scan(/.{1,#{row_characters}}/)
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

a = Crypto.new('Time is an illusion. Lunchtime doubly so.')
# puts a.plaintext_segments
a.ciphertext
# Should be - tasneyinicdsmiohooelntuillibsuuml
