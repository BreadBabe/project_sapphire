VAR charName="Luna"

VAR charEmotion="Indifferent"
VAR loveAmount=0

Jeez, sorry. My cat totally freaked out when you rang the doorbell. I should probably take that shit down.
*[Oops!]
     ~charEmotion= "Neutral"
     It's fine, he can be a bit of a drama queen. Wondering where he got that? I'm happy you made it here and weren't swepped away in the rain!
    ** [What's his name?]
        ~SmileResponse()
        That's Lucifer, my furry little troublemaker. Can't imagine him being anything but dramatic. But yeah, welcome to my humble abode. Make yourself at home!
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
      Hey, any time. I need motivation for cleaning anyway. I could never be one of those TikTok clean girls.
            ***[You're on TikTok?]
            God, no. I don't have socials. Well, I have my bands socials but that's more for promoting. You see, being an artist these days are tough. It used to be better. I say, as if I'm a hundred years old. Anyway, how was your day?
            -> DAY
            ***[Clean girls suck anyway.]
            Damn right they do! 
            -> DAY
      **[Then why did you invite me?]
       Oh, feeling special? I can assure you you're not. Just needed a break from talking to Lucifer about the meaning of life.. 
            ***[That's a bit harsh.]
            Sure. So, how was your day? Anything interesting happen?
            ->DAY
            ***[What if I do?]
            Sure. So, how was your day? Anything interesting happen?
            ->DAY
                 
                        
* [Isn't it a bit too much?]
      ~AnnoyedResponse()
       Too much? That's rich coming from someone whose idea of decoration is probably a poster and a beanbag chair. But hey, if you're not feeling it, I'm sure you'll get used to it. Or not.
        **[I like too much.]
         ~charEmotion= "Indifferent"
          Well, shit. Look who's the drama queen now. Lucifer definitely got it from me. But hey, excess is my middle name. It's either go big or go home, and I'm already home. Anyway, how was your day?
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
             
            
*[Just like I imagined!]
    ~charEmotion= "Indifferent"
     Shoot. Guess I need to work on my element of surprise, huh? Zero points to me. Anyway, welcome to the predictably unpredictable chaos of my life.
     
        **[Don't worry, I like it.]
        Worry? You think I'd care that much of your opinion? Cute. 
        
        
           ***[Ouch! It was a compliment.]
           Yeah, sorry. I'm not too good with those, but maybe you've already figured that out. I guess I'm just not used to it.
           
              ****[I feel you.]
              You do? You don't strike me as the brooding-depressed-I-want-to-die-right-fucking-now-Type. But I guess every onion has its layers. That sounded gross. Anyway, how was your day?
              ->DAY
              
              ****[What do you mean?]
              I don't really feel like talking about deep stuff yet. I'm too sober. Soooo.. I'm going to awkwardly change topic now. Because that's how I am. How was your day?
              ->DAY
              
              ****[Really?]
              Oh, don't give me that look. I know I'm not ugly. I just don't talk to people that much, okay? I like to stay in my corner and observe.
                 *****[Just like Lucifer!]
                 You remembered his name! Even if I just told you seconds ago, shows you don't have the memory of a goldfish. 
                    ******[Do I get to pet him now?]
                   Let's not get ahead of ourselves here. 
                   ->DAY
                    ******[I love cats!]
                    
                    ->DAY
                 
                 ->DAY
                 *****[Just like your kitty!]
                 You can't even remember Lucifers name? I just told you seconds ago. You must have the memory of a goldfish, dickhead. 
                  ******[Oh shit...]
                  I'll let it pass. For now. Just watch out, I might kill you in your sleep. Anyway, how was your day?
                  ->DAY
                  ******[Woopsie?]
                  I'll let it pass. For now. Just watch out, I might kill you in your sleep. Anyway, how was your day?
                  ->DAY
              
              
          ***[Fair enough!]
           HEJ
           ->DAY
        
          
        **[Predicatble indeed.]
        Worry? You think I'd care that much of your opinion? Cute.
           ***[hej]
           HEJ
           ->DAY
           ***[OK]
           HEJ
           ->DAY
           
        

 == DAY ==  
*[It was bad. I got soaked by a car on the way here.]
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
 
   *[Is your cat okay with dogs?]
         ~charEmotion= "Indifferent"
          Well, only if you get caught, And I happen to be a professional. I promise it will be fun, we might even make a profit out of it. 
          **[Alright!]
             -> CIGARETTES
             
    *[His name is Astro.]
    ~HappyResponse()
    That's the spirit! If we're lucky we might find something of value. Or not, but wouldn't you love to see a dead person anyway? SPOOKY.
    **[Alright!]
    -> CIGARETTES
    

   *[I was thinking about bringing him over.]
         ~AnnoyedResponse()
         Hey, don't freak out, okay? It was right there in my bio: 'I like chilling with my cat and occasionally, you know, exploring cemeteries'. You did read it, right? Showing up here in the dead of night sort of implies you were at least a little curious.
       **[I thougt you were joking!]
       ~IndifferentResponse()
             Nope. What part of 'meeting in a graveyard at night' screams 'just kidding' to you? I thought the part where I told you to make sure you're not followed would have been a clear giveaway. 
       ***[Maybe you're right, it could be kinda fun]
            ~NeutralResponse()
             Now that's the spirit! There's something thrilling about uncovering stories, and hopefully gold, that was buried along with bones. So, shovel in hand, let's do this. It's your first time after all, and I want it to be memorable.
             ****[Alright]
                 ->CIGARETTES
                 
                 
                 

== CIGARETTES==  
~charEmotion="Smile"
 FUCK! Sorry. I just realized that I forgot to buy cigarettes. I know. Probably a turn off, right? But what can I do, everyone in my band smokes like Snoop Dogg. I don't do the weed though, only on special occasions.
   *[I smoke too!]
         ~charEmotion= "Indifferent"
          Takes more than that to tire these massive arms. Haha. But honestly, a bit. Anyway, pick one of the three graves and I'll meet you back here when you're done!
          **[Sounds like a plan!]
             -> END
             
    *[Smoking kills, you know?]
    ~SmileResponse()
    Great! Just pick one of the three graves and I'll meet you back here when you're done collecting stuff from the dead!
    **[Sounds like a plan!]
    -> END
    

   *[I'm fine with that.]
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
        
        