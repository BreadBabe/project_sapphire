VAR charName = "Noah"
VAR charEmotion = "Smile"
VAR loveAmount = 0
VAR charSound = ""


Noah tries the drink that you just concocted together... He maked a worried face at first but it turns into a smile after tasting!
    *[So... what do you think?!]
        ~ContentResponse()
        It's not bad at all! Good even.. You got a hidden talent!
            **[You really think that..?]
                ~HappyResponse()
                Ofcourse! I can happily drink this. Although admittedly it doesn't take much for that to be true haha.
                ***[Well I'm glad that you liked it so much!]
                    ~SmileResponse()
                    Maybe you're the one who should be working as a bartender...
                    ****[Oh no... it was just beginners luck I'm sure.]
                        -> UhOhTime()
                    ****[Hmm.. You might be onto something.]
                        -> UhOhTime()
                ***[I knew there was something to that mix..]
                    ~SmileResponse()
                    Maybe I should note down that recipe of yours then. Could be valuable for the future..
                    ****[Sure I can write that down for you..]
                        -> UhOhTime()
            **[So that mixture does work after all.. Phew.]
                ~SmileResponse()
                You mean you didn't know? Well atleast you're good at improvising then!
                ***[I guess I work well under pressure..]
                    -> UhOhTime()
                ***[Sometimes I amaze myself with my brilliance..]
                    ~ContentResponse()
                    Don't get ahead of yourself now haha. But I'll give you that, it was good this time.
                    ****[...]
                        ~SmileResponse()
                    -> UhOhTime()
    *[It can't be that bad.. It was me who made it!]
        ~HappyResponse()
        Oh... I'm sure you're capable of some horrible creations too but you have me convinced.. But this was actually not bad!
        **[See I told you!]
            ~SmileResponse()
            Have you practied this before or something haha?
            ***[Yes a little bit, and I'm glad it paid off for once..]
                It really did pay off this time atleast, gave me something nice to drink!
                ****[...]
                    -> UhOhTime()
            ***[Uhm... No never, I improvised!]
                Really? Thats kinda impressive then, you just have a knack for it!
                ****[Maybe I should take over that bartending job of yours!]
                    -> UhOhTime()
                ****[Don't you have a shift coming up soon?]
                    -> UhOhTime()
                    
== UhOhTime ==
~SmileResponse()
Nooo! Just realized my shift starts now and I'm totally not prepared..
    *[Oh.. That's alright I was getting ready to leave anyways.]
        Okay that works out well then haha.. I had a nice time together we should really get together again sometime. How does that sound?
            -> Ending()
    *[I thought your boss was chill?]
        ~NeutralResponse()
        Ugh.. I promised them I would be available today, one of my coworkers are sick and I need to cover.
        **[Oh okay.. I understand]
            ~SmileResponse()
            We can meetup again soon instead? I really enjoyed our time together so far..
            -> Ending()
        **[Oh alright... Thats fine I think.]
            ~SmileResponse()
            I wish I could extend it but we could always meet up again sometime instead? I thought our time together was really nice!
            -> Ending()
            
== Ending ==
        **[Sounds great Noah!]
            ~HappyResponse()
            Sweet!! Gotta go now, see you soon. Bye!
            -> END
        **[Yes! I would really love that.]
            ~BlushResponse()
            Incredible!! That makes me really glad. See you again soon then. Bye!
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
        