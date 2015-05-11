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
    puts "This is the plain result #{puts @plain_result}"
    row_counter = 0
    col_counter = 0 

    until row_counter == size
      puts "I should be incrementing the row_counter"
      until col_counter == size
        puts "inside #{col_counter}"
        puts @plain_result[col_counter][row_counter]
        col_counter += 1   
      end
      row_counter += 1
    end

    # puts @plain_result[1][0]
    # ...
    # puts @plain_result[5][5]

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
p a.size
a.ciphertext
