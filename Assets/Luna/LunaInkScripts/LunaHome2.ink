VAR charName="Luna"
VAR charEmotion="Angry"
VAR loveAmount=0

What the fuck? Were you just going through my stuff?
*[No, I wasn't!]
     ~AnnoyedResponse()
     Strange... I thought I saw you snooping through my things. Wait, are you lying to me?
    ** [...Yeah.]
        ~IndifferentResponse()
          Why? I've got some personal stuff in there that I don't want you to poke around in. If I wanted you to know my inner thoughts, I would tell you. Well, let's be honest, I probably wouldn't.
         ***[Because I thought it would be fun.]
              I guess I can appreciate the honesty..? Did you even find anything of interest?
              ~NeutralResponse()
              ->STUFF
         ***[It's really not that deep.]
         ~AngryResponse()
         Maybe not for you, because you probably don't have anything that you value in your home and walk around like an open book. Your attitude is starting to piss me off.
            ->ARGUING
         ***[Why do you care that much?]
         ~AngryResponse()
         Because it's common sense to not snoop around in other peoples business? I mean, I'd probably do the same but... Your attitude is kind of starting to piss me off.
            -> ARGUING
        
    ** [No, I promise!]
     ~IndifferentResponse()
     And yet your eyes are saying something completely different. So... Care to tell me if you're lying?
             ***[I would never.]
             ~NeutralResponse()
              Well, I guess I'll have to take your word on it. Just remember, if you lie, I'll stab you. Kidding. Or am I? Anyway, let's not waste too much time, I got band practice in the morning.
              ->HANGOUT
             ***[Well, maybe just a little bit.]
             ~SmileResponse()
             I guess I can appreciate the honesty... Did you even find anything of interest?
              ->STUFF
             ***[Why, would you care if I did?]
             ~AngryResponse()
             Because it's common sense to not snoop around in other peoples business? Not that I have any common sense, but your attitude is starting to piss me off.
              ->ARGUING
             
    **[I was just peaking...]
    ~AngryResponse()
        I've got some personal stuff in here that I don't want you to poke around in. If I wanted you to know my inner thoughts, I would tell you. Well let's be honest, I probably wouldn't.
              ***[Well, I found some weird shit..]
              ~SmileResponse()
              Oh, did you now? Suddenly, this is Intriguing. Let's see if I can scare you away. What did you find?
               ->STUFF
              ***[It's really not that deep.]
              ~PissedResponse()
               Maybe not for you, because you probably don't have anything that you value in your home and walk around like an open book. Accept that not everyone is like that. It's fucking rude.
                  ->ARGUING
             ***[I'm totally kidding!]
             ~AnnoyedResponse()
             Has to be the funniest joke I've heard in years. Not. I feel like I'm witnessing the show flops in Baby Reindeer.
                   ****[I'm serious.]
                   ~IndifferentResponse()
                   Whatever. I just realized I don't care. Let's not waste too much time, I've got band practice in the morning.
                   ->HANGOUT
                   ****[You're kind of being a bitch.]
                   ~AngryResponse()
                   Thanks! And I don't even have to try. I honestly don't care what you think about me.
                     ->ARGUING
                   
             
*[You scared me!]
~IndifferentResponse()
Sorry not sorry. That also didn't answer my question. Did you look through my stuff?
    ** [...Yeah.]
        ~charEmotion="Angry"
          Why? I've got some personal stuff in there that I don't want you to poke around in. If I wanted you to know my inner thoughts, I would tell you. Well, let's be honest, I probably wouldn't.
         ***[Because I thought it would be fun.]
         ~NeutralResponse()
          I guess I can appreciate the honesty..? Did you even find anything of interest?
           ->STUFF
         ***[It's really not that deep.]
         ~AnnoyedResponse()
         Maybe not for you, because you probably don't have anything that you value in your home and walk around like an open book. Your attitude is starting to piss me off.
            ->ARGUING
         ***[Why do you care that much?]
         ~AngryResponse()
         Because it's common sense to not snoop around in other peoples business? I mean, I'd probably do the same but... Your attitude is kind of starting to piss me off.
            -> ARGUING
        
    ** [No, I promise!]
     ~IndifferentResponse()
     And yet your eyes are saying something completely different. So... Care to tell me if you're lying?
             ***[I would never.]
             ~NeutralResponse()
              Well, I guess I'll have to take your word on it. Just remember, if you lie, I'll stab you. Kidding. Or am I? Anyway, let's not waste too much time, I've got band practice in the morning.
              ->HANGOUT
             ***[Well, maybe just a little bit.]
             ~NeutralResponse()
             I guess I can appreciate the honesty... Did you even find anything of interest?
              ->STUFF
             ***[Why, would you care if I did?]
             ~AnnoyedResponse()
             Because it's common sense to not snoop around in other peoples business? Not that I have any common sense, but your attitude is starting to piss me off.
              ->ARGUING
             
    **[I was just peaking...]
    ~AnnoyedResponse()
        I've got some personal stuff in here that I don't want you to poke around in. If I wanted you to know my inner thoughts, I would tell you. Well let's be honest, I probably wouldn't.
              ***[Well, I found some weird shit..]
              ~SmileResponse()
              Oh, did you now? Suddenly, this is Intriguing. Let's see if I can scare you away. What did you find?
               ->STUFF
              ***[It's really not that deep.]
              ~PissedResponse()
               Maybe not for you, because you probably don't have anything that you value in your home and walk around like an open book. Accept that not everyone is like that. It's fucking rude.
                  ->ARGUING
             ***[I'm totally kidding!]
             ~IndifferentResponse()
             Has to be the funniest joke I've heard in years. Not. I feel like I'm witnessing the show flops in Baby Reindeer.
                   ****[I'm serious.]
                   ~AnnoyedResponse()
                   Whatever. I just realized I don't care. So... Let's not waste too much time, I've got band practice in the morning.
                   ->HANGOUT
                   ****[You're kind of being a bitch.]
                   ~PissedResponse()
                   Thanks! And I don't even have to try. I honestly don't care what you think about me.
                   ->ARGUING
                   
                   

*[I was just peaking...]
    ~AnnoyedResponse()
  Why? I've got some personal stuff in here that I don't want you to poke around in. If I wanted you to know my inner thoughts, I would tell you. Well let's be honest, I probably wouldn't.
     **[Well, I found some weird shit..]
        Oh, did you now? Suddenly, this is Intriguing. Let's see if I can scare you away. What did you find?
        ->STUFF
      **[It's really not that deep.]
          ~PissedResponse()
          Maybe not for you, because you probably don't have anything that you value in your home and walk around like an open book. Accept that not everyone is like that. It's fucking rude.
          ->ARGUING
      **[I'm totally kidding!]
      ~AnnoyedResponse()
      Has to be the funniest joke I've heard in years. Not. I feel like I'm witnessing the show flops in Baby Reindeer.
          ****[I'm serious.]
          ~IndifferentResponse()
          Whatever. I just realized I don't care. Sooo.. Let's not waste too much time, I've got band practice in the morning.
          ->HANGOUT
          ****[You're kind of being a bitch.]
          ~PissedResponse()
          Thanks! And I don't even have to try. I honestly don't care what you think about me.
          ->ARGUING
                   

== STUFF ==  
*[What's up with the satanic ritual?]
~NeutralResponse()
Oh, that old thing? It's just something I like to do when I'm bored. I've been trying to summon the devil for a while, and look, here you are!
     ** [Funny..]
     ~AnnoyedResponse()
      Oh, scared, are you? I summoned you here to perform an exorcism on you, what did you think this was?
          ***[I mean, a date?]
          ~HappyResponse()
          Isn't this what a date is supposed to be though? It will bring us so much closer together..
              ****[You're being weird.]
              ~AngryResponse()
              I was obviously joking. I want the devil to stay in you, not leave, obviously. Exorcism is for christians, which is just ew. I think we should just keep all the demons on earth, make it more fun. And fun is something you're not.
                 ->ARGUING
              ****[And they say romance is dead..]
              ~LoveResponse()
              That's what makes it amazing? Horrible is great. Anyway, let's not waste too much time, I've got band practice in the morning.
                 ->HANGOUT
          ***[Please do!]
          ~HappyResponse()
          I was obviously joking. I want the devil to stay in you, not leave, obviously. Exorcism is for christians, which is just ew. I think we should just keep all the demons on earth, make it more fun.
                ****[Facts.]
                ~LoveResponse()
              I'm glad we can agree on the obvious, at least. Anyway, let's not waste too much time. I've got band practice in the morning.
                ->HANGOUT
                ****[That sounds horrible?]
                ~AnnoyedResponse()
                That's what makes it amazing? Horrible is great. Anyway, let's not waste too much time, I've got band practice in the morning.
                ->HANGOUT

   **[Why would you do that?!]
   ~IndifferentResponse()
    Why wouldn't I? Have you ever read the Satanic bible? It's really eye opening. 
             ***[No, but I totally want to!]
             ~LoveResponse()
             I would borrow you mine, but I need it for some.... things... Anyway, let's not waste too much time, I got band practice in the morning.
                 ->HANGOUT
                 
             ***[No... should I?]
             ~NeutralResponse()
             Isn't that obvious? I think everyone should. There's a lot of misconceptions about satanism. Especially with the satanic panic and everything, you know.
                   ****[I think I'm gonna pass.]
                   ~AngryResponse()
                   Well, your loss. You really couldn't be any more boring, even if you tried. It's actually quite impressive.
                   ->ARGUING
                   ****[I'll check it out!]
                   ~LoveResponse()
                   You should! By the way. I've got band practice in the morning, so I cant hangout too late.
                    ->HANGOUT
             ***[No, and I probably won't.]
             ~AnnoyedResponse()
             Wow, you really couldn't be any more boring, even if you tried. It's actually quite impressive.
                  ->ARGUING

   **[That's so sick!]
   ~LoveResponse()
      I know, right? It has always interested me. I’m just into a lot of witchy stuff, I guess. It’s not as sinister as it looks—mostly.
         ***[That's kind of weird.]
         ~AngryResponse()
         Weird? Maybe to someone who doesn’t understand. To me, it’s about exploring different aspects of spirituality and power. If you can’t handle that, then maybe you should stick to your boring, mundane life.
            ->ARGUING
         ***[I like that about you!]
         ~SmileResponse()
          Really? Most people just get freaked out. If you want, I could show you more of my rituals. But maybe not today, I've got band practice in the morning.
           -> HANGOUT

    
*[I found nothing. Just Kidding.]
  ~IndifferentResponse()
  Has to be the funniest joke I've heard in years. Not. I feel like I'm witnessing the show flops in Baby Reindeer.
      **[I'm serious.]
      ~NeutralResponse()
       Whatever. I just realized I don't care. Sooo.. Let's not waste too much time, I've got band practice in the morning.
       ->HANGOUT
      **[You're kind of being a bitch.]
      ~PissedResponse()
        Thanks! And I don't even have to try. I honestly don't care what you think about me.
      ->ARGUING

* [Why do you have a voodoo doll?]
~NeutralResponse()
    Oh, that old thing? That's my best friend. Had it since I was a kid. It's kind of this ritual I have before going to bed, just thinking about someone I hate while aggressively stabbing it. Relaxing, honestly.
     ** [Did you use it on me?]
     ~IndifferentResponse()
     Think you're special, do you? News flash, not everything is about you, dude. And also, I don't stab and tell. 
          ***[My mom thinks I'm special!]
          ~AnnoyedResponse()
          I'm sure she does. Hah, Imagine having a mom. That would be crazy. Anyway, let's not waste too much time, I've got band practice in the morning.
          ->HANGOUT
          ***[I might stab you on mine..]
          ~HappyResponse()
          Now that's the most romantic shit I've heard in a long time! We can stab our voodoo dolls together. And they say romance is dead. Find anything else in here that might scare you away?
              ****[Why do you have a human skull in your apartment?]
              ~NeutralResponse()
              You don't? That's a red flag. I took it from this one grave I was robbing a while back. He looked really lonely so I thought he would feel better in here.
                 *****[That's fucked up.]
                 ~AngryResponse()
                 It has to take a lot of energy to be as boring as you. Try to relax sometime. He was dead anyway.
                   ->ARGUING
                 *****[He does look less lonely in here..]
                 ~LoveResponse() 
                 Right? That's what I've been saying. Anyway, let's not waste too much time, I've got band practice in the morning.
                  ->HANGOUT
                 
              ****[I don't look and tell.]
              ~AngryResponse()
              Whatever. Just realized I don't care. Anyway, let's not waste too much time, I've got band practice in the morning.
              ->HANGOUT

   **[That's why I've felt a stabbing pain all week.]
   ~IndifferentResponse()
   Or maybe you should just go see a doctor or something. Either way, I don't stab and tell.
         ***[Ouch..]
         ~AnnoyedResponse()
          Dude. You've got some learning to do. Pain is just weakness leaving the body. Or, in your case, intelligence.
             ****[You don't have to be a bitch about it.]
             ~PissedResponse()
             Oh, sweetheart, if you think this is me being a bitch, you have no idea what you're in for.
             ->ARGUING
             ****[You're actually pretty funny.]
             ~NeutralResponse()
             I know, right? Dark humor is an acquired taste. Looks like you've got potential. Anyway, let's not waste too much time. I've got band practice in the morning.
              ->HANGOUT
              
         ***[You're probably right.]
         ~SmileResponse()
         Yeah, I usually am. It's part of my charm. Anyway, let's not waste too much time, I've got band practice in the morning.
         ->HANGOUT
         ***[I'm pretty sure it's your fault.]
         ~NeutralResponse()
         Well, it might be. Anyway, let's not waste too much time, I've got band practice in the morning.
         ->HANGOUT
          
       
   **[I hope you have!]
   ~HappyResponse()
       Oh, don't feel special. I wouldn't use it on a useless mortal such as yourself. My voodoo skills are reserved for more... interesting cases.
          ***[Ouch!]
          ~AnnoyedResponse()
          You’re sensitive, aren't you? Good thing I save my real tricks for special occasions. You’re just getting the preview. Anyway, let's not waste too much time. I've got band practice in the morning.
          ->HANGOUT
          ***[Fair enough.]
          ~HappyResponse()
          Glad you see it my way. By the way, I've got band practice in the morning, so let's make this quick. You seem interesting enough to hang out with.
          ->HANGOUT
          ***[I'm pretty interesting, actually.]
          ~NeutralResponse()
          Sure you are... By the way, I've got band practice in the morning, so let's make this quick. You seem interesting enough to hang out with.
          ->HANGOUT
   
        
== ARGUING ==  
*[Why do you always have to be so rude?]
  ~AngryResponse()
    And why do you have to be so boring? It takes two to tango, you know.
   ** [I guess you're right.]
   ~IndifferentResponse()
     I usually am, you should probably remember that. Anyway, I've got band practice in the morning, so let's not waste too much time.
     ->HANGOUT
   **[You're really annoying, you know that?]
   ~NeutralResponse()
    Yeah? This is just the beginning. Stick around, and you'll see how deep my annoyance can really go. Or you could just leave. Your call.
             ***[I think I'll leave actually.]
             ~AnnoyedResponse()
             Fine. I don't care anyway. It's not like your presence was adding anything to my day. You'll be forgotten as soon as you leave.
                 ****[Whatever, I'm leaving!]
                 ~PissedResponse()
                 Fine, go. I'm not here to entertain you. Just one thing though, you won't be leaving alive. Or in one piece.
                 ->MURDER
                 ****[You're kind of funny when you're mad.]
                 ~IndifferentResponse()
                 Oh, you think this is funny? Just wait. You haven’t seen anything yet.
                     *****[I'll stay just to annoy you more.]
                     ~NeutralResponse()
                     Whatever, just don't waste my time. I've got band practice in the morning, and I don't need distractions.
                     ->HANGOUT
                     *****[You know what, I'm leaving.]
                     ~PissedResponse()
                     Fine, go. I'm not here to entertain you. Just one thing though, you won't be leaving alive. Or in one piece.
                     ->MURDER
             ***[I'll take that challenge, I guess.]
             ~NeutralResponse()
             Alright, brave soul. Let’s see if you can handle it. Just remember, you asked for it. Anyway, let's not waste anymore time. I've got band practice in the morning.
             ->HANGOUT

   **[You're being a fucking bitch.]
   ~AngryResponse()
   Oh, is that supposed to hurt my feelings? Trust me, I’ve been called worse. If you can’t handle a bit of attitude, maybe you should just walk away.
         ***[I think I'll leave actually.]
         ~AngryResponse()
             Fine. I don't care anyway. It's not like your presence was adding anything to my day. You'll be forgotten as soon as you leave.
                 ****[Whatever, I'm leaving!]
                 ~PissedResponse()
                 Fine, go. I'm not here to entertain you. Just one thing though, you won't be leaving alive. Or in one piece.
                 ->MURDER
                 ****[You're kind of funny when you're mad.]
                 ~IndifferentResponse()
                 Oh, you think this is funny? Just wait. You haven’t seen anything yet.
                     *****[I'll stay just to annoy you more.]
                     ~NeutralResponse()
                     Whatever, just don't waste my time. I've got band practice in the morning, and I don't need distractions.
                     ->HANGOUT
                     *****[You know what, I'm leaving.]
                     ~PissedResponse()
                     Fine, go. I'm not here to entertain you. Just one thing though, you won't be leaving alive. Or in one piece.
                     ->MURDER
             ***[I'll take that challenge, I guess.]
             ~NeutralResponse()
             Alright, brave soul. Let’s see if you can handle it. Just remember, you asked for it. Anyway, let's not waste anymore time. I've got band practice in the morning.
             ->HANGOUT

    
*[Can you just like, not argue with me for once?]
~AnnoyedResponse()
Argue? Who, me? I thought we were just having a lively conversation. But fine, I'll play nice. Just this once.
     ** [You always have to have the last word, don’t you?]
     ~AngryResponse()
     Of course I do. Someone has to be right, and it sure as hell isn’t going to be you. If you don't like it, you know where the door is.
          ***[I think I'll leave actually.]
          ~AnnoyedResponse()
             Fine. I don't care anyway. It's not like your presence was adding anything to my day. You'll be forgotten as soon as you leave.
                 ****[Whatever, I'm leaving!]
                 ~PissedResponse()
                 Fine, go. I'm not here to entertain you. Just one thing though, you won't be leaving alive. Or in one piece.
                 ->MURDER
                 ****[You're kind of funny when you're mad.]
                 ~IndifferentResponse()
                 Oh, you think this is funny? Just wait. You haven’t seen anything yet.
                     *****[I'll stay just to annoy you more.]
                     ~NeutralResponse()
                     Whatever, just don't waste my time. I've got band practice in the morning, and I don't need distractions.
                     ->HANGOUT
                     *****[You know what, I'm leaving.]
                     ~PissedResponse()
                     Fine, go. I'm not here to entertain you. Just one thing though, you won't be leaving alive. Or in one piece.
                     ->MURDER
             ***[I'll take that challenge, I guess.]
             ~NeutralResponse()
             Alright, brave soul. Let’s see if you can handle it. Just remember, you asked for it. Anyway, let's not waste anymore time. I've got band practice in the morning.
             ->HANGOUT
     **[You're really annoying, you know that?]
     ~NeutralResponse()
      Yeah? This is just the beginning. Stick around, and you'll see how deep my annoyance can really go. Or you could just leave. Your call.
             ***[I think I'll leave actually.]
             ~AnnoyedResponse()
             Fine. I don't care anyway. It's not like your presence was adding anything to my day. You'll be forgotten as soon as you leave.
                 ****[Whatever, I'm leaving!]
                 ~PissedResponse()
                 Fine, go. I'm not here to entertain you. Just one thing though, you won't be leaving alive. Or in one piece.
                 ->MURDER
                 ****[You're kind of funny when you're mad.]
                 ~IndifferentResponse()
                 Oh, you think this is funny? Just wait. You haven’t seen anything yet.
                     *****[I'll stay just to annoy you more.]
                     ~IndifferentResponse()
                     Whatever, just don't waste my time. I've got band practice in the morning, and I don't need distractions.
                     ->HANGOUT
                     *****[You know what, I'm leaving.]
                     ~PissedResponse()
                     Fine, go. I'm not here to entertain you. Just one thing though, you won't be leaving alive. Or in one piece.
                     ->MURDER
             ***[I'll take that challenge, I guess.]
             ~NeutralResponse()
             Alright, brave soul. Let’s see if you can handle it. Just remember, you asked for it. Anyway, let's not waste anymore time. I've got band practice in the morning.
             ->HANGOUT

     **[Thank you, I appreciate it.]
     ~IndifferentResponse()
     Don't get used to it. I don't do 'nice' very often. Consider it a rare treat. Anyway, let's not waste too much time, I've got band practice in the morning.
     ->HANGOUT
     
*[I'm just trying to be nice here.]
~IndifferentResponse()
Nice? That's cute. But I don't really do 'nice.' If you want to stick around, you better toughen up.
   ** [I guess you're right.]
     ~NeutralResponse()
     I usually am, you should probably remember that. Anyway, I've got band practice in the morning, so let's not waste too much time.
     ->HANGOUT
   **[You're really annoying, you know that?]
   ~IndifferentResponse()
    Yeah? This is just the beginning. Stick around, and you'll see how deep my annoyance can really go. Or you could just leave. Your call.
             ***[I think I'll leave actually.]
             ~AngryResponse()
             Fine. I don't care anyway. It's not like your presence was adding anything to my day. You'll be forgotten as soon as you leave.
                 ****[Whatever, I'm leaving!]
                 ~PissedResponse()
                 Fine, go. I'm not here to entertain you. Just one thing though, you won't be leaving alive. Or in one piece.
                 ->MURDER
                 ****[You're kind of funny when you're mad.]
                 ~IndifferentResponse()
                 Oh, you think this is funny? Just wait. You haven’t seen anything yet.
                     *****[I'll stay just to annoy you more.]
                     ~AnnoyedResponse()
                     Whatever, just don't waste my time. I've got band practice in the morning, and I don't need distractions.
                     ->HANGOUT
                     *****[You know what, I'm leaving.]
                     ~PissedResponse()
                     Fine, go. I'm not here to entertain you. Just one thing though, you won't be leaving alive. Or in one piece.
                     ->MURDER
             ***[I'll take that challenge, I guess.]
             ~NeutralResponse()
             Alright, brave soul. Let’s see if you can handle it. Just remember, you asked for it. Anyway, let's not waste anymore time. I've got band practice in the morning.
             ->HANGOUT

   **[You're being a fucking bitch.]
   ~AnnoyedResponse()
   Oh, is that supposed to hurt my feelings? Trust me, I’ve been called worse. If you can’t handle a bit of attitude, maybe you should just walk away.
         ***[I think I'll leave actually.]
         ~AngryResponse()
             Fine. I don't care anyway. It's not like your presence was adding anything to my day. You'll be forgotten as soon as you leave.
                 ****[Whatever, I'm leaving!]
                 ~PissedResponse()
                 Fine, go. I'm not here to entertain you. Just one thing though, you won't be leaving alive. Or in one piece.
                 ->MURDER
                 ****[You're kind of funny when you're mad.]
                 ~IndifferentResponse()
                 Oh, you think this is funny? Just wait. You haven’t seen anything yet.
                     *****[I'll stay just to annoy you more.]
                     ~AnnoyedResponse()
                     Whatever, just don't waste my time. I've got band practice in the morning, and I don't need distractions.
                     ->HANGOUT
                     *****[You know what, I'm leaving.]
                     ~PissedResponse()
                     Fine, go. I'm not here to entertain you. Just one thing though, you won't be leaving alive. Or in one piece.
                     ->MURDER
             ***[I'll take that challenge, I guess.]
             ~NeutralResponse()
             Alright, brave soul. Let’s see if you can handle it. Just remember, you asked for it. Anyway, let's not waste anymore time. I've got band practice in the morning.
             ->HANGOUT
           
== HANGOUT ==  
*[Why would they put it in the morning?]
~NeutralResponse()
    You know what, great question. It's probably because the drummer, Iris, insists she's more 'in tune with the universe' early in the day. Personally, I think she's just a morning person trying to ruin my life. 
   ** [That sounds rough.]
   ~SmileResponse()
   Tell me about it. I’m a night owl by nature. Waking up early is practically torture. But hey, the music sounds good, so I guess it’s worth it.
          ***[I'd love to see your band play sometime!]
          ~LoveResponse()
          Really? That’s cool. We have a pretty unique sound—dark, edgy, with a touch of melancholy. Growing up wasn't exactly a picnic, so the music helps me process all that.
          ->PARENTS
          ***[I'm not really sure if I'd like your music.]
          ~PissedResponse()
          Well, I'm not really sure if I care. It’s not like I’m begging you to listen. But if you're curious, give it a listen. If not, that’s fine.
          ->HANGOUTARGUE

   **[Do you enjoy being in the band?]
   ~NeutralResponse()
    Enjoy? I guess you could call it that. When I'm lost in the music, it's like I can forget about everything else. But it's not like it fixes anything. Just... numbs the pain for a while.
             ***[That sounds like it helps.]
             ~HappyResponse()
             Yeah, it's something. Sometimes it's the only thing that gets me through the day. Growing up wasn't exactly a picnic, so the music helps me process all that I guess. 
             ->PARENTS
             ***[Sounds depressing. I'll pass.]
             ~PissedResponse()
             Of course you will. You're sooo original. Don't come crawling back when you realize how shallow the world is without a bit of pain.
             ->HANGOUTARGUE
             ***[Sounds like something I'd do.]
             ~LoveResponse()
             Yeah, you should try it. Sometimes it's the only thing that gets me through the day. Growing up wasn't exactly a picnic, so the music helps me process all that I guess. 
             ->HANGOUTARGUE

   **[Bad news. I'm a morning person.]
   ~AnnoyedResponse()
   Ugh, figures. Well, don't expect me to be all sunshine and rainbows just because you are. I'll try not to scowl too much in the morning, but no promises.
         ***[I'm fine with that.]
         ~IndifferentResponse()
         Didn't know I needed your permission, but point taken, I guess? I'll wake up early for music any day, honestly. 
              ****[I probably wouldn't.]
              ~AngryResponse()
              But you just told me that you're a morning person? Did you just wake up today deciding to be a hypocrite? 
              ->HANGOUTARGUE
              ****[Same, any day!]
              ~SmileResponse()
              Yeah, it’s kind of my lifeline. Mornings were... rough, growing up. Music was my escape from all the chaos. Anyway, glad we're on the same page.
              ->PARENTS
              
              
         ***[When are you ever sunshine and rainbows?]
         ~IndifferentResponse()
         You're right. I'm more like a dead forest or something. But I didnt really have a lot of room to become anything else. Growing up in a house where darkness was the norm.
           ->PARENTS

    
*[So you play in a band?]
~NeutralResponse()
     Have you not been paying any attention? But yeah, I do. I play guitar and do some vocals. It’s pretty much the only thing that keeps me sane.
         **[I'm pretty sure there's nothing sane about you.]
         ~SmileResponse()
         That's probably true. There’s something cathartic about screaming your heart out on stage. It’s like therapy, but louder.
             ***[Actually, that sounds great.]
             ~LoveResponse()
              Yeah, it is. Sometimes it's the only thing that gets me through the day. Growing up wasn't exactly a picnic, so the music helps me process all that I guess. 
             ->PARENTS
             ***[I'd probably hate that.]
             ~AnnoyedResponse()
             Of course you would. So original. Don't come crawling back when you realize how shallow the world is without a bit of pain.
             ->HANGOUTARGUE
             
         **[Do you enjoy being in the band?]
         ~NeutralResponse()
          Enjoy? I guess you could call it that. When I'm lost in the music, it's like I can forget about everything else. But it's not like it fixes anything. Just... numbs the pain for a while.
             ***[That sounds like it helps.]
             ~HappyResponse()
             Yeah, it's something. Sometimes it's the only thing that gets me through the day. Growing up wasn't exactly a picnic, so the music helps me process all that I guess. 
             ->PARENTS
             ***[Sounds depressing. I'll pass.]
             ~AngryResponse()
             Of course you will. You're sooo original. Don't come crawling back when you realize how shallow the world is without a bit of pain.
             ->HANGOUTARGUE
         
         **[What's the name of your band?]
         ~NeutralResponse()
         We’re called 'Ashen Abyss' Fitting, right? Our songs are about life’s darker side—pain, loss, and everything in between. Growing up wasn't exactly a picnic, so the music helps me process all that.
            ->PARENTS
*[Band practice sounds so corny.]
Corny? Seriously? You have no idea what you're talking about. Next time you speak, maybe you should think twice.
->HANGOUTARGUE
            
== HANGOUTARGUE ==  
*[You're a bitch.]
~AnnoyedResponse()
Really? Last time I checked, I didn't care. Give me two seconds... Yeah, I still don't.
   ** [You're funny, I'll give you that.]
     Oh, great, I get a gold star for humor. Just what I always wanted. You know where the door is if you need it.
             ***[Yeah, I'm out.]
             ~PissedResponse()
             I said you could leave. But not in one piece...
                 ->MURDER
             ***[I might stay just for the plot.]
             ~IndifferentResponse()
             Ah, the plot thickens. Just like my childhood, always full of unexpected twists and turns.
             ->PARENTS

   **[You're annoying.]
   ~IndifferentResponse()
     Awww, thank you. And I'm just getting started. You know where the door is, and you're very welcome to leave.
             ***[Yeah, I'm out.]
             ~PissedResponse()
             I said you could leave. But not in one piece...
                 ->MURDER
             ***[I might stay just for the plot.]
             ~IndifferentResponse()
             Ah, the plot thickens. Just like my childhood, always full of unexpected twists and turns.
             ->PARENTS


    
*[I'm sorry, I'm being rude.]
~NeutralResponse()
I'll be the first to admit that I am as well, a lot of the time. I guess I just became this way, trying to protect myself. I mostly raised myself since my parents weren't there, so I'm quite proud.
->PARENTS

* [You don't have to be rude about it.]
~IndifferentResponse()
Of course I don't. But what's the fun in that? I mostly raised myself since my parents weren't there, so I'm quite proud.
   ** [Honestly, same.]
   ~HappyResponse()
   But I think it added a lot to my character. Growing up being neglected, you can kind of shape your own life. It's beautiful in its own way.
     ->PARENTS

   **[You're just whining at this point.]
   ~AngryResponse()
   Whining? You think this is whining? Keep pushing me, and you'll see what real anger looks like. Don't test me. You know where the door is if you want to leave.
         ***[I'm out.]
          I did say that you can leave, however. Not in one piece...
          ->MURDER
         ***[I might just stay for the plot.]
             ~IndifferentResponse()
             Ah, the plot thickens. Just like my childhood, always full of unexpected twists and turns.
             ->PARENTS

           
== PARENTS==  

*[What's up with your parents?]
~NeutralResponse()
  I guess it's more what's not up with my parents. They haven't been in my life for a really long time. And I don't miss them.
   ** [What happened?]
   ~IndifferentResponse()
     Long story short, they were alcoholics and drug addicts. Last time I checked, they still were. They were abusive and have neglected me since birth. I left for good when I was 15.
          ***[I'm so sorry.]
          ~NeutralResponse()
          ~loveAmount++
          They spent more time chasing highs than they ever did being parents. Leaving was the best decision I ever made. Have you ever lost someone you love?
          ->GRANDMA
          ***[You should reach out to them.]
          ~AngryResponse()
          Being a parent isn't just a title you earn by giving birth or donating DNA. It's about being there, caring, loving. They failed at all of that. So, no, I won't be reaching out to them anytime soon.
              ****[I'm sorry, that was rude.]
              ~AnnoyedResponse()
              It was. Because unless you've walked in my shoes, you have no idea what it's like. Have you ever even lost someone you love?
              ->GRANDMA
              ****[I think you're overreacting.]
              ~PissedResponse()
              And I actually think you should get the fuck out of my house.
              ->PARENTSARGUE

     **[Don't say that. They're your parents.]
     ~AnnoyedResponse()
      So? That gives them a free pass to ruin my life? To neglect me, abuse me? Being a parent isn't just about biology. It's about love, care, responsibility. And they failed at all of it. So, don't you dare tell me what to feel about them.
              ****[I'm sorry, that was rude.]
               ~AngryResponse()
              It was. Because unless you've walked in my shoes, you have no idea what it's like. Have you ever even lost someone you love?
              ->GRANDMA
              ****[I think you're overreacting.]
              ~PissedResponse()
              And I actually think you should get the fuck out of my house.
              ->PARENTSARGUE
    
*[Do you want to talk about it?]
~NeutralResponse()
  Not really. But they haven't been in my life for a really long time. And I don't miss them.
   ** [What happened?]
    ~IndifferentResponse()
     Long story short, they were alcoholics and drug addicts. Last time I checked, they still were. They were abusive and have neglected me since birth. I left for good when I was 15.
          ***[I'm so sorry.]
          ~NeutralResponse()
          ~loveAmount++
          They spent more time chasing highs than they ever did being parents. Leaving was the best decision I ever made. Have you ever lost someone you love?
          ->GRANDMA
          ***[You should reach out to them.]
          ~AngryResponse()
          Being a parent isn't just a title you earn by giving birth or donating DNA. It's about being there, caring, loving. They failed at all of that. So, no, I won't be reaching out to them anytime soon.
              ****[I'm sorry, that was rude.]
              ~IndifferentResponse()
              It was. Because unless you've walked in my shoes, you have no idea what it's like. Have you ever even lost someone you love?
              ->GRANDMA
              ****[I think you're overreacting.]
              ~PissedResponse()
              And I actually think you should get the fuck out of my house.
              ->PARENTSARGUE

     **[Don't say that. They're your parents.]
     ~AnnoyedResponse()
      So? That gives them a free pass to ruin my life? To neglect me, abuse me? Being a parent isn't just about biology. It's about love, care, responsibility. And they failed at all of it. So, don't you dare tell me what to feel about them.
              ****[I'm sorry, that was rude.]
              ~IndifferentResponse()
              It was. Because unless you've walked in my shoes, you have no idea what it's like. Have you ever even lost someone you love?
              ->GRANDMA
              ****[I think you're overreacting.]
              ~PissedResponse()
              And I actually think you should get the fuck out of my house.
              ->PARENTSARGUE

* [You're just whining.]
~PissedResponse()
Am I? You think it's easy dealing with what I've been through? Walking in my shoes for just one day would shatter you. Youre weak. So spare me your judgment.
->PARENTSARGUE
         
== PARENTSARGUE ==  
*[It's like you want to pick a fight with me at this point.]
~AnnoyedResponse()
Maybe because you keep being fucking stupid. And to act like that when someone is talking about their trauma, you should really watch who you're talking to.
   ** [I'm sorry, it was a dick move.]
    ~IndifferentResponse()
     You should say it with me. 1. 2. 3... I AM A DICKHEAD.
        ***[I am a dickhead.]
        ~NeutralResponse()
         Thanks, that was great. Have you ever even lost someone you love?
         ->GRANDMA
        ***[Yeah I'm not gonna do that..]
        ~AnnoyedResponse()
         You sure? Because I do have this thing for stabbing people... People's feelings. I mean.
             ****[Look, I'm just sorry.]
             ~IndifferentResponse()
             Not sure if that's gonna cut it. Have you ever even lost someone you love?
             ->GRANDMA
             ****[Aaaaand I'm leaving.]
             ~PissedResponse()
             Sure you are. But not in one piece.
             ->MURDER

   **[Maybe you should watch who you're talking to.]
   ~AngryResponse()
   Oh I should watch who I'm talking to? And you should get the fuck out of my apartment.
             ***[That's it, I'm leaving.]
             ~PissedResponse()
             You certainly are, but not in one piece..
             ->MURDER
             ***[I'm sorry.]
             ~AnnoyedResponse()
             Not sure if that's gonna cut it. Have you ever even lost someone you love?
             ->GRANDMA

    
*[I'm sorry, I was being insensitive.]
~IndifferentResponse()
And a fucking dickhead. You should say it with me. 1. 2. 3... I AM A DICKHEAD. Have you ever even lost someone you love?
     **[I am a dickhead.]
        ~NeutralResponse()
         Thanks, that was great. Have you ever even lost someone you love?
         ->GRANDMA
      **[Yeah I'm not gonna do that..]
      ~AngryResponse()
         You sure? Because I do have this thing for stabbing people... People's feelings. I mean.
             ****[Look, I'm just sorry.]
             ~IndifferentResponse()
             Not sure if that's gonna cut it. Have you ever even lost someone you love?
             ->GRANDMA
             ****[Aaaaand I'm leaving.]
             ~PissedResponse()
             Sure you are. But not in one piece.
             ->MURDER

           
== GRANDMA == 
*[Actually, my grandma is dying.]
~IndifferentResponse()
Oh shit. Im so sorry. Are you guys close?
      **[She's the only family member I have.]
       ~NeutralResponse()
         If you need someone to talk to, I'm here for you. Seriously.
         ->ENDING
*[I don't want to talk about it.]
~IndifferentResponse()
Alright, that's fine. If you ever change your mind, I'm here!
->ENDING
== MURDER ==  
*[Wait... what?]
~Death()
You didn't know? Silly me, I forgot to mention my little... hobby.
   ** [What do you mean, your hobby?]
      Oh, just that I collect... things. And once you're in my collection, well, let's just say leaving isn't an option.
           ~charEmotion="Murder"
          ***[You can't be serious. Let me out of here!]
             ->END


                 
== ENDING ==  
*[I really appreciate it.]
~HappyResponse()
Depressed people have to stay together, you know. Happy people suck anyway, everyone knows that.
   ** [True that.]
    ~SmileResponse()
     Anyway, It's getting really late, and I have to get my beauty sleep before practice tomorrow. But I had a really good time, and I'm happy we got to talk about some deeper stuff.
          ***[I really want to see you again!]
          ~LoveResponse()
          I'd really like that as well. Just let me know the time and place, and I'll be there. I'll text you! Don't miss me too much, or something.
             ****[Sounds like a plan!]
              ->END
          ***[I'm not sure if we're a match.]
          ~UpsetResponse()
          Really? What a shocker. Listen, I don't have time for half hearted whims. Either you're all in, or you're out. You can leave. But not in one piece.
          ->MURDER

   **[I try to stay happy.]
   ~NeutralResponse()
    I think you should do whatever you need to feel good. Anyway, it's getting really late, and I have to get my beauty sleep before practice tomorrow. But I had a really good time, and I'm happy we got to talk about some deeper stuff.
          ***[I really want to see you again!]
          ~LoveResponse()
          I'd really like that as well. Just let me know the time and place, and I'll be there. I'll text you! Don't miss me too much, or something.
             ****[Sounds like a plan!]
              ->END
          ***[I'm not sure if we're a match.]
          ~UpsetResponse()
          Really? What a shocker. Listen, I don't have time for half hearted whims. Either you're all in, or you're out. You can leave. But not in one piece.
          ->MURDER

    
*[I don't need your sympathy.]
~AnnoyedResponse()
Fine, suit yourself. But don't come crawling to me when you realize you need someone who actually cares. Anyway, it's getting really late, and I have to get my beauty sleep before practice tomorrow.
     **[I really want to see you again!]
     ~IndifferentResponse()
     I'd like that if you stop being rude. Anyway, we'll talk. Don't miss me too much, or something.
         ***[Sounds like a plan!]
              ->END
     **[I'm not sure if we're a match.]
          ~UpsetResponse()
          Really? What a shocker. Listen, I don't have time for half hearted whims. Either you're all in, or you're out. You can leave. But not in one piece.
          ->MURDER


* [Thank you, Luna.]
~NeutralResponse()
Depressed people have to stay together, you know. Happy people suck anyway, everyone knows that.
   ** [True that.]
     ~HappyResponse()
     Anyway, It's getting really late, and I have to get my beauty sleep before practice tomorrow. But I had a really good time, and I'm happy we got to talk about some deeper stuff.
          ***[I really want to see you again!]
          ~LoveResponse()
          I'd really like that as well. Just let me know the time and place, and I'll be there. I'll text you! Don't miss me too much, or something.
             ****[Sounds like a plan!]
              ->END
          ***[I'm not sure if we're a match.]
          ~UpsetResponse()
          Really? What a shocker. Listen, I don't have time for half hearted whims. Either you're all in, or you're out. You can leave. But not in one piece.
          ->MURDER

   **[I try to stay happy.]
    ~HappyResponse()
    I think you should do whatever you need to feel good. Anyway, it's getting really late, and I have to get my beauty sleep before practice tomorrow. But I had a really good time, and I'm happy we got to talk about some deeper stuff.
          ***[I really want to see you again!]
          ~LoveResponse()
          I'd really like that as well. Just let me know the time and place, and I'll be there. I'll text you! Don't miss me too much, or something.
             ****[Sounds like a plan!]
              ->END
          ***[I'm not sure if we're a match.]
          ~UpsetResponse()
          Really? What a shocker. Listen, I don't have time for half hearted whims. Either you're all in, or you're out. You can leave. But not in one piece.
          ->MURDER
          

===function Death===
~loveAmount=-1000
~charEmotion="Angry"
    
===function PissedResponse===
~charEmotion="Pissed"
~loveAmount--
===function LoveResponse===
~charEmotion="Love"
~loveAmount++

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
        
        