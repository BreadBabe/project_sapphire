VAR charName="Luna"

VAR charEmotion="Indifferent"
VAR loveAmount=0

Hey! Why are you wandering around here all by yourself?
*[Huh?]
     ~charEmotion= "Neutral"
     Sorry, it's just so rare to see someone else out here at this time. You must be my date, right? I mean, this isn't exactly a hotspot unless you're into eerie places or just generally lost.
    ** [Depends, are you Luna?]
        ~charEmotion= "Smile"
        That would be me. Surprised you actually showed up, this place isn't known for its charm. Actually, neither am I. And your outfit... it definitely makes a statement. Intriguing, really.
            -> OUTFITDILLEMA
        
    ** [Yep, nice to meet you!]
           ~HappyResponse()
        Nice to meet you too. I'm honestly a bit relieved that you didn't freak out and bail, considering where we are. Though your outfit, let's just say it's... unexpected.
             -> OUTFITDILLEMA
               
               
 == OUTFITDILLEMA ==
 * [Oh, was I supposed to wear something special?]
     ~IndifferentResponse()
      No worries, you look fine. It gives you a bit of an edge, really. Just a heads-up though, where we're headed might be a bit rough on your clothes. Hope you're not too attached to them.
      **[What do you mean?]
      Eh.. your clothes might get a bit dirty. And no, I'm not talking about doing Saltburn stuff.
            -> DIRTY
                        
