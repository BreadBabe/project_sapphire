VAR charName="Luna"

VAR charEmotion="Indifferent"
VAR loveAmount=0

Jeez, sorry. My cat totally freaked out when you rang the doorbell. I should probably take that shit down.
*[Oops!]
     ~charEmotion= "Neutral"
     It's fine, he can be a bit of a drama queen. Wondering where he got that? I'm happy you made it here and weren't swepped away in the rain!
    ** [What's his name?]
        ~SmileResponse()
        Lucifer, of course. Would be weird if I named him something else.  Anyway, welcome to my palace!
            -> APARTMENT
        
    ** [It probably got it from you!]
           ~AngryResponse()
        It? He has a name, Lucifer. I'd prefer it if you called him that from now on. Anyway, welcome to my palace!
             -> APARTMENT
               
               
 == APARTMENT ==
 * [I love it!]
     ~HappyResponse()
      Thank you! It kind of has a vibe, right? I usually don't invite people over here. It's kind of my sacred space. Make yourself at home.
      **[Thank's for the invite!]
      Hey, any time. I need motivation for cleaning anyway.
            -> NEXTDILEMMA
                        
* [Isn't it a bit too much?]
      ~AnnoyedResponse()
       Too much? That's rich coming from someone whose idea of decoration is probably a poster and a beanbag chair. But hey, if you're not feeling it, I'm sure you'll get used to it. Or not.
        **[I like too much.]
         ~charEmotion= "Indifferent"
          Well, shit. Look who's the dramaqueen now. Lucifer definitely got it from me. 
          ***[mm]
          ~charEmotion="Neutral"
          mm
         -> NEXTDILEMMA
         
         **[I don't want to get used to it.]
         ~AngryResponse()
            Then why are you even here? Honestly, you dragged yourself here through a rainstorm and now you're critisizing my home?
           *** [Alright, I'm sorry.]
            Whatever. Just don't come over with that attitude again, I'm done with people like that in my life, its enough enduring that from my parents.
            -> NEXTDILEMMA
            ***[I was bored.]
             ~AngryResponse()
             Bored? You should really keep some thoughts for yourself, because guess what, not everyone gives a shit about your opinion. Especially not me.
              ****[I don't care about your opinion either.]
              ~charEmotion="Indifferent"
               I can't imagine being that unoriginal. Has to be exhausting, trying to copy other people all the time in lack of personality.
               *****[I'm sorry, I'm a dickhead.]
               ~SmileResponse()
               GOOD ANSWER HERE
               ->NEXTDILEMMA
               *****[Alright, I'm leaving.]
               BAD ANSWER HERE
               ->END
                      
              ****[That was rude of me.]
                     ~charEmotion= "Indifferent"
                      INDIFFERENT ANSWER HERE
                     ->NEXTDILEMMA
             
            
*[Just like I imagined..]
    ~charEmotion= "Indifferent"
     Shoot. Am I that predictable? Or maybe you just already know me too well. Either way, 0 points to me. 
     -> NEXTDILEMMA
            
 == NEXTDILEMMA ==  
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
        
        