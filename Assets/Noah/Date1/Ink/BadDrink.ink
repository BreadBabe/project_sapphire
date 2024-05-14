VAR charName = "Noah"
VAR charEmotion = "Confused"
VAR loveAmount = 0
VAR charSound = ""


Noah tries the drink that you just concocted together... He makes a worried face at first but it turns into a uncertain smile after tasting..
    *[So... what do you think?!]
        ~ConfusedResponse()
        It is... definitely unique!
            **[Wow. Was it that bad haha?]
                ~ContentResponse()
                Nooo. It's not terrible! The taste just caught me a little by surprise..
                ***[Well, atleast you didn't hate it!]
                    ~SmileResponse()
                    I like it so much that I might start serving this to misbehaving customers!
                    ****[Oh really? My drink will be famous!]
                        -> UhOhTime()
                    ****[Okay, Okay, It wasn't my greatest work...]
                        -> UhOhTime()
                ***[Suprised... by how good it is?]
                    ~HappyResponse()
                    Yeaaa.... For sure. As a bartender I'm gonna need you to tell me the secret ingredient for that tremendous taste!
                    ****[Sure I can write that down for you..]
                        -> UhOhTime()
            **[Thats's exactly what I was going for!]
                ~SmileResponse()
                Well in that case, you really nailed it!
                ***[Perfection at last.]
                    -> UhOhTime()
                ***[Sometimes I amaze myself with my brilliance..]
                    ~ConfusedResponse()
                    I wouldn't go that far haha, I would likely lose my job if I served that to my boss...
                    ****[...]
                    -> UhOhTime()
    *[It can't be that bad.. It was me who made it!]
        ~SmileResponse()
        Oh... Well it definitely has your uniqueness, and the taste is strong!
        **[See I told you!]
            ~ConfusedResponse()
            It is definitely an acquired taste! I'm gonna need to let it simmer for a bit haha.
            ***[I'm sure it would take the world by storm!]
                That is 
                ****[...]
                    -> UhOhTime()
            ***[Ohh. I might need to learn a thing or two from you.]
                Ofcourse, you're clearly a natural so it should be easy for you to follow along!
                ****[I knew it!]
                    -> UhOhTime()
                ****[Thanks! I could really use those lessons haha.]
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