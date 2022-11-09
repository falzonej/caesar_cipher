upper_case_table = {
  A: 1, B: 2, C: 3, D: 4, E: 5, F: 6, G: 7, H: 8, I: 9, J: 10, K: 11, L: 12, M: 13, N: 14, O: 15, P: 16, Q: 17, R: 18, S: 19, T: 20, U: 21, V: 22, W: 23, X: 24, Y: 25, Z: 26
}

table = {
  a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8, i: 9, j: 10, k: 11, l: 12, m: 13, n: 14, o: 15, p: 16, q: 17, r: 18, s: 19, t: 20, u: 21, v: 22, w: 23, x: 24, y: 25, z: 26
}

test_string = "caesar"
#ask what class String does in code review
class String
  def is_upcase?
    self == self.upcase
  end

  def is_lower?
    self == self.downcase
  end
end

p phase_1_test_string = test_string.split("")
p phase_2_test_string = phase_1_test_string.collect{ |x| table[x] }

#current plan is to set a conditional inside the collect method for whether the letter being iterated on is up or low case and should plug it in to the appropriate table upon that info, then we will add a check for 
#when the number found inside the hashes is greater than 26 which will take any number greater than 26 that came from the cipher offset causing the number to roll over
#and subtract 26 from it to get a number that can be accurately used for the next cipher number 