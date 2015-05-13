class Crypto

  def initialize(plain_word)
    @plain_word = plain_word
    normalize_plaintext
    @len = @result.length
  end

  def normalize_ciphertext
  end

  def ciphertext
    plaintext_segments
    puts "This is the plain result #{ @plain_result}"
    row_counter = 0
    total_result = []
    # until row_counter == 3 
    #   col_counter = 0   # Reset the column counter.
    #   result = []       # The result for a single index in the array is stored here.

    #   until col_counter == 5
    #     puts "FUCL YOU! #{@plain_result[3][4]}"
    #     result << @plain_result[col_counter][row_counter]
    #     puts @plain_result[col_counter][row_counter]
    #     col_counter += 1   
    #   end
    #   row_counter += 1
    #   puts total_result
    #   total_result << result.join.scan(/.{1,#{size}}/)
    # end
    
    p size
    first  = 0
    second = 1 
    until first == 4
      second = 0 
      result = []
      # puts "Letters - > #{@plain_result[first][second]}"
      result << @plain_result[first][second]
      p result
      first += 1
    end

    first = 0 

    until first == 4
      second = 1 
      result = []
      # puts "Letters - > #{@plain_result[first][second]}"
      result << @plain_result[first][second]
      puts result
      first += 1
    end

    first = 0 

    until first == 4
      second = 2 
      result = []
      # puts "Letters - > #{@plain_result[first][second]}"
      result << @plain_result[first][second]
      p result
      first += 1
    end

    # p @plain_result
    # p @plain_result[0][0]
    # p @plain_result[1][0]
    # p @plain_result[2][0]
    # p @plain_result[3][0]
    # p @plain_result[0][1]
    # p @plain_result[1][1]
    # p @plain_result[2][1]
    # p @plain_result[3][1]
    # p @plain_result[0][2]
    # p @plain_result[1][2]
    # p @plain_result[2][2]
    # p @plain_result[3][2]
    # p @plain_result[0][3]
    # p @plain_result[1][3]
    # p @plain_result[2][3]
    # p @plain_result[3][3]
    # p @plain_result[0][4]
    # p @plain_result[1][4]
    # p @plain_result[2][4]
    # p @plain_result[3][4]
    total_result.flatten.join
  end

  def plaintext_segments
    col_counter = 0
    row_counter = 0
    row_characters = size
    plain_rows = []
    
    until col_counter == row_characters * row_characters
      plain_rows << @result[col_counter]
      col_counter += 1 
    end
    plain_rows
    @plain_result = plain_rows.join.scan(/.{1,#{row_characters}}/)
  end

# private

  def normalize_plaintext
    @result = @plain_word.downcase.gsub(/\W/, "")
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

a = Crypto.new('Vampires are people too!')
# p a.plaintext_segments
 a.ciphertext