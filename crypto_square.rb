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
    # ciphertext
  end

  def ciphertext
    plaintext_segments
    # puts "This is the plain result #{puts @plain_result}"
    row_counter = 0
    col_counter = 0 
    total_result = []
    until row_counter == size
      col_counter = 0 
      result = []
      until col_counter == size
        p "Plain result -> #{@plain_result}"
        p "col_counter -> #{col_counter}"
        p "row_counter -> #{row_counter}"
        p "result -> #{result}"
        result << @plain_result[col_counter][row_counter]
        col_counter += 1   
      end
      row_counter += 1
      puts total_result
      total_result << result.join.scan(/.{1,#{size}}/)
    end
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
    p @plain_result
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
# Errors occur when text is the following lengths:
# 5, 6 10, 11 12, 17 , 18, 19 20, 
a = Crypto.new('0fsdafgdf0000')
p a.ciphertext
# p a.normalize_ciphertext