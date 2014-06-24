module RubyUtWorkshop

  class Generator

    def generate
      numbers = (0..9).to_a
      4.times.inject('') do |answer, n|
        index = n == 0 ? rand(1..9) : rand(10 - n)
        answer << numbers.delete_at(index).to_s
      end
    end

  end

end
