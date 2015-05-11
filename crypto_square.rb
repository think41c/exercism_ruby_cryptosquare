class Crypto

  def initialize(plain_word)
    @plain_word = plain_word
    normalize_plaintext
    @len = @result.length
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
    total_result = []
    until row_counter == size
      puts "I should be incrementing the row_counter"
      
      puts "here! #{total_result}"
      
      col_counter = 0 
      result = []
      until col_counter == size
        # puts "inside #{col_counter}"
        result << @plain_result[col_counter][row_counter]
        col_counter += 1   
      end
      row_counter += 1
      puts total_result
      total_result << result.join.scan(/.{1,#{size}}/)
    end
    total_result
  end

  def plaintext_segments
    col_counter = 0
    row_counter = 0
    row_characters = size
    plain_rows = []
    # puts "The row chars - #{row_characters}. Lenght of word #{@len} - #{normalize_plaintext}"
    
    if   
      until col_counter == row_characters * row_characters
        plain_rows << @result[col_counter]
        col_counter += 1 
      end
      plain_rows
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
# p a.size
p a.ciphertext
