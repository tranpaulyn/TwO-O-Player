class Question
    attr_accessor :question, :answer

    def self.question
        @number1 = rand 20
        @number2 = rand 20
        return "What does #{@number1} plus #{@number2} equal?"
    end
    
    def self.answer
        return @number1 + @number2
    end
end