VAR charName="Luna"

VAR charEmotion="Indifferent"
VAR loveAmount=0

Jeez, sorry. My cat totally freaked out when you rang the doorbell. I should probably take that shit down.
*[Oops!]
     ~charEmotion= "Neutral"
     It's fine, he can be a bit of a drama queen. Wondering where he got that? I'm happy you made it here and weren't swepped away in the rain!
    ** [What's his name?]
        ~SmileResponse()
        Lucifer, of course. Would be weird if I named him something else. Anyway, welcome to my palace!
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
      Hey, any time. I need motivation for cleaning anyway. I could never be a clean girl. 
            ***[HEJ]
            AAAH
            -> DAY
            ***[HEJ]
            AAAH
            -> DAY
      **[Then why did you invite me?]
      Oh, feeling special? I can assure you you're not.
            ***[That's a bit harsh.]
            Sure.
            ->DAY
            ***[WOOO]
            Sure.
            ->DAY
                 
                        
* [Isn't it a bit too much?]
      ~AnnoyedResponse()
       Too much? That's rich coming from someone whose idea of decoration is probably a poster and a beanbag chair. But hey, if you're not feeling it, I'm sure you'll get used to it. Or not.
        **[I like too much.]
         ~charEmotion= "Indifferent"
          Well, shit. Look who's the dramaqueen now. Lucifer definitely got it from me. 
          ***[mm]
          ~charEmotion="Neutral"
          mm
         -> DAY
         
         **[I don't want to get used to it.]
         ~AngryResponse()
            Then why are you even here? Honestly, you dragged yourself here through a rainstorm and now you're critisizing my home?
           *** [Alright, I'm sorry.]
            Whatever. Just don't come over with that attitude again, I'm done with people like that in my life, its enough enduring that from my parents.
            -> DAY
            ***[I was bored.]
             ~AngryResponse()
             Bored? You should really keep some thoughts for yourself, because guess what, not everyone gives a shit about your opinion. Especially not me.
              ****[I don't care about your opinion either.]
              ~AnnoyedResponse()
               I can't imagine being that unoriginal. Has to be exhausting, trying to copy other people all the time in lack of personality.
               *****[I'm sorry, I'm a dickhead.]
               ~charEmotion="Indifferent"
               Yeah, you are. I'm used to it, just don't come over with that attitude again. I'm done with people like that in my life, it's enough enduring that from my parents. Anyway, how was your day?
               ->DAY
               *****[Alright, I'm leaving.]
               Please, you'll be doing me a favor. Try not to be too boring without me, but I think you're managing that just fine. Go fuck yourself.
               ->END
                      
              ****[That was rude of me.]
                     ~charEmotion= "Indifferent"
                      It's fine. I'm used to it, just don't come over with that attitude again. I'm done with people like that in my life, it's enough enduring that from my parents. Anyway, how was your day?
                     ->DAY
             
            
*[Just like I imagined..]
    ~charEmotion= "Indifferent"
     Shoot. Am I that predictable? Or maybe you just already know me too well. Either way, zero points to me. 
     -> DAY
            
 == DAY ==  
*[It was bad. I got soaked by a car.]
  ~charEmotion= "Neutral"
    Don't worry, its all part of the plan. Afraid of a little mud?
   ** [...No]
   ~SmileResponse()
    I had planned for us to go do some totally legal graverobbing together. Nothing brings two souls together more than good old theft from dead people. Let's just say, it's a bonding experience like no other.
        -> DOG

   **[No!]
   ~HappyResponse()
    That's the spirit! We're going to dig up some history - literally. Graverobbing, but in a fun, "this could totally be legal" way. Nothing brings two souls together than good old theft from dead people. Plus, a skeleton is honestly pretty interesting to examine. Except for the smell.
             -> DOG

   **[Yes?]
   ~AnnoyedResponse()
      I had planned for us to go do some totally legal graverobbing together. Nothing brings two souls together more than good old theft from dead people. Plus, a skeleton is honestly pretty interesting to examine. Except for the smell.
        -> DOG

    
*[It was nothing special, just rotted in bed.]
     ~AnnoyedResponse()
     I love rotting
             ->DOG

* [It was good, hung out with my dog all day!]
~charEmotion="Happy"
    Oh, you have a dog? Even if I'm obviously a cat person, I love dogs. I don't really care for humans that much, but animals are the only good parts of this world.
   ** [Honestly, same.]
   I think hanging out with an animal has always been like an escape for me, ever since I was a kid. It's this kind of unconditional love that you can't really find in any other being, at least if your parents are like mine.
    ~HappyResponse()
         -> DOG
   **[Humans are superior.]
   ~SmileResponse()
    I had planned for us to go do some totally legal graverobbing together. Nothing brings two souls together more than good old theft from dead people. Plus, a skeleton is honestly pretty interesting to examine.
         -> DOG
   **[HEJ]
   ~AnnoyedResponse()
       I had planned for us to go do some totally legal graverobbing together. Nothing brings two souls together more than good old theft from dead people. Plus, a skeleton is honestly pretty interesting to examine.
             --> DOG
  
 == DOG ==  
 
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
        
        