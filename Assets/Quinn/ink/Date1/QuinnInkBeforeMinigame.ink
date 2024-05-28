VAR charName = "Quinn"
VAR charEmotion = "Neutral"
VAR loveAmount = 0
VAR charSound = ""

Hey, I'm Quinn. I suppose you're my date?
    -> INTRODUCTION

== INTRODUCTION ==
*[What would make you think that?]
    ~HappyResponse()
    Well, if you take a look around, there's only two people here... And it's us. Statistically, you most likely are.
      **[Shoot, you got me.]
      That's what I thought, math never lies! It's nice to meet you! Have you ever been here before?
      ->BEENBEFORE()
      **[Statistically, I also couldn't be.]
      That's true. But I just saw our messages on your phone, so. It's nice to meet you! Have you ever been here before?
    ->BEENBEFORE()
*[I suppose I am!]
    ~AnnoyedResponse()
    You don't even know who you are? Well, that's slightly disappointing.
    **[Well I guess I am then!]
        ~SmileResponse()
        Alright, if you say so... Have you been here before?
        ->BEENBEFORE()
    **[Does anybody really know who they are?]
        ~HappyResponse()
        I guess you have a point! But at your age, I kind if think you should have at least some stuff figured out... Anyway, have you ever been here before?
        ->BEENBEFORE()
*[Um... Sure.]
    ~ConfusedResponse()
    What do you even mean by that? That was a easy yes or no question.
    **[Sorry, I didn't mean it like that, nice to meet you.]
        ~NeutralResponse()
         Well then. Welcome to my favorite place, the bookstore! I spend way more time here then I would ever admit. But now I somehow did..
        ***[Thanks]
            ~SmileResponse()
            Have You been here before?
            ->BEENBEFORE()
        ***[Okay, thanks?]
            ~NeutralResponse()
            Have you been here before?
            ->BEENBEFORE()
    **[Nothing, nice to meet you]
        ~NeutralResponse()
        Nice to meet you to! Welcome to my favorite place, the bookstore.
        ***[Thanks]
            I suppose that you're not here that often. Or have you been here before?
            -> BEENBEFORE()
        ***[Is this really your favorite place?]
            Yes and? I suppose that you're not here that often. Or have you been here before?
            -> BEENBEFORE()

== BEENBEFORE ==
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
            Haha you're funny!
        ***[Thanks!]
                Can you help me find a book?
                ****[Is that the only reason that we are here?]
                        ->REASON()
        ***[I know]
                ~HappyResponse()
                Hahahahah
                ****[So what are we doing at the bookstore?]
                        ~NeutralResponse()
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
        ***[I guess.]
            ~HappyResponse()
            Okay?
                ****[Anyways what are we doing here?]
                        ~ContentResponse()
                        I need help to find a book, actually.
                        *****[Is that the only reason why we are here?]
                            ~HappyResponse()
                            -> REASON()
                ****[You are also funny!]
                        ~ContentResponse()
                         Thanks! I was waiting for you to say that. I actually think so as well. Can you help me find a book?
                         *****[Is that the only reason why we are here?]
                            ~SmileResponse()
                            -> REASON()
    **[Yes I am]
        ~NeutralResponse()
        Okay thats weird.
            ***[Sorry my bad]
                    Right, can you maybe help me find a book?
                ****[Is that the only reason why we are here?]
                            ~SmileResponse()
                            -> REASON()
            ***[Anyways]
                    ~SmileResponse()
                    Can you help me find a book?
                    *****[Is that the only reason why we are here?]
                            -> REASON()
*[No, I haven't]
    Then welcome! This is the place were I am the most happy!
    **[That is so nice!]
        ~NeutralResponse()  
        I am happy to introduce you to the bookstore! I really hope that you will like it here!
        ***[I also hope so]
            ~HappyResponse()
                Can you maybe help me find a book?
                ****[Is that the only reason that we are here?]
                        ->REASON()
        ***[We will see]
                Yees, I will try to make you like it here.
                ****[Thanks!]
                        Can you help me find a book?
                        *****[Is that the only reason that we are here?]
                                ->REASON()
                ****[Why are we at the bookstore?]
                    I was hoping that you could help me find a book.
                    *****[Is that the only reason that we are here?]
                                ->REASON()
    **[Okay.. Kinda lame]
        ~HappyResponse()
            What do you mean by that? At least I am more educated than you!
        ***[You don't know that]
                Anyways...Can you help me find a book?
                ****[Is that really the only reason that we are here?]
                        ->REASON()
        ***[Well, we will see about that..]
                ~HappyResponse()
                I guess you're right.
                ****[So what are we doing at the bookstore?]
                        ~NeutralResponse()
                        I need help to find a book.
                        *****[Okay, is that the only reason why we are here?]
                            ->REASON()
                ****[How are you today?]
                        ~ConfusedResponse()
                        Great, I am always happy at the bookstore!
                        *****[Nice, what are we doing here?]
                                I need help to find a book!
                            ******[Is that the only reason that we are here?]
                                    ->REASON()
                        *****[Okay, good for you!]
                                I need some help to find a book!
                            ******[Is that the only reason that we are here?]
                                    ->REASON()
== REASON ==
Kinda but I also wanted you to meet me here and so that we could get to know eachother.
    ~SmileResponse()
    *[Alright, I guess?]
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
            ***[Suspisious..]
                ~SmileResponse()
                Nothing weird going on, I just love plants so I need to know things like that.
                    ->KNOWTHINGS()
    **[Euphorbia?]
        ~ContentResponse()
        Yes a plant that I have? Do you not know what a euphorbia are?
            ***[No?]
                ~HappyResponse()
                Okay lame, I have alot of plants at home so maybe that's the reason I know things like that!
                        -> KNOWTHINGS()
            ***[Suspisious...]
                ~SmileResponse()
                Nothing weird going on, I just love plants so I need to know things like that.
                    ->KNOWTHINGS()
    *[Nice!]
    But I still need a book tho!
    **[Okay, what book?]
        ~ContentResponse()
        I am studying plants so right now I need a book about euphorbias!
            ***[Isn't that book toxic for humans?]
                ~HappyResponse()
                Ehhhh.. It is only toxic if you consume it.
                    ****[Okay, that is good to know]
                        ~SmileResponse()
                        Right! I have alot of plants at home so I need to know things like that.
                        -> KNOWTHINGS()
                    ****[Right..]
                        ~SmileResponse()
                        Anyways, I have alot of plants at home.
                            *****[Okay?]
                                So that's why I need to know things like that.
                                    ->KNOWTHINGS()
            ***[Euphorbia? Is that a plant?]
                ~SmileResponse()
                Yes or maybe more like a collection of many plants. But I see my plant as only a euphorbia!
                    ****[It seems like you know alot about plants]
                        ~SmileResponse()
                        Yes! I have alot of plants at home so I need to know things like that.
                        -> KNOWTHINGS()
                    ****[Okay!]
                        ~SmileResponse()
                        Anyways, I have alot of plants at home. So that's why I know things like that.
                                    ->KNOWTHINGS()
    **[Okay, sounds fun!]
        ~ContentResponse()
        I am studying plants so right now I need a book about euphorbias!
            ***[Isn't that book toxic for humans?]
                ~HappyResponse()
                Ehhhh.. It is only toxic if you consume it.
                    ****[Okay, that is good to know]
                        ~SmileResponse()
                        Right! I have alot of plants at home so I need to know things like that.
                        -> KNOWTHINGS()
                    ****[Right]
                        ~SmileResponse()
                        Anyways, I have alot of plants at home.
                            *****[Okay?]
                                So that's why I need to know things like that.
                                    ->KNOWTHINGS()
                            *****[Nice]
                                So that's why I need to know things like that.
                                    ->KNOWTHINGS()
            ***[Euphorbia? Is that a plant?]
                ~SmileResponse()
                Yes or maybe more like a collection of many plants. But I see my plant as only a euphorbia!
                    ****[It seems like you know alot about plants]
                        ~SmileResponse()
                        Yes! I have alot of plants at home so I need to know things like that.
                        -> KNOWTHINGS()
                    ****[Okay!]
                        ~SmileResponse()
                        Anyways, I have alot of plants at home. So that's why I know things like that.
                                    ->KNOWTHINGS()
== KNOWTHINGS ==
    *[Good point]
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
                                -> STUNGBYBEE()
                        ****[Right]
                            ->STUNGBYBEE()
                ***[Okay?]
                    ->STUNGBYBEE()
        **[Yes alot]
            Hope you don't copy all of my interests
                ***[You don't have to worry about that]
                        ->STUNGBYBEE()
                ***[We will see about that haha]
                    ->STUNGBYBEE()
    *[Okay]
        Do you like plants?
        **[I don't know, a little maybe..]
            ~HappyResponse()
            Nice, I will make you love plants more. Just wait.
                ***[How many plants do you have?]
                    ~ContentResponse()
                    Many but I need many more.
                        ****[Alright!]
                            ~SmileResponse()
                            Heh.
                            *****[Well]
                                -> STUNGBYBEE()
                        ****[Right?]
                            ->STUNGBYBEE()
                ***[Okay?]
                    ->STUNGBYBEE()
        **[Yes alot]
            Hope you don't copy all of my interests
                ***[You don't have to worry about that]
                        ->STUNGBYBEE()
                ***[We will see about that haha]
                    ->STUNGBYBEE()
== STUNGBYBEE ==
OMG have I told you that I got stung by a bee yesterday?
*[No, ouch]
    ~SmileResponse()
    Yes it really hurt and it had been itching all night. Weird conversation but I guess I had to say it.
    **[Hope it doesn't itch too much tonight]
        ~NeutralResponse()
        I also hope so, I didn't get much sleep last night so it would have been nice to make up some hours..
        ***[I understand that]
                    ->LIKEBEES()
        ***[Right]
                    ->LIKEBEES()
    **[Love the conversation]
        ~HappyResponse()
        That is kinda strange that you like the conversation but I am here for it.
        ***[Well I like strange.]
                    ->LIKEBEES()
*[I really hate bees]
    ~AnnoyedResponse()
    I like them, they are good for plants, but it is kinda annoying to get stung.
    **[Does it itch?]
        ~NeutralResponse()
        Yes I didn't get much sleep last night because of the itching.
        ***[I understand that..]
                    ->FURTHER()
        ***[Right..]
                    ->FURTHER()
    **[How are they good for plants?]
        ~SmileResponse()
        Bees plays a crucial role in spreading pollen.
        ***[Aha!]
                    ->FURTHER()
        ***[Lame]
                    ->FURTHER()
== LIKEBEES ==
Do you like bees?
*[Yes, actually!]
    ~HappyResponse()
    Me too!! They are good for plants and the nature!
    **[Why?]
        Bees plays a crucial role in spreading pollen.
        ***[I actually didn't now that!]
                    ->WEIRD()
        ***[That's so nice!]
                    ->WEIRD()
    **[Yes, that's why I like them!]
        Not many people know that. They just kill the bees when they see them, they deserve to live!
        ***[We should change that]
                    ->WEIRD()
        ***[I would still kill them if I see them tho]
                    ->WEIRD()
*[Sometimes..]
    ~NeutralResponse()
    Why only sometimes? You do know that they are good for the plants and nature?
    **[Yes I know]
        So why don't you like them all the time?
        ***[They still scare me either way.]
                    ->WEIRD()
        ***[Don't know, I will think about that]
                    ->WEIRD()
    **[Why are they good?]
        ~HappyResponse()
        Bees play a crucial role in spreading pollen.
        ***[Ahaa nice!]
                    ->WEIRD()
        ***[Kinda lame, but okay.]
                    ->WEIRD()
*[Not at all]
    ~AnnoyedResponse()
    Come on! Can't you think about something that is nice about them? They are cute and good for the plants.
    **[It dosen't change my opinion]
        Well okay, but you may think about it. They plays a crucial role in spreading pollen.
        ***[Yes, I know, but still]
                    ->WEIRD()
        ***[Okay, I will think about it.]
                    ->WEIRD()
    **[How are they good for plants?]
        ~HappyResponse()
        Bees plays a crucial role in spreading pollen. So think about it, they are not that bad as they seem.
        ***[I will think about it]
                    ->WEIRD()
        ***[It doesn't change my opinion tho]
                    ->WEIRD()
== FURTHER ==
Why don't you like bees?
*[They scare me]
    ~NeutralResponse()
    Okay, I understand that! They can be a little too aggresive sometimes. 
    **[Yes, exactly]
        But most of them are actually very friendly! So if you are friendly back then they will be nice.
        ***[...They still scare me]
                    ->WEIRD
        ***[I will try that next time]
                    ->WEIRD
    **[And they will sting me]
        ~HappyResponse()
        Not if you are friendly to them. If you are nice to them they will be nice back. 
        ***[Right, sure]
                    ->WEIRD
        ***[True]
                    ->WEIRD
*[I don't know they are just too much for me]
    ~SmileResponse()
    Haha okay! I can get that!
                    ->WEIRD
== WEIRD ==
Shall we maybe try to start to find the book?
*[...Sure]
    ~AnnoyedResponse()
    If you don't like it here then you can leave. You don't have to look for my book if you don't want to.
    **[Mhm..]
        I can look for the book myself
        ***[I will help you don't worry]
                    ->END
    **[No, sorry]
        ~SmileResponse()
        Okay then, you wanna help me?
        ***[Yes I will help you don't worry]
                    ->END
    **[Okay!]
        ~SmileResponse()
        You're kidding right?
        ***[Yes, of course. I will help you find the book.]
        ->END
*[Sure!]
    ~SmileResponse()
    Thank you for helping me! It is really nice of you. 
    **[No problem]
                    ->END
    **[It will be fun]
        ~HappyResponse()
        Yes time to start!
        ***[Alright!]
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

