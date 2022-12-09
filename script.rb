table = {
  a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8, i: 9, j: 10, k: 11, l: 12, m: 13, n: 14, o: 15, p: 16, q: 17, r: 18, s: 19, t: 20, u: 21, v: 22, w: 23, x: 24, y: 25, z: 26,
  A: 101, B: 102, C: 103, D: 104, E: 105, F: 106, G: 107, H: 108, I: 109, J: 110, K: 111, L: 112, M: 113, N: 114, O: 115, P: 116, Q: 117, R: 118, S: 119, T: 120, U: 121, V: 122,
  W: 123, X: 124, Y: 125, Z: 126
}

def input_convert_characters(string, table)
  string.split(//).map { |character| table[character.to_sym] }
end

def offset_integers(converted_characters, offset)
  converted_characters.map { |num| num + offset }
end

def rollover_integers(array)
  array.map do|num| 
    if (num > 26 && num < 100) || (num > 126)
      num % 26
    else num
    end
  end
end

def output_convert_integers(rolled_over_integers, table)
  character_array = rolled_over_integers.map { |num| table.invert.fetch(num) }
  character_array.join()
end

def caesar_cipher(string, offset, table)
  split_string = input_convert_characters(string, table)
  offset_array = offset_integers(split_string, offset)
  converted_string = rollover_integers(offset_array)
  output_convert_integers(converted_string, table)
end 

# p input_convert_characters("Caesar", table)
# p offset_integers([103, 1, 5, 19, 1, 18], 4)
# p rollover_integers([129, 26, 34, 29, 25, 22])
# p output_convert_integers([103, 26, 8, 3, 25, 22], table)
# p caesar_cipher("CaesaR", 20, table)
p caesar_cipher("Caesar", 1, table)
