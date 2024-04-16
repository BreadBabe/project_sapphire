VAR charName="Luna"

VAR charEmotion="InDistance"
VAR loveAmount=0


Hey! I'm Luna. Pretty happy that you're not a catfish. I guess. Kind of.
*[Ehm.. Hi?]
     ~charEmotion= "Indifferent"
Anyway.. This is awkward. I totally thought you would wear something else. Something more.. nice?
    ** [So, you don't like my outfit?]
         ~charEmotion= "Indifferent"
        I mean, it's fine. But I'm not sure if that's enough.
        *** [Sorry...]
        ~SmileResponse()
            Whatever, wanna check out some graves?
        *** [Well yours isn't exactly amazing.]
        ~AnnoyedResponse()
            Ouch, dude!
        
    ** [I don't really care what you think.]
        Woah, someone is in a bad mood. Whatever, dude.
        ~ NegativeResponse()
        *** [I'm sorry, that was kind of rude.]
           ~HappyResponse()
           It's fine, wanna go grave robbing?
           ~charEmotion= "Indifferent"
           ****[Eeeeh, what?]
           
           Yeah, why did you think we went here anyway?
        *** [It was obviously a joke.]
         ~charEmotion= "Indifferent"
            Haha, good joke man. Anyway, ready to rob some graves?
        *** [Soooo......]
            ..... Wanna check out some graves?
            
            
    ** [Whatever, what are we doing here anyway?]
        I kind of invited you here to check out some graves.
--> END
    
=== function SmileResponse===
    ~ loveAmount+=5
    ~ charEmotion="Smile"

=== function HappyResponse ===
        ~ loveAmount++
        ~ charEmotion = "Happy"
        
=== function AnnoyedResponse ===
        ~ loveAmount++
        ~ charEmotion="Annoyed"

=== function NegativeResponse ===
        ~ loveAmount--
        ~ charEmotion = "Angry"