class Post < ApplicationRecord
    CLICBAIT = ["Won't Believe","Secret","Guess"]
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: ["Fiction","Non-Fiction"]
    #validate  :is_clickbait #, message: {"clickbait"}
    validates :title, exlusion: { in: ["Won't Believe","Secret","Guess"], message: "too clickbaity"}
    

    # def is_clickbait
    #    found = CLICBAIT.filter{ |e| title == e}
    #    if found
    #     errors.add(:title,"clickbait")
    #    end

    # end
end
