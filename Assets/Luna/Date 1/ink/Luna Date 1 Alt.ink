VAR charName="Luna"

VAR charEmotion="InDistance"
VAR loveAmount=0


Hey, Over here!
*[__!__]
     ~charEmotion= "Indifferent"
     Sorry, not a lot of people come by here, I'm assuming you're my date for the evening?___ right?
    ** [Depends, are you Luna?]
        ~charEmotion= "Neutral"
        That would be me. I know this isn't most peoples ideal first date, so I'm happy you showed up, although you oufit choice is...not what i expected.
            -> OUTFITDILLEMA
        
    ** [Yep,Nice to meet you!]
           ~HappyResponse()
        Nice to meet you too.I know this isn't most peoples ideal first date, so I'm happy you showed up, although you oufit choice is...not what i expected.
             -> OUTFITDILLEMA
               
               
 == OUTFITDILLEMA ==
 * [Oh, was I supposed to wear something special?]
     ~SmileResponse()
      nah, I'm just kidding with you, I like it, Gives you personality. Your clothes might get a bit dirty tho.
            -> DIRTY
                        
* [I don't care what you think]
      ~AnnoyedResponse()
       Ooookay, wow, someone's in a mood. 
        **[...sorry]
         ~charEmotion= "Neutral"
          Your clothes might get a bit dirty tho.
         -> DIRTY
         **[Ye, well it wasn't a very nice thing to say]
            C'mon don't be so dramatic, I'm sorry okay.
           *** [...Fine]
            Your clothes might get a bit dirty tho.
            -> DIRTY
            ***[Maybe you should think before you speak then]
             ~NegativeResponse()
             Really? C'mon It was supposed to be a joke.
              ****[ It wasn't very funny]
               I've already apologized, what more do you want? If we can't even get along on one date then maybe this was a mistake.
                   -> ARGUING
                      
              ****[Just don't do it again]
                     ~charEmotion= "Indifferent"
                      Your clothes might get a bit dirty tho.
                     ->DIRTY
             
            
*[Is there something wrong with my outfit?]
    ~charEmotion= "Indifferent"
     No it’s fine, I was just expecting.. ah it doesn’t matter. Your clothes might get a bit dirty tho.
     -> DIRTY
            
 == DIRTY ==  
*[Dirty?]
  ~charEmotion= "Neutral"
    Afraid of a little mud?
   ** [...No]
    I Had planned for us to go do some totally legal graverobbing together. Nothing brings to souls together than good old theft from dead people. Plus we might even get to outrun the cops. 
        -> GRAVEROBBING

   **[No!]
   ~HappyResponse()
    I Had planned for us to go do some totally legal graverobbing together. Nothing brings to souls together than good old theft from dead people. Plus we might even get to outrun the cops. 
             -> GRAVEROBBING

   **[yes?]
      I Had planned for us to go do some totaly legal graverobbing together. Nothing brings to souls together than good old theft from dead people. Plus If things get exiting we might even have to outrun the cops. 
        -> GRAVEROBBING

    
*[I don't want to get dirty]
     ~AnnoyedResponse()
     C'mon, wheres your sense of adventure? A little dirt never hurt anybody. I Had planned for us to go do some totaly legal graverobbing together. Nothing brings to souls together than good old theft from dead people. Plus we might even get to outrun the cops. 
             ->GRAVEROBBING

* [...huh?]
    Afraid of a little mud? It doesn't bite 
   ** [...No]
   SICK! Let's get down and dirty, but not in the sexual way. Or something. 
    ~HappyResponse()
         -> GRAVEROBBING
   **[No!]
    I Had planned for us to go do some totaly legal graverobbing together. Nothing brings to souls together than good old theft from dead people. Plus If things get exiting we might even have to outrun the cops. 
         -> GRAVEROBBING
 
   
   **[yes?]
       I Had planned for us to go do some totaly legal graverobbing together. Nothing brings to souls together than good old theft from dead people.
             -> GRAVEROBBING
  
 == GRAVEROBBING==  
 
   *[Isn't that like, actually illegal tho?]
         ~charEmotion= "Indifferent"
          well, Only if you get caught, And I happen to be a profensional. C'mon it even say's so in my bio. I promise it will be fun, we might even make profit. 
             -> CRIMES
             
    *[Fuck yes!]
    That's the spirit! C'mon, I've already picked out a few graves to choose from. If we're lucky we'll manage to dig up one of the really rich ones. No one says no to some free gold jewellery right?
    -> CRIMES   
    

   *[uhm, What The Actual Fuck?]
         ~AnnoyedResponse()
         C'mon, It was litterally in my bio that i enjoy spending time with my cat and digging up the dead...You did read it right? Because if you didn't then kinda weirdshowing up at a graveyard.Like I litterally asked you to bring a shovel!
       **[I thougt you were joking!]
             ...No? Why did you else think I asked you to show up here after dark? And specificaly asked you to make sure you wern't being followed? And the fact that I asked you to bring a shovel maybe would have clued you in.
       ***[maybe you're right, it could be kinda fun]
            ~charEmotion= "Neutral"
             Now that's the spirit! I got some fine ones picked out over here. Okay so, Shovel in hand, Head in the right place. Lets. Do. This. You go ahead and pick one of the three graves, since it's your first time and all. 
                 -> CRIMES
     
       ***[This is insane, I'm calling the cops]
          What? No, are really gonna do this? *sirens in the distance* shit! 
           ****[Over here!] 
                ~charEmotion="InDistance"
                 This is so not how I wanted today to go!
                 --> END
     
  == ARGUING ==  
   ~AnnoyedResponse()
   *[It seems like it was]
     ~charEmotion="Upset"
      Wow, really?, YOU messaged me first. What was this some sort of dare? Did you lose a bet so you had to go on a date with "emo girl" I'm done, you're just like the rest of them.
       **[...]
        ~charEmotion="InDistance"
             -->END
    *[No, I'm sorry, Ive just had a bad day]
        ~charEmotion= "Neutral"
        Okay, well no need to take it out on me. Next time just try to leave the negative energy at home, it doesn't make for a great first impression. Anyway
             -> DIRTY
    
  == CRIMES==
  *[grave to the right]
  ~AnnoyedResponse()
     Aweee, this must have been one of theese really poor guys. We really get unlucky, guy didn't even get buried in a nice suit or anything. Well, thats how it goes sometimes, better luck next time. if you want there to be a next time that is? 
           -> DATEEND
 * [grave in the midle]
    ~HappyResponse()
     Sick, This lady must have been someone really really important whilst she was alive. A watch, ruby, earings, several bracelets and a diamond ring. We really hit the jackpot with this one. We gotta do this again sometime, if you want there to be a next time?
                -> DATEEND
 * [grave to left]
   ~charEmotion= "Neutral"
     Ok so, not too much stuff, but not too shabby either. He's got a really nice watch and we might be able to get something for the shoes bu that's about it. We gotta do this again sometime, if you want there to be a next time?
                -> DATEEND
  
  == DATEEND==
 *[yes, this was fun]
    ~SmileResponse()
    I really thought so too, You'll have to text me and We'll get right on setting up our second date! Bye for now. 
        --> END
 *[...maybe]
    ~charEmotion= "Neutral"
    Oh, Was it not a fun first date? Or maybe not just your type of activity. Anyways I has fun, Jus send me a message if you'd be interested n hanging out a second time.
        --> END
 *[No]
    ~NegativeResponse()
    Oh, If you really didn't enjoy the date then why did you stay the entirity of I?You could have just told me you wanted to do something else, now I kinda got my hopes up... Aw well. 
        -->END


--> END
    
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
        
        