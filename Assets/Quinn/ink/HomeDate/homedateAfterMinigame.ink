VAR charName = "Quinn"
VAR charEmotion="Neutral"
VAR loveAmount=0

Sorry, that took a bit longer than expected. I hope you found some way to entertain yourself whilst I was away. 
*[Not really]
 ~NeutralResponse() 
 No? Now I feel bad for leaving you here for so long. Oh, ->Basil 
 *[I looked around your room a bit]
 ~SmileResponse()
   Did you fins anything that peaked your interest?
   **[Your dog is really cute]
     ~HappyResponse()
     Oh, ->Basil
   **[I found a few items of interest]
      Would you like to know more about any item? ->Items
 
 
 ==Basil
   Did you pet Basil? 
  *[Basil?]
     Ah, Yeah I forgot to tell you, Basil is the name of my dog. The little cuitie over there in her dogbed. 
     **[Aw, so that's her name]
          ~HappyResponse()
            I know it's not the most usual, but it was the first plant I got when I moved here, so it has a special place in my heart, just like her. 
            ***[That's a weird story]
                ~NeutralResponse()
                I guess it can be wiewed as such. Since you say you didn't look around that much, would you like me to give you a brief tour of some of the things I have?
                ****[Yeah, That would be nice]
                     ~HappyResponse()
                      What would you like to know more about? ->Items
                ****[Not really]
                    ~AnnoyedResponse()
                     Are you sure? There is nothing you would like to know about?-> Items
            ***[That's really sweet]
                ~SmileResponse() 
                I'm glad you think so, Since you say you didn't look around that much, would you like me to give you a brief tour of some of the things I have?
                 ****[Yeah, That would be nice]
                     ~HappyResponse()
                      What would you like to know more about? ->Items
                ****[Not really]
                    ~AnnoyedResponse()
                     Are you sure? There is nothing you would like to know about?-> Items
     **[What kind of name is basil]
         ~SmileResponse() 
         I know it's not the most usual, but it was the first plant I got when I moved here, so it has a special place in my heart, just like her. 
          ***[Oh, Did you move reecently]  
              ~HappyResponse() 
              I did actually. Oh, since you say you didn't look around that much, would you like me to give you a brief tour of some of the things I have?
                   ****[Yeah, That would be nice]
                     ~HappyResponse()
                      What would you like to know more about? ->Items
                ****[Not really]
                    ~AnnoyedResponse()
                     Are you sure? There is nothing you would like to know about?-> Items
          ***[Still a weird name]
              ~AnnoyedResponse() 
              Maybe, but weird does not always have to constitute bad. Oh, since you say you didn't look around that much, would you like me to give you a brief tour of some of the things I have?
                   ****[Yeah, That would be nice]
                     ~HappyResponse()
                      What would you like to know more about? ->Items
                ****[Not really]
                    ~AnnoyedResponse()
                      Are you sure? There is nothing you would like to know about?-> Items
              
 ==Items==
 *[ Microscope]
  ~AnnoyedResponse()
  Ah, I would prefer if you refraind from touching that, simply because it is quite a complex piece of equippment.
   **[You think I'm to stupid to understand it?]
   ~AnnoyedResponse()
   No? It is simply not something people know how to operate. As long as you didn't change any settings it should be fine. 
     ***[And what if i did mess with the settings?]
         ~NegativeResponse()
         ...Why would you mess with someones stuff like that?
         ****[You are the one who left me alone]
             ~AnnoyedResponse()
              I thought I could trust you to atleast not break anything whilst I was getting us something to drink.
                     *****[I wanted to see your reaction]
              ~NegativeResponse() 
              See my reaction? Where you really so bored in the 5 minuets I left that you felt the need to aggrevate me?
               ******[...Now that you say it it was kinda stupid]
                     ~NeutralResponse()
                       As long as you don't do it again I suppose. ->toughConvo
               ******[I thought it would be funny]
                        ~AnnoyedResponse() 
                    You thought it would be funny to provoke me? -> Arguing
              *****[I thought it would be funny]
                    ~AnnoyedResponse() 
                    You thought it wold be funny to mess with and potentially break my stuff? -> Arguing
         ****[I didn't actually mess with it]
             ~NeutralResponse() 
              Oh...Then why would you say that you did?
              *****[I wanted to see your reaction]
              ~NegativeResponse() 
              See my reaction? Where you really so bored in the 5 minuets I left that you felt the need to aggrevate me?
               ******[...Now that you say it it was kinda stupid]
                     ~NeutralResponse()
                       As long as you don't do it again I suppose. ->toughConvo
               ******[I thought it would be funny]
                        ~AnnoyedResponse() 
                    You thought it would be funny to provoke me? -> Arguing
              *****[I thought it would be funny]
                    ~AnnoyedResponse() 
                    You thought it wold be funny to say that you purpusfully messed with and potentially destroyed my stuff? -> Arguing
   **[I was being careful...]
    ~NeutralResponse() 
     I suppose I should have put it away if I didn't want you to touch it. 
     ***[So no harm done?]
         ~HappyResponse()
         No, luckily not. If you are that interested in it could teach you how to use it sometime?
    ****[Not really]
         ~NeutralResponse()
         That's understandable, it's not for everyone. ->toughConvo
     ****[That would be nice]
          ~EmbarrassedResponse()
          Then I look forward to having someone like you as my student. I feel like I should warn you that I can get quite absorbed in the subject, so feel free to cut of my rambles. 
               *****[I think I'll let you ramble]
                     ~HappyResponse()
                     Well, if you like to listen then I think we will make for a stellar team. ->toughConvo
               *****[Don't worry I'll cut you off]
                     ~NeutralResponse() 
                      That's good, atleast one of us can be responsible and get stuff done then. ->toughConvo
 *[The Smiths poster ]
   ~NeutralResponse() 
    Oh, You also like The smiths? I think their music has a sort of passion that is hard to come by theese days. 
     **[Yeah, I really like rock]
       ~HappyResponse()
        Me too, it really does wonders for soothing the soul on a bad day. 
                 ***[It really does!]
                    ~SmileResponse()
              Oh, ypu agree? I thought Maybe it's because it helped me through a touhger time in life , I might be biased. I'm glad to know someone shares the sentiment.
             ****[Biased?]
                   ...Yeah ->toughConvo
              ****[Tougher time in life?]
                   ..Yeah ->toughConvo
         ***[Rock...soothes the soul?]
            ~NeutralResponse()
             Hmm, you disagre? Maybe it's because it helped me through a touhger time in life , I might be biased. 
              ****[Biased?]
                   ...Yeah ->toughConvo
              ****[Tougher time in life?]
                   ...Yeah ->toughConvo
     **[Rock is not really my thing]
        ~NeutralResponse()
         I guess it's not for everyone, I think it really does wonders to sooth the soul. 
         ***[I don't really get it]
                ~NeutralResponse()
             Hmm, you dissagre? Maybe it's because it helped me through a touhger time in life , I might be biased. 
               ****[Biased?]
                   ...Yeah ->toughConvo
              ****[Tougher time in life?]
                   ..Yeah ->toughConvo
         ***[Rock...soothes the soul?]
            ~NeutralResponse()
             Hmm, you dissagre? Maybe it's because it helped me through a touhger time in life , I might be biased. 
               ****[Biased?]
                   ...Yeah ->toughConvo
              ****[Tougher time in life?]
                   ..Yeah ->toughConvo

 

 
 
 ==Arguing==
 Do you really get this much entertainment out of picking a figt?
 *[Well i'm not the only one fighting am I?]
   ~NegativeResponse() 
    No but you are the one that keeps them going. Have I done something wrong?
     **[Maybe I jus wan't to fight to fight]
        ~AnnoyedResponse() 
         Seriously?! This is exactly what I mean. What do you have against me?
         ***[You keep calling my stupid one way or another!]
                     ~AnnoyedResponse() 
         Maybe Because you act like it? You say you mess with my stuff, and after I explain how Important it is to me, You tell me the only reason you did it was cause my reaction would be funny? 
         ****[ Well, Your reaction is a majoy redflag so...]
             ~Death()
              That's it, I've had enough of you, just leave.  ->END
         ****[Was I wrong?]
                 ~Death()
              That's it, I've had enough of you, just leave.  ->END
          ****[Turns out I don't like nonbinary people]
              ~NegativeResponse() 
               ...Are you being serious righ now? 
                *****[Yes]
                     ~Death()
                     Have you have really been fucking with me all this time? Did you ever care or was this all jus som experiment to you? Get out. ->END
                *****[No]
                       ~Death()
                     Have you have really been fucking with me all this time? Did you ever care or was this all jus som experiment to you? Get out. ->END
     **[You keep insinuating that I'm Incompetent]
        ~AnnoyedResponse() 
         Maybe Because you act like it? You say you mess with my stuff, and after I explain how Important it is to me, You tell me the only reason you did it was cause my reaction would be funny? 
         ***[ Well, Your reaction is a majoy redflag so...]
             ~Death()
              That's it, I've had enough of you, just leave.  ->END
         ***[Was I wrong?]
                 ~Death()
              That's it, I've had enough of you, just leave.  ->END
         
 *[It's very entertaining]
    ~NegativeResponse() 
     Have I done something wrong?
     **[Maybe I jus wan't to fight to fight]
        ~AnnoyedResponse() 
         Seriously?! This is exactly what I mean. What do you have against me?
         ***[You keep calling my stupid one way or another!]
                     ~AnnoyedResponse() 
         Maybe Because you act like it? You say you mess with my stuff, and after I explain how Important it is to me, You tell me the only reason you did it was cause my reaction would be funny? 
         ****[ Well, Your reaction is a majoy redflag so...]
             ~Death()
              That's it, I've had enough of you, just leave.  ->END
         ****[Was I wrong?]
                 ~Death()
              That's it, I've had enough of you, just leave. ->END
          ****[Turns out I don't like nonbinary people]
              ~NegativeResponse() 
               ...Are you being serious righ now? 
                *****[Yes]
                     ~Death()
                     Have you have really been fucking with me all this time? Did you ever care or was this all jus som experiment to you? Get out. ->END
                *****[No]
                       ~Death()
                     Have you have really been fucking with me all this time? Did you ever care or was this all jus som experiment to you? Get out. ->END
     **[You keep insinuating that I'm Incompetent]
        ~AnnoyedResponse() 
         Maybe Because you act like it? You say you mess with my stuff, and after I explain how Important it is to me, You tell me the only reason you did it was cause my reaction would be funny? 
         ***[ Well, Your reaction is a majoy redflag so...]
             ~Death()
              That's it, I've had enough of you, just leave.  ->END
         ***[Was I wrong?]
                 ~Death()
              That's it, I've had enough of you, just leave.  ->END
 
 
 
==toughConvo==
I only just moved here in a hurry so unfortunatly I dont have a lot of stuff unpack...
*[In a hurry?]
  ~SmileResponse()
  Ah, Ye I was living at home to save some cash, but my parents made it impossible to live with them beacue of our conflicting belifs. ->Parents
*[You're also new to the area?]
  ~SmileResponse()
    Ah, Ye I was living at home to save some cash, but my parents made it impossible to live with them beacue of our conflicting belifs. ->Parents
   

==Parents==
*[Oh are you religious?]
Haha, No I wouldn’t say so. They just couldn’t handle the fact that I wanted to identify outside of the binary.
**[outside the binary?]
    ~AnnoyedResponse()
     Do I have to spell It out for you? I mean it is in my bio? I’m nonbinary. 
     ***[Oh, you're one of those]
     ~NegativeResponse()
        Excuse me, One of those? What’s that supposed to mean? 
****[Ah , I’m sorry that came out wrong] 
     ~AnnoyedResponse() 
      It's fine. I think it's best we part ways for today. Send me a message if you wanna meet up again sometime.  
        ->END
****[Exactly  what is sounds like]
     ~AnnoyedResponse() 
      I've been having a decent time up until this point but I think you should leave now. Send me a message if you change your mind. ->END
**[they didn’t accept that your nonbinary?] 
   ~NeutralResponse()
     They didn't accept it and they made zero effort to try to understand me. My parents are somewhat conservative in some areas. The misgendering, constant use of my deadname and belittling remarks got to me in the end. 
     ***[That's rough]
         ~SmileResponse()
           Sorry, I kinda ruined the vibe I think it's best we part ways for today. Send me a message if you wanna meet up again sometime.  ->END
     ***[ Maybe you deserved it]
           ~Death()
          That's it, I've had enough of you, just leave.  ->END
*[Couldn't take it]
    My parents are somewhat conservative in some areas. The misgendering, constant use of my deadname and belittling remarks got to me in the end. 
      **[That's rough]
         ~SmileResponse()
           Sorry, I kinda ruined the vibe I think it's best we part ways for today. Send me a message if you wanna meet up again sometime.  ->END
     **[ Maybe you deserved it]
           ~Death()
           ->END
           _
          That's it, I've had enough of you, just leave.  ->END


 
     
     ->END
     
===function Death===

~loveAmount -= 500


   ===function EmbarrassedResponse===
     ~ charEmotion="Blush"
     
   ===function NeutralResponse===
     ~ charEmotion="Neutral"
    
=== function SmileResponse===
    ~ loveAmount+= 2

    ~ charEmotion="Smile"

=== function HappyResponse ===
        ~ loveAmount++
        ~ charEmotion = "Happy"

=== function AnnoyedResponse ===
        ~ loveAmount--
        ~ charEmotion="Annoyed"
        
=== function AnnoyedResponsee ===
        ~ loveAmount -=20
        ~ charEmotion="Annoyed"

=== function NegativeResponse ===
        ~ loveAmount -= 2
        ~ charEmotion = "Mad"