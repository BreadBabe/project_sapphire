VAR charName = "Quinn"
VAR charEmotion="Neutral"
VAR loveAmount=0

Hi , I'm Quinn, are you my date??
    *[Yes!]
    ~HappyResponse()
       Nice to meet you! Have you been here before?
            **[ Yes I have]
                Huh! Really? Not that many people have! Are you lying?
                ***[..no?]
                ~AnnoyedResponse()
                    Well good for you! I have never seen you here before. 
                    Can you help me look for som books about my plants?
                ***[maybe]
                ~SmileResponse()
                    Haha, your'e funny!
                    Can you help me look for some books about my plants?
                
            **[ No, I have not]
            ~SmileResponse()
                That what I expected, I come here all the time. 
                This is where I learn to take care of my plants.
                 ***[What kind of plants do you have?]
                    I have all types of plants!
                    Can you help me find a book about plants?
                 ***[Lame]
                 ~AnnoyedResponse()
                  Whatever! I need to find a book, you can do whatever i guess ...
      
    * [I suppose I am]
    ~AnnoyedResponse()
        You don't even know who you are? Well that's disapointing.
        **[I mean, yes I am]   
            Alright if you say so...
            Have you Been here before?
            ***[Yes, I love it here]
                Huh! Really? Not that many people have! Are you lying?
                ****[..no?]
                    Well good for you! I have never seen you here before. 
                    Can you help me look for som books about my plants?
                ****[maybe]
                ~HappyResponse()
                    Haha, your'e funny!
                    Can you help me look for some books about my plants?
            ***[no never, what are we doing here?]
                I need to get some books for my plants. Do you wanna help me look for them?
            
        **[Does anybody really know who they are?]
         Haha i guess you have a point!
         
    
    *[um...sure]
    ~AnnoyedResponse()
        What do you even mean by that?
        **[ Sorry, I did'nt mean it like that, nice to meet you]
        ~SmileResponse()
            Well then. Welcome to my favorite place, the library! Have you been here before?
            ***[yes, i love it here]
                Huh! Really? Not that many people have! Are you lying?
                ****[..no?]
                    Well good for you! I have never seen you here before. 
                    Can you help me look for som books about my plants?
                ****[maybe]
                    Haha, your'e funny!
                    Can you help me look for some books about my plants?
            ***[No,never been before]
                Welcome to the library then!
                ****[What are we doing here?]
                    I need help to find a book about my plants, do you want to help me?
        **[ Nothing, nice to meet you]
        ~AnnoyedResponse()
                Nice to meet you to! Welcome to my favorite place, the library! I suppose that you're not here that often.
            ***[Well I have been here some times! But what are we doing here?]
                Really? Okay, I need to get some books for my plants. Do you wanna help me look for them?
            ***[no never, what are we doing here?]
                I need to get some books for my plants. Do you wanna help me look for them?
        
    



- Help Quinn look around for the book.
    -> END
    === function SmileResponse===
    ~ loveAmount+= 5

    ~ charEmotion="Smile"

=== function HappyResponse ===
        ~ loveAmount++
        ~ charEmotion = "Happy"

=== function AnnoyedResponse ===
        ~ loveAmount--
        ~ charEmotion="Annoyed"

=== function NegativeResponse ===
        ~ loveAmount--
        ~ charEmotion = "Angry"

