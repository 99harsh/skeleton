=begin
Coding challenge:
Given a list of numbers and a number k, return whether any two numbers from the list add up to k.
For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.
=end

class CodeKata2
    def self.adds_up_to_k(list, k)
        list.combination(2).to_a.map{ |a| a.reduce(0, :+)}.uniq.include? k
    end
end