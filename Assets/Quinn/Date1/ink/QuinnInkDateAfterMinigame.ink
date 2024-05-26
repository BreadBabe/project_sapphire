VAR charName = "Quinn"
VAR charEmotion = "Neutral"
VAR loveAmount = 0
VAR charSound = ""

Oh you're back, did you manage to find the book?
*[Yees, here it is]
    -> INTRODUCTION

== INTRODUCTION ==
Perfect, thank you! I'll definitely put this book to good use.
*[I hope so! A book about a toxic plant is something everyone could use.]
    ~HappyResponse()
    Hahah yes exactly! I apriciate your sense of humor.
    ->BABIES()
*[That's nice]
    ~AnnoyedResponse()
    Right.
    **[Anyways did you find someting?]
        ~SmileResponse()
        Yes I find a book about another plant too.
        ->BABIES()
    **[...]
        ~HappyResponse()
        Anyways I also found a book, but it was about another plant.
        ->BABIES()
 *[GO TO END]
    ->END()

== BABIES ==
*[Nice]
    I should think about going home now
    **[Already?]
        ~NeutralResponse()  
        My babies wont get feed by themselfs
        ***[Babies?]
            ~HappyResponse()
                Yes my plants?
                ****[Ahaa...]
                        ->BYE()
        ***[Okay?]
                What do you mean by that?
                ****[What do you mean by babies?]
                        Yes my plants?
                        *****[Right...]
                                ->BYE()
                ****[Nothing]
                    By babies I mean my plants
                    *****[Ohhh now I understand]
                                ->BYE()
    **[Okay]
        ~HappyResponse()
            I need to go home and read the book
        ***[Yes, I hope it gives you some use]
                Thanks, I think it will. I am very interested in euphorbias so I am excited.
                ****[Okay!]
                        ->BYE()
                
        ***[Okay]
                ~HappyResponse()
                I also need to feed my babies
                ****[Babies?]
                        ~ContentResponse() //Suprised could work if i had it
                        Yes my plants of course.
                        *****[Ahaaa...]
                            ->BYE()
                ****[What?]
                        ~ConfusedResponse()
                        What don't you understand?
                        *****[What do you mean with babies?]
                                My plants of course.
                            ******[That explaines it]
                                    ->BYE()
    **[That was a fast date]
        ~NeutralResponse()
        Yes but thank you for helping me find the book.
            ***[No danger]
                    ~SmileResponse()
                    Now I need to go home and feed my babies, or I mean my plants.
                ****[Hahah okay]
                            ~SmileResponse()
                            -> BYE()
            ***[...]
                    ~SmileResponse()
                    Anyways, time to go home to my plants.
                    *****[Okay]
                            -> BYE()

== BYE ==
I hope that we will se eachother some day.
    ~SmileResponse()
    *[Absolutely]
    Have a nice day.
    **[I will]
        ~ContentResponse()
        Ehhh... okay
            ***[You too]
                ~HappyResponse()
                There you go. Time to heead home!
                    ****[Bye]
                        -> END
            ***[Hahahah]
                ~SmileResponse()
                Anyways, bye.
                    ****[Bye]
                        -> END


=== function HappyResponse ===
        ~ charEmotion = "Happy"
        ~ charSound=""
        
=== function SadResponse ===
        ~ charEmotion = "Sad"
        ~ charSound=""
        
=== function NeutralResponse===
        ~ charEmotion="Neutral"
        ~ charSound=""
        
=== function MadResponse ====
        ~charEmotion="Mad"
        ~charSound=""
        
=== function AnnoyedResponse ====
        ~charEmotion="Annoyed"
        ~charSound=""
        
=== function ContentResponse ====
        ~charEmotion="Content"
        ~charSound=""
        
=== function SmileResponse ====
        ~charEmotion="Smile"
        ~charSound=""
        
=== function ConfusedResponse ====
        ~charEmotion="Confused"
        ~charSound=""
        
=== function BlushResponse ====
        ~charEmotion="Blush"
        ~charSound=""
        
=== function NoNoah ====
    ~charEmotion="Empty"
    ~charSound=""    
