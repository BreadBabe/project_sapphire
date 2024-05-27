VAR charName="Luna"

VAR charEmotion="Angry"
VAR loveAmount=0

What the fuck? Were you just going through my stuff?
*[No, I wasn't!]
     ~AnnoyedResponse()
     Strange... I thought I saw you snooping through my things. Are you lying to me?
    ** [...Yeah.]
        ~NeutralResponse()
          Why? I've got some personal stuff in there that I don't want you to poke around in. If I wanted you to know my inner thoughts, I would tell you.
         ***[Because I thought it would be fun.]
              I guess I can appreciate the honesty... Did you even find anything of interest?
              ->STUFF
         ***[It's really not that deep.]
         Maybe not for you, because you probably don't have anything that you value in your home and walk around like an open book. Your attitude is starting to piss me off.
            ->ARGUING
         ***[Why do you care that much?]
         Because it's common sense to not snoop around in other peoples business? I mean, I'd probably do the same but... Did you even find anything of interest?
            -> STUFF
        
    ** [No, I promise!]
     ~NeutralResponse()
     And yet your eyes are saying something completely different. So... Care to tell me if you're lying?
             ***[I would never.]
              Well, I guess I'll have to take your word on it. Just remember, if you lie, I'll stab you. Kidding. Or am I? 
              ->HANGOUT
             ***[Well, maybe just a little bit.]
             I guess I can appreciate the honesty... Did you even find anything of interest?
              ->STUFF
             ***[Why, would you care if I did?]
             Because it's common sense to not snoop around in other peoples business? Not that I have any common sense, but your attitude is starting to piss me off.
              ->ARGUING
             
    **[I was just peaking...]
    ~AnnoyedResponse()
      Ouch. I've got some personal stuff in here that I don't want you to poke around in. If I wanted you to know my inner thoughts, I would tell you. Well let's be honest, I probably wouldn't.
              ***[Well, I found some weird shit..]
              Oh, did you now? Suddenly, this is Intriguing. Let's see if I can scare you away. What did you find?
               ->STUFF
             ***[It's really not that deep.]
             ~MadResponse()
             Maybe not for you, because you probably don't have anything that you value in your home and walk around like an open book. Accept that not everyone is like that. It's fucking rude.
             ->ARGUING
             ***[I'm totally kidding!]
             Has to be the funniest joke I've heard in years. Not. I feel like I'm witnessing the show flops in Baby Reindeer.
                   ****[I'm serious.]
                   Whatever. I just realized I don't care. 
                   ->HANGOUT
                   ****[You're kind of being a bitch.]
                   Thanks! And I don't even have to try. I honestly don't care what you think about me.
                   ->ARGUING
                   
             
*[You scared me!]
Sorry not sorry. That also didn't answer my question. Did you look through my stuff?
    ** [Calm down, it's not that deep.]
        ~MadResponse()
        Calm down? Don't you fucking talk to me like that. I've got some personal stuff in there that I don't want you to poke around in. If I wanted you to know my inner thoughts, I would tell you.
         ***[Then why don't you tell me?]
         It's our second date?! Why would I tell you my darkest secrets when I don't even know you yet? Why do you get to know more about me but I don't get to know anything about you? That's just unfair.
         ->STUFF
         
         ***[It's not that serious.]
         Maybe not for you, because you probably don't have anything that you value in your home and walk around like an open book. Accept that not everyone is like that. It's fucking rude.
            ->STUFF
         ***[Why do you care that much?]
         Because it's common sense to not snoop around in other peoples business? I invited you here and you disrespect me like this. It's fucking rude.
            -> STUFF
        
    ** [I didn't know it would piss you off.]
     ~NeutralResponse()
    Well then you clearly don't know me. I've got some personal stuff in there that I don't want you to poke around in. If I wanted you to know my inner thoughts, I would tell you.
             ***[Then why don't you tell me?]
             It's our second date?! Why would I tell you my darkest secrets when I don't even know you yet? Why do you get to know more about me but I don't get to know anything about you? That's just unfair.
             ->STUFF
             ***[Look, I'm sorry. I don't want to fight about this.]
             Well then maybe you should've thought twice before you snooped through my stuff. And here I was excited for us to watch a horror movie together.
             ->STUFF
             ***[It's really not that deep.]
             Maybe not for you, because you probably don't have anything that you value in your home and walk around like an open book. Accept that not everyone is like that. It's fucking rude.
             -> STUFF
             
    **[I was just peaking...]
    ~AnnoyedResponse()
      Ouch. I've got some personal stuff in here that I don't want you to poke around in. If I wanted you to know my inner thoughts, I would tell you. Well let's be honest, I probably wouldn't.
              ***[Well, I found some weird shit..]
              Oh, did you now? Suddenly, this is Intriguing. Let's see if I can scare you away. What did you find?
               ->STUFF
             ***[It's really not that deep.]
             ~MadResponse()
             Maybe not for you, because you probably don't have anything that you value in your home and walk around like an open book. Accept that not everyone is like that. It's fucking rude.
             ->ARGUING
             ***[I'm totally kidding!]
             Has to be the funniest joke I've heard in years. Not. I feel like I'm witnessing the show flops in Baby Reindeer.
                   ****[I'm serious.]
                   Whatever. I just realized I don't care. 
                   ->HANGOUT
                   ****[You're kind of being a bitch.]
                   Aww, thank you! That means a lot. And I don't even have to try. To be honest, I don't care what you think about me.
                   ->ARGUING
                   

*[I was just peaking...]
    ~AnnoyedResponse()
  Ouch. I've got some personal stuff in here that I don't want you to poke around in. If I wanted you to know my inner thoughts, I would tell you. Well let's be honest, I probably wouldn't.
        **[Well, I found some weird shit..]
              Oh, did you now? Suddenly, this is Intriguing. Let's see if I can scare you away. What did you find?
               ->STUFF
             **[It's really not that deep.]
             ~MadResponse()
             Maybe not for you, because you probably don't have anything that you value in your home and walk around like an open book. Accept that not everyone is like that. It's fucking rude.
                   ->ARGUING
             **[I'm totally kidding!]
             Has to be the funniest joke I've heard in years. Not. I feel like I'm witnessing the show flops in Baby Reindeer.
                   ****[I'm serious.]
                   Whatever. I just realized I don't care. 
                   ->HANGOUT
                   ****[You're kind of being a bitch.]
                   Thanks! And I don't even have to try. I honestly don't care what you think about me.
                   ->ARGUING
                   

== ARGUING ==  
*[Why do you always have to be so rude?]
  ~charEmotion= "Happy"
    I would've payed to see that. Is that all it takes to get you on a bad mood? Then we definitely have something in common, altough it would probably take less for me. Like just a person walking reeeeeeeally slowly in front of me. Pisses me off.
   ** [I'm usually pretty happy.]
   ~AnnoyedResponse()
     Oh. I guess I was just born depressed or something, sad straight out of the womb you know. So I can't really relate to that. What's that like?
          ***[It's great!]
          ->CIGARETTES
          ***[It's annoying sometimes.]
          ->CIGARETTES

   **[I get annoyed pretty easily.]
   ~SmileResponse()
    Yeah? You should see me behind the wheel. The road rage is unhinged. I could probably win an award for angriest driver alive. Young men behind the wheel should be castrated.
             ***[Cut their balls off!]
             Hang them in the town square! By the balls!
                 ****[Fuck yes!]
                 ->CIGARETTES
                 ****[Wait what?]
                  ->CIGARETTES
             ***[Woah...]
             ->CIGARETTES

   **[Maybe? I haven't thought about it.]
   ~AnnoyedResponse()
      That seems right, not a single thought behind those eyes. Maybe you don't have any brain cells? It's just all parasites slowly eating you from the inside. Parasites are probably made out of cells though, but you know.
         ***[What the fuck?]
         ->CIGARETTES
         ***[You're funny, I'll give that to you.]
        -> CIGARETTES

    
*[It was nothing special, just rotted in bed.]
     ~charEmotion="Neutral"
     Rotting is underrated. I like to pretend that I'm a decaying corpse when I lay in bed sometimes. There's something weirdly comforting about that. Just wasting away, you know.
         **[That's not really what I meant.]
         ~AngryResponse()
         You mean that you wouldn't want to slowly become one with the bed? And not having to worry about anything in your life ever again? Your loss.
             ***[Actually, that sounds great.]
             ->CIGARETTES
             ***[I'd probably hate that.]
             ->CIGARETTES
             
         **[I'd love to be a decaying corpse.]
         ~HappyResponse()
         Just slowly become one with the bed and not having to worry about anything in your life ever again. Like rent. Or cleaning. Or your childhood traumas.
             ***[Wait what?]
             ->CIGARETTES
             ***[That would be sweet.]
             ->CIGARETTES
         
         **[If you're a corpse, I'm a corpse.]
         ~IndifferentResponse()
         Let's not get all lovey dovey here. You barely know me, or the skeletons in my closet. Literally.
            ***[I take it back, I guess?]
            ->CIGARETTES
            ***[Why not? Yolo?]
            ->CIGARETTES

* [It was good, hung out with my dog all day!]
~charEmotion="Smile"
    Oh, you have a dog? Even if I'm obviously a cat person, I love dogs. I don't really care for humans that much, but animals are the only good part of this world.
   ** [Honestly, same.]
   ~HappyResponse()
   I think hanging out with an animal has always been like an escape for me, ever since I was a kid. It's this kind of unconditional love that you can't really find in any other being, at least if your parents are like mine.
          ***[Facts!]
          ->CIGARETTES
          ***[What about your parents?]
          ->CIGARETTES

   **[Humans are superior.]
   ~AngryResponse()
   That must be the most stupid thing I've heard in the two decades that I've been alive. I think we should just all stop reproducing, and walk hand in hand into extinction. Just like Rust said in True Detective you know?
         ***[What's True Detective?]
          Dude. You've got some learning to do.
             ****[What?]
              ->CIGARETTES
         ***[Rust for the win!]
         ->CIGARETTES
       
   **[I love animals!]
   ~HappyResponse()
       I think hanging out with an animal has always been like an escape for me, ever since I was a kid. It's this kind of unconditional love that you can't really find in any other being, at least if your parents are like mine.
          ***[Facts!]
          ->CIGARETTES
          ***[What about your parents?]
          ->CIGARETTES

           
== STUFF ==  
*[What's up with the satanic ritual?]
  ~charEmotion= "Happy"
    Oh, that old thing? It's just something I like to do when I'm bored. I've been trying to summon the devil for a while, and look, here you are!
   ** [Funny..]
   ~AnnoyedResponse()
     Oh, scared, are you? I promise he doesn't bite 
          ***[It's great!]
          ->HANGOUT
          ***[It's annoying sometimes.]
          ->ARGUING

   **[Why would you do that?!]
   ~SmileResponse()
    Have you forgotten who you're on a date with? Are you suffering from early dementia? Poor thing. I just have some unfinished business with him that I'd like to discuss.
             ***[That's actually freaking me out.]
             Hang them in the town square! By the balls!
                 ****[Fuck yes!]
                 ->CIGARETTES
                 ****[Wait what?]
                  ->CIGARETTES
             ***[You're kind of hard to forget.]
             ->HANGOUT
             ***[Can I join?]
             ->HANGOUT

   **[That's so sick!]
   ~AnnoyedResponse()
      That seems right, not a single thought behind those eyes. Maybe you don't have any brain cells? It's just all parasites slowly eating you from the inside. Parasites are probably made out of cells though, but you know.
         ***[What the fuck?]
         ->CIGARETTES
         ***[You're funny, I'll give that to you.]
        -> CIGARETTES

    
*[I found nothing. Just Kidding.]
     ~charEmotion="Neutral"
     Rotting is underrated. I like to pretend that I'm a decaying corpse when I lay in bed sometimes. There's something weirdly comforting about that. Just wasting away, you know.
         **[That's not really what I meant.]
         ~AngryResponse()
         You mean that you wouldn't want to slowly become one with the bed? And not having to worry about anything in your life ever again? Your loss.
             ***[Actually, that sounds great.]
             ->CIGARETTES
             ***[I'd probably hate that.]
             ->CIGARETTES
             
         **[I'd love to be a decaying corpse.]
         ~HappyResponse()
         Just slowly become one with the bed and not having to worry about anything in your life ever again. Like rent. Or cleaning. Or your childhood traumas.
             ***[Wait what?]
             ->CIGARETTES
             ***[That would be sweet.]
             ->CIGARETTES
         
         **[If you're a corpse, I'm a corpse.]
         ~IndifferentResponse()
         Let's not get all lovey dovey here. You barely know me, or the skeletons in my closet. Literally.
            ***[I take it back, I guess?]
            ->CIGARETTES
            ***[Why not? Yolo?]
            ->CIGARETTES

* [Why do you have a voodoo doll?]
~charEmotion="Smile"
    Oh, that old thing? That's my best friend. Don't worry, I've totally used it on you.
   ** [Wait.. Really?]
   ~HappyResponse()
   I think hanging out with an animal has always been like an escape for me, ever since I was a kid. It's this kind of unconditional love that you can't really find in any other being, at least if your parents are like mine.
          ***[Facts!]
          ->CIGARETTES
          ***[What about your parents?]
          ->CIGARETTES

   **[That's why I've felt a stabbing pain all week.]
   ~AngryResponse()
   That must be the most stupid thing I've heard in the two decades that I've been alive. I think we should just all stop reproducing, and walk hand in hand into extinction. Just like Rust said in True Detective you know?
         ***[What's True Detective?]
          Dude. You've got some learning to do.
             ****[What?]
              ->CIGARETTES
         ***[Rust for the win!]
         ->CIGARETTES
       
   **[I hope you have!]
   ~HappyResponse()
       Oh, don't feel special. I wouldn't use it on a useless mortal such as yourself. 
          ***[Ouch!]
          ->CIGARETTES
          ***[What about your parents?]
          ->CIGARETTES
   
        
== MURDER ==  
*[It was bad. I got soaked by a car on the way here.]
  ~charEmotion= "Happy"
    I would've payed to see that. Is that all it takes to get you on a bad mood? Then we definitely have something in common, altough it would probably take less for me. Like just a person walking reeeeeeeally slowly in front of me. Pisses me off.
   ** [I'm usually pretty happy.]
   ~AnnoyedResponse()
     Oh. I guess I was just born depressed or something, sad straight out of the womb you know. So I can't really relate to that. What's that like?
          ***[It's great!]
          ->CIGARETTES
          ***[It's annoying sometimes.]
          ->CIGARETTES

   **[I get annoyed pretty easily.]
   ~SmileResponse()
    Yeah? You should see me behind the wheel. The road rage is unhinged. I could probably win an award for angriest driver alive. Young men behind the wheel should be castrated.
             ***[Cut their balls off!]
             Hang them in the town square! By the balls!
                 ****[Fuck yes!]
                 ->CIGARETTES
                 ****[Wait what?]
                  ->CIGARETTES
             ***[Woah...]
             ->CIGARETTES

   **[Maybe? I haven't thought about it.]
   ~AnnoyedResponse()
      That seems right, not a single thought behind those eyes. Maybe you don't have any brain cells? It's just all parasites slowly eating you from the inside. Parasites are probably made out of cells though, but you know.
         ***[What the fuck?]
         ->CIGARETTES
         ***[You're funny, I'll give that to you.]
        -> CIGARETTES

    
*[It was nothing special, just rotted in bed.]
     ~charEmotion="Neutral"
     Rotting is underrated. I like to pretend that I'm a decaying corpse when I lay in bed sometimes. There's something weirdly comforting about that. Just wasting away, you know.
         **[That's not really what I meant.]
         ~AngryResponse()
         You mean that you wouldn't want to slowly become one with the bed? And not having to worry about anything in your life ever again? Your loss.
             ***[Actually, that sounds great.]
             ->CIGARETTES
             ***[I'd probably hate that.]
             ->CIGARETTES
             
         **[I'd love to be a decaying corpse.]
         ~HappyResponse()
         Just slowly become one with the bed and not having to worry about anything in your life ever again. Like rent. Or cleaning. Or your childhood traumas.
             ***[Wait what?]
             ->CIGARETTES
             ***[That would be sweet.]
             ->CIGARETTES
         
         **[If you're a corpse, I'm a corpse.]
         ~IndifferentResponse()
         Let's not get all lovey dovey here. You barely know me, or the skeletons in my closet. Literally.
            ***[I take it back, I guess?]
            ->CIGARETTES
            ***[Why not? Yolo?]
            ->CIGARETTES

* [It was good, hung out with my dog all day!]
~charEmotion="Smile"
    Oh, you have a dog? Even if I'm obviously a cat person, I love dogs. I don't really care for humans that much, but animals are the only good part of this world.
   ** [Honestly, same.]
   ~HappyResponse()
   I think hanging out with an animal has always been like an escape for me, ever since I was a kid. It's this kind of unconditional love that you can't really find in any other being, at least if your parents are like mine.
          ***[Facts!]
          ->CIGARETTES
          ***[What about your parents?]
          ->CIGARETTES

   **[Humans are superior.]
   ~AngryResponse()
   That must be the most stupid thing I've heard in the two decades that I've been alive. I think we should just all stop reproducing, and walk hand in hand into extinction. Just like Rust said in True Detective you know?
         ***[What's True Detective?]
          Dude. You've got some learning to do.
             ****[What?]
              ->CIGARETTES
         ***[Rust for the win!]
         ->CIGARETTES
       
   **[I love animals!]
   ~HappyResponse()
       I think hanging out with an animal has always been like an escape for me, ever since I was a kid. It's this kind of unconditional love that you can't really find in any other being, at least if your parents are like mine.
          ***[Facts!]
          ->CIGARETTES
          ***[What about your parents?]
          ->CIGARETTES

                 
== HANGOUT ==  
*[It was bad. I got soaked by a car on the way here.]
  ~charEmotion= "Happy"
    I would've payed to see that. Is that all it takes to get you on a bad mood? Then we definitely have something in common, altough it would probably take less for me. Like just a person walking reeeeeeeally slowly in front of me. Pisses me off.
   ** [I'm usually pretty happy.]
   ~AnnoyedResponse()
     Oh. I guess I was just born depressed or something, sad straight out of the womb you know. So I can't really relate to that. What's that like?
          ***[It's great!]
          ->CIGARETTES
          ***[It's annoying sometimes.]
          ->CIGARETTES

   **[I get annoyed pretty easily.]
   ~SmileResponse()
    Yeah? You should see me behind the wheel. The road rage is unhinged. I could probably win an award for angriest driver alive. Young men behind the wheel should be castrated.
             ***[Cut their balls off!]
             Hang them in the town square! By the balls!
                 ****[Fuck yes!]
                 ->CIGARETTES
                 ****[Wait what?]
                  ->CIGARETTES
             ***[Woah...]
             ->CIGARETTES

   **[Maybe? I haven't thought about it.]
   ~AnnoyedResponse()
      That seems right, not a single thought behind those eyes. Maybe you don't have any brain cells? It's just all parasites slowly eating you from the inside. Parasites are probably made out of cells though, but you know.
         ***[What the fuck?]
         ->CIGARETTES
         ***[You're funny, I'll give that to you.]
        -> CIGARETTES

    
*[It was nothing special, just rotted in bed.]
     ~charEmotion="Neutral"
     Rotting is underrated. I like to pretend that I'm a decaying corpse when I lay in bed sometimes. There's something weirdly comforting about that. Just wasting away, you know.
         **[That's not really what I meant.]
         ~AngryResponse()
         You mean that you wouldn't want to slowly become one with the bed? And not having to worry about anything in your life ever again? Your loss.
             ***[Actually, that sounds great.]
             ->CIGARETTES
             ***[I'd probably hate that.]
             ->CIGARETTES
             
         **[I'd love to be a decaying corpse.]
         ~HappyResponse()
         Just slowly become one with the bed and not having to worry about anything in your life ever again. Like rent. Or cleaning. Or your childhood traumas.
             ***[Wait what?]
             ->CIGARETTES
             ***[That would be sweet.]
             ->CIGARETTES
         
         **[If you're a corpse, I'm a corpse.]
         ~IndifferentResponse()
         Let's not get all lovey dovey here. You barely know me, or the skeletons in my closet. Literally.
            ***[I take it back, I guess?]
            ->CIGARETTES
            ***[Why not? Yolo?]
            ->CIGARETTES

* [It was good, hung out with my dog all day!]
~charEmotion="Smile"
    Oh, you have a dog? Even if I'm obviously a cat person, I love dogs. I don't really care for humans that much, but animals are the only good part of this world.
   ** [Honestly, same.]
   ~HappyResponse()
   I think hanging out with an animal has always been like an escape for me, ever since I was a kid. It's this kind of unconditional love that you can't really find in any other being, at least if your parents are like mine.
          ***[Facts!]
          ->CIGARETTES
          ***[What about your parents?]
          ->CIGARETTES

   **[Humans are superior.]
   ~AngryResponse()
   That must be the most stupid thing I've heard in the two decades that I've been alive. I think we should just all stop reproducing, and walk hand in hand into extinction. Just like Rust said in True Detective you know?
         ***[What's True Detective?]
          Dude. You've got some learning to do.
             ****[What?]
              ->CIGARETTES
         ***[Rust for the win!]
         ->CIGARETTES
       
   **[I love animals!]
   ~HappyResponse()
       I think hanging out with an animal has always been like an escape for me, ever since I was a kid. It's this kind of unconditional love that you can't really find in any other being, at least if your parents are like mine.
          ***[Facts!]
          ->CIGARETTES
          ***[What about your parents?]
          ->CIGARETTES

== ENDING ==  
*[It was bad. I got soaked by a car on the way here.]
  ~charEmotion= "Happy"
    I would've payed to see that. Is that all it takes to get you on a bad mood? Then we definitely have something in common, altough it would probably take less for me. Like just a person walking reeeeeeeally slowly in front of me. Pisses me off.
   ** [I'm usually pretty happy.]
   ~AnnoyedResponse()
     Oh. I guess I was just born depressed or something, sad straight out of the womb you know. So I can't really relate to that. What's that like?
          ***[It's great!]
          ->CIGARETTES
          ***[It's annoying sometimes.]
          ->CIGARETTES

   **[I get annoyed pretty easily.]
   ~SmileResponse()
    Yeah? You should see me behind the wheel. The road rage is unhinged. I could probably win an award for angriest driver alive. Young men behind the wheel should be castrated.
             ***[Cut their balls off!]
             Hang them in the town square! By the balls!
                 ****[Fuck yes!]
                 ->CIGARETTES
                 ****[Wait what?]
                  ->CIGARETTES
             ***[Woah...]
             ->CIGARETTES

   **[Maybe? I haven't thought about it.]
   ~AnnoyedResponse()
      That seems right, not a single thought behind those eyes. Maybe you don't have any brain cells? It's just all parasites slowly eating you from the inside. Parasites are probably made out of cells though, but you know.
         ***[What the fuck?]
         ->CIGARETTES
         ***[You're funny, I'll give that to you.]
        -> CIGARETTES

    
*[It was nothing special, just rotted in bed.]
     ~charEmotion="Neutral"
     Rotting is underrated. I like to pretend that I'm a decaying corpse when I lay in bed sometimes. There's something weirdly comforting about that. Just wasting away, you know.
         **[That's not really what I meant.]
         ~AngryResponse()
         You mean that you wouldn't want to slowly become one with the bed? And not having to worry about anything in your life ever again? Your loss.
             ***[Actually, that sounds great.]
             ->CIGARETTES
             ***[I'd probably hate that.]
             ->CIGARETTES
             
         **[I'd love to be a decaying corpse.]
         ~HappyResponse()
         Just slowly become one with the bed and not having to worry about anything in your life ever again. Like rent. Or cleaning. Or your childhood traumas.
             ***[Wait what?]
             ->CIGARETTES
             ***[That would be sweet.]
             ->CIGARETTES
         
         **[If you're a corpse, I'm a corpse.]
         ~IndifferentResponse()
         Let's not get all lovey dovey here. You barely know me, or the skeletons in my closet. Literally.
            ***[I take it back, I guess?]
            ->CIGARETTES
            ***[Why not? Yolo?]
            ->CIGARETTES

* [It was good, hung out with my dog all day!]
~charEmotion="Smile"
    Oh, you have a dog? Even if I'm obviously a cat person, I love dogs. I don't really care for humans that much, but animals are the only good part of this world.
   ** [Honestly, same.]
   ~HappyResponse()
   I think hanging out with an animal has always been like an escape for me, ever since I was a kid. It's this kind of unconditional love that you can't really find in any other being, at least if your parents are like mine.
          ***[Facts!]
          ->CIGARETTES
          ***[What about your parents?]
          ->CIGARETTES

   **[Humans are superior.]
   ~AngryResponse()
   That must be the most stupid thing I've heard in the two decades that I've been alive. I think we should just all stop reproducing, and walk hand in hand into extinction. Just like Rust said in True Detective you know?
         ***[What's True Detective?]
          Dude. You've got some learning to do.
             ****[What?]
              ->CIGARETTES
         ***[Rust for the win!]
         ->CIGARETTES
       
   **[I love animals!]
   ~HappyResponse()
       I think hanging out with an animal has always been like an escape for me, ever since I was a kid. It's this kind of unconditional love that you can't really find in any other being, at least if your parents are like mine.
          ***[Facts!]
          ->CIGARETTES
          ***[What about your parents?]
          ->CIGARETTES
          
== GRANDMA ==  
*[It was bad. I got soaked by a car on the way here.]
  ~charEmotion= "Happy"
    I would've payed to see that. Is that all it takes to get you on a bad mood? Then we definitely have something in common, altough it would probably take less for me. Like just a person walking reeeeeeeally slowly in front of me. Pisses me off.
   ** [I'm usually pretty happy.]
   ~AnnoyedResponse()
     Oh. I guess I was just born depressed or something, sad straight out of the womb you know. So I can't really relate to that. What's that like?
          ***[It's great!]
          ->CIGARETTES
          ***[It's annoying sometimes.]
          ->CIGARETTES

   **[I get annoyed pretty easily.]
   ~SmileResponse()
    Yeah? You should see me behind the wheel. The road rage is unhinged. I could probably win an award for angriest driver alive. Young men behind the wheel should be castrated.
             ***[Cut their balls off!]
             Hang them in the town square! By the balls!
                 ****[Fuck yes!]
                 ->CIGARETTES
                 ****[Wait what?]
                  ->CIGARETTES
             ***[Woah...]
             ->CIGARETTES

   **[Maybe? I haven't thought about it.]
   ~AnnoyedResponse()
      That seems right, not a single thought behind those eyes. Maybe you don't have any brain cells? It's just all parasites slowly eating you from the inside. Parasites are probably made out of cells though, but you know.
         ***[What the fuck?]
         ->CIGARETTES
         ***[You're funny, I'll give that to you.]
        -> CIGARETTES

    
*[It was nothing special, just rotted in bed.]
     ~charEmotion="Neutral"
     Rotting is underrated. I like to pretend that I'm a decaying corpse when I lay in bed sometimes. There's something weirdly comforting about that. Just wasting away, you know.
         **[That's not really what I meant.]
         ~AngryResponse()
         You mean that you wouldn't want to slowly become one with the bed? And not having to worry about anything in your life ever again? Your loss.
             ***[Actually, that sounds great.]
             ->CIGARETTES
             ***[I'd probably hate that.]
             ->CIGARETTES
             
         **[I'd love to be a decaying corpse.]
         ~HappyResponse()
         Just slowly become one with the bed and not having to worry about anything in your life ever again. Like rent. Or cleaning. Or your childhood traumas.
             ***[Wait what?]
             ->CIGARETTES
             ***[That would be sweet.]
             ->CIGARETTES
         
         **[If you're a corpse, I'm a corpse.]
         ~IndifferentResponse()
         Let's not get all lovey dovey here. You barely know me, or the skeletons in my closet. Literally.
            ***[I take it back, I guess?]
            ->CIGARETTES
            ***[Why not? Yolo?]
            ->CIGARETTES

* [It was good, hung out with my dog all day!]
~charEmotion="Smile"
    Oh, you have a dog? Even if I'm obviously a cat person, I love dogs. I don't really care for humans that much, but animals are the only good part of this world.
   ** [Honestly, same.]
   ~HappyResponse()
   I think hanging out with an animal has always been like an escape for me, ever since I was a kid. It's this kind of unconditional love that you can't really find in any other being, at least if your parents are like mine.
          ***[Facts!]
          ->CIGARETTES
          ***[What about your parents?]
          ->CIGARETTES

   **[Humans are superior.]
   ~AngryResponse()
   That must be the most stupid thing I've heard in the two decades that I've been alive. I think we should just all stop reproducing, and walk hand in hand into extinction. Just like Rust said in True Detective you know?
         ***[What's True Detective?]
          Dude. You've got some learning to do.
             ****[What?]
              ->CIGARETTES
         ***[Rust for the win!]
         ->CIGARETTES
       
   **[I love animals!]
   ~HappyResponse()
       I think hanging out with an animal has always been like an escape for me, ever since I was a kid. It's this kind of unconditional love that you can't really find in any other being, at least if your parents are like mine.
          ***[Facts!]
          ->CIGARETTES
          ***[What about your parents?]
          ->CIGARETTES

== CIGARETTES==  
~charEmotion="Annoyed"
 FUCK! Sorry for cutting you off. I just realized that I forgot to buy cigarettes. I know. Probably a turn off, right? But what can I do, everyone in my band smokes like Snoop Dogg. I don't do the weed though, only on special occasions.
   *[I smoke too!]
         ~HappyResponse()
          You do? I'll buy two packs then. And we can smoke the night away, just like Satan intended us to. I'll be right back, and don't do anything weird to Lucifer!
             **[See you soon!]
             -> END
             
    *[Smoking kills, you know?]
    ~SmileResponse()
    So? That's kind of the point. We're all slowly dying anyway, so I'm just trying to make the road there shorter. Anyway, I'll be right back, and don't do anything weird to Lucifer!
         **[See you soon!]
         -> END
    

   *[I'm fine with that.]
   ~AngryResponse()
         Didn't know I needed your permission, but note taken I guess. You will walk out of here smelling like death, and that's kind of the point. Anyway, I'll be right back, and don't do anything weird to Lucifer!
         **[See you soon!]
         ->END

===function Death===
~loveAmount=-1000
    
===function MadResponse===
~charEmotion="Mad"
~loveAmount--

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
        
        