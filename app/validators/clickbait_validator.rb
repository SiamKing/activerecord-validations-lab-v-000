class ClickbaitValidator < ActiveModel::Validator
    def validate(record)
        # binding.pry
       bait = %w(Won't\ Believe Secret Guess)
       bait.any? {|word| record.title.include?(word)}
    end
end