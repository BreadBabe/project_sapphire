VAR charName = "Quinn"
VAR charEmotion = "Neutral"
VAR loveAmount = 0
VAR charSound = ""

Hi , I'm Quinn!!
*[!!!]
    -> INTRODUCTION

== INTRODUCTION ==
Are you my date??
*[Yes!]
    ~HappyResponse()
    Nice to meet you! Have you been here before?
    ->BeenBefore()
*[I suppose I am]
    ~AnnoyedResponse()
    You don't even know who you are? Well that's disapointing.
    **[I mean, yes I am]
        ~SmileResponse()
        Alright if you say so... Have you been here before?
        ->BeenBefore()
    **[Does anybody really know who they are?]
        ~HappyResponse()
        Haha i guess you have a point! Have you been to the bookstore before?
        ->BeenBefore()
*[um...sure]
    ~ConfusedResponse()
    What do you even mean by that?
    **[Sorry, I did'nt mean it like that, nice to meet you]
        ~NeutralResponse()
         Well then. Welcome to my favorite place, the bookstore!
        ***[Thanks]
            ~SmileResponse()
            Have You been here before?
            ->BeenBefore()
        ***[Okay, thanks?]
            ~NeutralResponse()
            Have you been here before?
            ->BeenBefore()
    **[Nothing, nice to meet you]
        ~AnnoyedResponse()
        Nice to meet you to! Welcome to my favorite place, the bookstore. 
        ***[Thanks]
            I suppose that you're not here that often. Or have you been here before?
            -> BeenBefore()
 *[GO TO END]
    ->END()

== BeenBefore ==
*[Yes I have]
    Really? Are you lying?
    **[No?]
        ~NeutralResponse()  
        Well good for you! I have never seen you here before.
        ***[Okay]
            ~HappyResponse()
                Can you help me find a book?
                ****[Is that the only reason that we are here?]
                        ->REASON()
        ***[...]
                Anyways...
                ****[...]
                        Can you help me find a book?
                        *****[Is that the only reason that we are here?]
                                ->REASON()
                ****[Why are we at the bookstore?]
                    I was hoping that you could help me find a book.
                    *****[Is that the only reason that we are here?]
                                ->REASON()
    **[Maybe]
        ~HappyResponse()
            Hahah your'e funny!
        ***[Thanks!]
                Can you help me find a book?
                ****[Is that the only reason that we are here?]
                        ->REASON()
                
        ***[I know]
                ~HappyResponse()
                Hahahahah
                ****[So what are we doing at the bookstore?]
                        ~ContentResponse() //Suprised could work if i had it
                        I need help to find a book
                        *****[Okay, is that the only reason why we are here?]
                            ->REASON()
                ****[How are you today?]
                        ~ConfusedResponse()
                        Great I am always happy at the bookstore
                        *****[Nice, what are we doing here?]
                                I need help to find a book!
                            ******[Is that the only reason that we are here?]
                                    ->REASON()
                        *****[Great!]
                                I need some help to find a book!
                            ******[Is that the only reason that we are here?]
                                    ->REASON()
        ***[I guess]
            ~HappyResponse()
            Ehhh okay
                ****[Anyways what are we doing here?]
                        ~ContentResponse()
                        I need help to find a book.
                        *****[Is that the only reason why we are here?]
                            ~HappyResponse()
                            -> REASON()
                ****[You are also funny!]
                        ~ContentResponse()
                         Thanks hahah I was waiting for you to say that. Can you help me find a book?
                         *****[Is that the only reason why we are here?]
                            ~SmileResponse()
                            -> REASON()
    **[Yes I am]
        ~NeutralResponse()
        Okay thats weird.
            ***[Sorry my bad]
                    ~SmileResponse()
                    Right, can you maybe help me find a book?
                ****[Is that the only reason why we are here?]
                            ~SmileResponse()
                            -> REASON()
            ***[Anyways]
                    ~SmileResponse()
                    Can you help me find a book?
                    *****[Is that the only reason why we are here?]
                            -> REASON()

== REASON ==
Kinda but I also wanted you to meet me here and get to know eachother
    ~SmileResponse()
    *[Alright]
    I need a book about euphorbias.
    **[Isn't that plant toxic?]
        ~ContentResponse()
        Maybe that's exactly why I need a book about it
            ***[What did you say?]
                ~HappyResponse()
                Ehhhh.. It is only toxic if you consume it.
                    ****[Okay good point]
                        ~SmileResponse()
                        Right! I have alot of plants at home so I need to know things like that.
                        -> KNOWTHINGS()
                    ****[Right]
                        ~SmileResponse()
                        Anyways, I have alot of plants at home.
                            *****[Okay?]
                                So that's why I need to know things like that.
                                    ->KNOWTHINGS()
            ***[Hahahah suspious]
                ~SmileResponse()
                Nothing weird going on, I just love plants so I need to know things like that.
                    ->KNOWTHINGS()

== KNOWTHINGS ==
//Intended for conversation about being a bartender
    *[Good point.]
        Do you like plants?
        **[I don't know, a little maybe]
            ~HappyResponse()
            Nice, I will make you love plants more. Just wait.
                ***[Hahahah, how many plants do you have?]
                    ~ContentResponse()
                    Many but I need many more.
                        ****[Hahahah okay]
                            ~SmileResponse()
                            heh.
                            *****[Well]
                                -> WEIRD()
                        ****[Right?]
                            ->WEIRD()
                ***[Okay?]
                    ->WEIRD()
        **[Yes alot]
            Hope you don't copy all of my interests
                ***[You don't have to worry about that]
                        ->WEIRD()
                ***[We will see about that haha]
                    ->WEIRD()
    *[Okay]
        ...
        **[Do you have many plants?]
            Yes and I love all of them
            ***[Cool i guess]
                ->WEIRD()
        **[Anyways]
                ->WEIRD()

== WEIRD ==
Shall we maybe try to start to find the book?
*[Sure]
    ~SmileResponse()
    If you don't like it here the you can leave.
    **[Mhm..]
        ~ContentResponse()
        I can look for the book myself
        ***[I will help you don't worry]
                    ->END
    **[No sorry]
        ~HappyResponse()
        Okay then, you wanna help me?
        ***[Yes I will help you don't worry]
                    ->END
    **[Okay]
        ~SmileResponse()
        You're kidding right?
        ***[Yes, of course. Ii will help you find the book.]
        ->END

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
