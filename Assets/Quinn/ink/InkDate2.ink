VAR charName = "Quinn"
VAR charEmotion = "Neutral"
VAR loveAmount = 0

Oh you're back, did you manage to find the book?
    *[Yes, here it is!]
    ~ SmileResponse()
        Thank you, I'll definitely put this book to good use.
        ** [I hope so! A book about toxic plants is something everyone could use,   right? Hahah]
            ~ HappyResponse()
                Hahah yes exactly! I appreciate your sense of humor!
        ** [Just a question, why do you need a book about Euphorbia?]
            Ehhh...
            ***[Isn't that plant toxic for humans?]
            ~ AnnoyedResponse()
                "Well, perhaps that's precisely why I need it."
                **** [Sorry what did you say?]
                    "Ehhh... It's not toxic if you don't consume it."
                    ***** [Okay that's good to know!]
                    ~ SmileResponse()
                        It was kinda nice seeing you! I really need to go home and water my plants now! They tend to be a little grumpy if     they dosen't get the water that they need
                        ****** [Well okay, bye see you next time I hope!]
                    ***** [...alright then.]
                    ~ AnnoyedResponse()
                        I really need to go home and water my plants now!
                        ****** [Well okay, bye see you next time!]
                **** [Hahah okay that's suspicious]
                    "It was kinda nice seeing you! I really need to go home and water my plants now!"
                        ***** [Well okay, bye see you next time I hope!]
    *[Mhm]
    ~ AnnoyedResponse()
        "Ehhh.. Well I have a Euphorbia at home so I need some factual information about it so thank you."
        ** [Everybody needs a book about a toxic plant]
        ~ SmileResponse()
            "...exactly heheh!"
            *** [You don't want to be poisoned by some random person! Hahah]
                "Right hahah!"
                **** [Do you have any other plants?]
                    ~ HappyResponse()
                    "Oh yes! My apartment is like a big flower shop, I love it!"
                    ***** [That's nice I guess. I hope that not all of them are toxic Hahah]
                        "Hahah I appreciate your sense of humor! I really need to go home now but I hope we can see each other some other day!"
                        ****** [Okay, bye!]
        ** [That's fair! Do you have any other plants at home?]
        "Yes! I have a lot of plants! My apartment is like a big flower shop!"
            *** [That's nice! I hope that not all of them are toxic Hahah]
                "Hahah I appreciate your sense of humor! I really need to go home now but I hope we can see each other some other day!"
            *** [I also like plants!]
                "Sure, take my interests from me if you really need that."
                **** [I did not mean it like that, I am very sorry]
                "Sure, I need to head home now and water my plants, see you some day!"
        ** [But isn't that plant toxic for humans.]
        ~ AnnoyedResponse()
            "Maybe that's exactly why I have it."
            *** [Sorry what did you say?]
                "It's not toxic if you don't consume it."
                **** [Okay that's good to know!]
                    "It was kinda nice seeing you! I really need to go home and water my plants now!"
                    ***** [Well okay, bye see you next time I hope!]
                **** [...alright then.]
                    "I really need to go home and water my plants now!"
                    ***** [Well okay, bye see you next time!]
            *** [Hahah okay that's suspicious]
                "It was kinda nice seeing you! I really need to go home and water my plants now and read this book!"
                **** [Well okay, bye see you next time I hope!]

- Help Quinn look around for the book.
    -> END

=== function SmileResponse ===
~ loveAmount += 5
~ charEmotion = "Smile"

=== function HappyResponse ===
~ loveAmount++
~ charEmotion = "Happy"

=== function AnnoyedResponse ===
~ loveAmount--
~ charEmotion = "Annoyed"

=== function NegativeResponse ===
~ loveAmount--
~ charEmotion = "Angry"

