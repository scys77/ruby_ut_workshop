module RubyUtWorkshop
  class Comparator

    def compare(answer, guess)
      a_count, b_count = 0, 0
      guess.each_char.with_index do |num, index|
        if answer[index] == num
          a_count += 1
        elsif answer.include? num
          b_count += 1
        end
      end
      "#{a_count}A#{b_count}B"
    end

  end
end
