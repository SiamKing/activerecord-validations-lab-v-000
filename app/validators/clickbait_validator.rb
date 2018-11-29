class ClickbaitValidator < ActiveModel::Validator
    def validate(record)
       if record.title
            bait = %w(Won't\ Believe Secret Guess)
            if bait.none? {|word| record.title.include?(word)} 
                record.errors.add(:title, "must be clickbait")
            end
        end
    end
end