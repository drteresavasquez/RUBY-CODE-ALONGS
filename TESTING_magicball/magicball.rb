class Magicball
    ANSWERS = ["Outcome does not look likely", "Not now", "Your future is unclear"]
   
    def ask(question)
        raise "Question has invalid format." unless is_question_valid?(question)
        # .sample returns random
        ANSWERS.sample
    end

    private

    def is_question_valid?(question)
        question.is_a?String and question[-1] == "?"
    end


end