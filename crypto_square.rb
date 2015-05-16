class Crypto

  def initialize(plain_word)
    @plain_word = plain_word
    normalize_plaintext
    @len = @result.length
  end

  def normalize_ciphertext
    cipher = ciphertext
    size_to_use = size - 1
    cipher.insert(size_to_use, " ")
    cipher.insert(size_to_use+size, " ")
    cipher.insert(size_to_use+size+size, " ")
    cipher.insert(size_to_use+size+size+size, " ")
  end

  def ciphertext
    plaintext_segments
    total_array_result = []
    ciper_result = []
    new_size = size - 1
    row_char = 0
    col_char = 0 
    x        = 0
    until x == size * size
      if @plain_result[row_char].nil? 
        row_char = 0 
        col_char += 1 
      end  
      ciper_result << @plain_result[row_char][col_char]
      row_char += 1
      x += 1
    end
      total_array_result << ciper_result.join.scan(/.{1,#{new_size}}/)
      xyz = ciper_result.join.scan(/.{1,#{new_size}}/)
      xyz = xyz.join
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
p a.ciphertext
