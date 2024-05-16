VAR charName = "Quinn"
VAR charEmotion=""
VAR loveAmount=0

~HappyResponse()
Hello, Welcome to my home
    *[Hi! It so nice to see you again! ]
    ~HappyResponse()
       Same! I was really happy you wanted to meet up again! It's not always that I want to see people again.
            **[ oh, should I count myself lucky then?]
             ~EmbarrassedResponse()
                Well, I did when you accepted the second date
                ***[aww]
                ~AnnoyedResponse()
                    Well good for you! I have never seen you here before. 
                    Can you help me look for som books about my plants?
                ***[you should!]
                ~SmileResponse()
                    Haha, your'e funny!
                    Can you help me look for some books about my plants?
                ***[well, when you put it like that, I did felt happy when you messaged me]
                
            **[ I felt the same! it was really fun last date! I hope the book helped]
            ~SmileResponse()
                Yes, it was the book i was looking for so it did!
                or 
                Well it would if I had gotten the right one. But no worries i found the book i was looking for by my self so
                
                 ***[Hehe, sorry plants aren't really my strong suit...]
                    Yeah I noticed...
                    
                 ***[oh, well good that you found the right book]
                 ~AnnoyedResponse()
                  Whatever! I need to find a book, you can do whatever i guess ...
                  
                  ***[hey, not everyone can be i microbiologist!]
                  ~AnnoyedResponse()
                  Haha your right, I huess i Just thought everyone could read.
      
    * [Thank You, wow your house is really green!]
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
         
    
    *[Wow, You live in a jungle!]
    ~SmileResponse()
        Haha! Yes, when i said i really liked plants i meant it!
        **[I can see that!]
        ~EmbarrassedResponse()
            
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
        **[ Wow, i didn't realise how much ]
        ~AnnoyedResponse()
               oh, sorry maybe i was not clear enough.
            ***[No, not really]
                Really? Okay, I need to get some books for my plants. Do you wanna help me look for them?
            ***[no never, what are we doing here?]
                I need to get some books for my plants. Do you wanna help me look for them?
        
    



- Help Quinn look around for the book.
    -> END
    ===function EmbarrassedResponse===
    ~ charEmotion ="Blush"
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
        