* [I don't really care what you think]
      ~AnnoyedResponse()
       Ouch, dude. Hit a nerve, did I? I guess we're skipping the small talk then? Fine by me. Just be prepared, the night could get messy, and I'm not just talking about our interaction. 
        **[...Sorry]
         ~charEmotion= "Indifferent"
          It's alright, no harm done. We've got an interesting evening ahead, and honestly, your outfit might endure more than a few scratches and stains.
          ***[What do you mean?]
          ~charEmotion="Neutral"
          Eh.. your clothes might get a bit dirty. And no, I'm not talking about doing Saltburn stuff.
         -> DIRTY
         
         **[Yeah, well, it wasn't a very nice thing to say]
         ~AnnoyedResponse()
            That's a bit dramatic. I'm sorry okay? I guess my sense of humor isn't for everyone. Anyway, let's not ruin your outfit more than we have to. 
           *** [What do you mean?]
            Your clothes might get a bit dirty.
            -> DIRTY
            ***[Maybe you should think before you speak]
             ~AngryResponse()
             Really? It was obviously a joke. Probably not my best one, but nevertherless. Let's not ruin the night over a bad joke.
              ****[Good joke]
              ~charEmotion="Indifferent"
               I've already apologized, what more do you want? If we can't even get along on one date then maybe this was a mistake. Do you want to do this or not? I'm done wasting my time.
               *****[I do!]
               ~SmileResponse()
               Great, let's start over. No harm done, but your clothes might get a bit dirty..
               ->DIRTY
               *****[I'm out.]
               Honestly, fuck off. I don't have time for people like you anyway. Good riddance, and try not to be too boring without me. Bye!
               ->END
                      
              ****[Just don't do it again]
                     ~charEmotion= "Indifferent"
                      Whatever. Your clothes might get a bit dirty though.
                     ->DIRTY
             
            
*[Is there something wrong with my outfit?]
    ~charEmotion= "Indifferent"
     No it’s fine, I was just expecting something more... whatever, it's cool. Your clothes might get a bit dirty though.
     -> DIRTY
            
 == DIRTY ==  
*[Dirty?]
  ~charEmotion= "Neutral"
    Don't worry, its all part of the plan. Afraid of a little mud?
   ** [...No]
   ~SmileResponse()
    I had planned for us to go do some totally legal graverobbing together. Nothing brings two souls together more than good old theft from dead people. Let's just say, it's a bonding experience like no other.
        -> GRAVEROBBING

   **[No!]
   ~HappyResponse()
    That's the spirit! We're going to dig up some history - literally. Graverobbing, but in a fun, "this could totally be legal" way. Nothing brings two souls together than good old theft from dead people. Plus, a skeleton is honestly pretty interesting to examine. Except for the smell.
             -> GRAVEROBBING

   **[Yes?]
   ~AnnoyedResponse()
      I had planned for us to go do some totally legal graverobbing together. Nothing brings two souls together more than good old theft from dead people. Plus, a skeleton is honestly pretty interesting to examine. Except for the smell.
        -> GRAVEROBBING

    
*[I don't want to get dirty]
     ~AnnoyedResponse()
     Where's your sense of adventure? A little dirt never hurt anybody. I had planned for us to go do some totally legal graverobbing together. Nothing brings two souls together more than good old theft from dead people. Get out of your comfort zone!
             ->GRAVEROBBING

* [...Huh?]
~IndifferentResponse()
    Not a fan of getting your hands dirty? Well, tonight might change your mind. We're about to dive into something that's definitely not your average date activity.
   ** [...No]
   SICK! Let's get down and dirty, but not in the sexual way. Or something. Sorry?
    ~HappyResponse()
         -> GRAVEROBBING
   **[No!]
   ~SmileResponse()
    I had planned for us to go do some totally legal graverobbing together. Nothing brings two souls together more than good old theft from dead people. Plus, a skeleton is honestly pretty interesting to examine.
         -> GRAVEROBBING
 
   
   **[Yes?]
   ~AnnoyedResponse()
       I had planned for us to go do some totally legal graverobbing together. Nothing brings two souls together more than good old theft from dead people. Plus, a skeleton is honestly pretty interesting to examine.
             --> GRAVEROBBING
  
 == GRAVEROBBING==  
 
   *[Isn't that like, actually illegal though?]
         ~charEmotion= "Indifferent"
          Well, only if you get caught, And I happen to be a professional. I promise it will be fun, we might even make a profit out of it. 
          **[Alright!]
             -> ENDING
             
    *[Fuck yes!]
    ~HappyResponse()
    That's the spirit! If we're lucky we might find something of value. Or not, but wouldn't you love to see a dead person anyway? SPOOKY.
    **[Alright!]
    -> ENDING
    

   *[Uhm, what the actual fuck?]
         ~AnnoyedResponse()
         Hey, don't freak out, okay? It was right there in my bio: 'I like chilling with my cat and occasionally, you know, exploring cemeteries'. You did read it, right? Showing up here in the dead of night sort of implies you were at least a little curious.
       **[I thougt you were joking!]
       ~IndifferentResponse()
             Nope. What part of 'meeting in a graveyard at night' screams 'just kidding' to you? I thought the part where I told you to make sure you're not followed would have been a clear giveaway. 
       ***[Maybe you're right, it could be kinda fun]
            ~NeutralResponse()
             Now that's the spirit! There's something thrilling about uncovering stories, and hopefully gold, that was buried along with bones. So, shovel in hand, let's do this. It's your first time after all, and I want it to be memorable.
             ****[Alright]
                 ->ENDING
                 
                 
                 

== ENDING==  
~charEmotion="Smile"
 So.. I kind of got here early, and decided to start digging on some graves. And I thought you could just pick one of them out and do the rest of the digging.
   *[Oh, are you tired?]
         ~charEmotion= "Indifferent"
          Takes more than that to tire these massive arms. Haha. But honestly, a bit. Anyway, pick one of the three graves and I'll meet you back here when you're done!
          **[Sounds like a plan!]
             -> END
             
    *[Alright!]
    ~SmileResponse()
    Great! Just pick one of the three graves and I'll meet you back here when you're done collecting stuff from the dead!
    **[Sounds like a plan!]
    -> END
    

   *[I'll dig faster than you anyway]
   ~HappyResponse()
         Damn, with those skinny excuses of "arms" I highly doubt it.
         **[Funny...]
         ~NeutralResponse()
         Are those your arms? Oh. Thought you had attached the arms of one of the skeletons. Anyway, pick one of the three graves and I'll meet you back here when you're done!
         ***[Sounds like a plan!]
         ->END
         
       **[Ouch.]
       ~IndifferentResponse()
             Wait...? Are those your arms? Oh. Thought you had attached the arms of one of the skeletons. Anyway, pick one of the three graves and I'll meet you back here when you're done!
             ***[Sounds like a plan!]
             ->END


-->END
    

=== function IndifferentResponse ===
~charEmotion="Indifferent"

=== function NeutralResponse ===
~charEmotion="Neutral"

=== function UpsetResponse ===
~charEmotion="Upset"
~loveAmount--

=== function SmileResponse===
    ~ loveAmount++
    ~ charEmotion="Smile"

=== function HappyResponse ===
        ~ loveAmount++
        ~ charEmotion = "Happy"
        
=== function AnnoyedResponse ===
        ~ loveAmount--
        ~ charEmotion="Annoyed"

=== function AngryResponse ===
        ~ loveAmount--
        ~ charEmotion = "Angry"
        
        