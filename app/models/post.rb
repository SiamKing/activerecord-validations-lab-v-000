class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    validate :clickbait?


    private

    def clickbait?
        if title
            bait = %w(Won't\ Believe Secret Guess)
            if bait.none? {|word| title.include?(word)} 
                errors.add(:title, "must be clickbait")
            end
        end
    end
end
