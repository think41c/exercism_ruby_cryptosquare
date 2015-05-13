class Crypto

  def initialize(plain_word)
    @plain_word = plain_word
    normalize_plaintext
    @len = @result.length
  end

  def normalize_ciphertext
  end

  def ciphertext
    corrected = []
    plaintext_segments
    puts "This is the plain result #{ @plain_result}"
    row_counter = 0
    total_result = []
 
    first  = 0
    until first == 4
      second = 0 
      result = []
      result << @plain_result[first][second]
      p result
      first += 1
    end

    first = 0 

    until first == 4
      second = 1 
      result = []
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

    first = 0

    until first == 4
      second = 3 
      result = []
      result << @plain_result[first][second]
      p result 
      first += 1
      total_result << result.join.scan(/.{1,4}/)
      p total_result.flatten(4)
    end
    corrected << total_result.flatten.join.scan(/.{1,4}/)
    corrected = corrected.flatten
    p corrected


    first = 0
    
    until first == 4
      second = 4
      result = []
      result << @plain_result[first][second]
      p result 
      first += 1
      total_result << result.join.scan(/.{1,4}/)
      p total_result.flatten(4)
    end
    corrected << total_result.flatten.join.scan(/.{1,4}/)
    corrected = corrected.flatten
    p corrected
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
 a.ciphertext


 ###### Example of the pattern I need to pull 
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