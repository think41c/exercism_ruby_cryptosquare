class Crypto

  def initialize(plain_word)
    @plain_word = plain_word
    normalize_plaintext
    @len = @result.length
  end

  def normalize_ciphertext
    cipher = ciphertext.join
    size_to_use = size - 1
    cipher.insert(size_to_use, " ")
    cipher.insert(size_to_use+size, " ")
    cipher.insert(size_to_use+size+size, " ")
    cipher.insert(size_to_use+size+size+size, " ")
  end

  def ciphertext
    plaintext_segments
    # puts "The plain result - #{puts @plain_result} and the size is -> #{size}"
    row_count = 0
    col_count = 0
    ciper_result = []
    letter_counter = 0
    total_array_result = []
    until letter_counter >= @len
      until row_count >= size
        ciper_result << @plain_result[row_count][col_count]
        row_count += 1
        letter_counter += 1
      end

      total_array_result << ciper_result.join.scan(/.{1,#{size}}/)
      xyz = ciper_result.join.scan(/.{1,#{size}}/)
      row_count = 0 
      col_count += 1 
      xyz
    end
    xyz.join
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

a = Crypto.new('We all know interspecies romance is weird.')
# a = Crypto.new('Vampires are people too!')
a.ciphertext
