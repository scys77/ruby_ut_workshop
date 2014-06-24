module RubyUtWorkshop

  class Guesser

    def guess!(guess)
      Comparator.new.compare(answer, guess)
    end

    def answer
      @answer ||= Generator.new.generate
    end

  end

end

