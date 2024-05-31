VAR charName="Luna"

VAR charEmotion="Indifferent"
VAR loveAmount=0

Jeez, sorry. My cat totally freaked out when you rang the doorbell. I should probably take that shit down.
*[Oops!]
     ~charEmotion= "Neutral"
     It's fine, he can be a bit of a drama queen. Wondering where he got that? I'm happy you made it here and weren't swepped away in the rain! It's really been pouring all day. I love it.
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
      ~charEmotion="Neutral"
      Hey, any time. I need motivation for cleaning anyway. I could never be one of those TikTok clean girls.
            ***[You're on TikTok?]
            ~AngryResponse()
            God, no. I don't have socials. Well, I have my bands socials but that's more for promoting. You see, being an artist these days are tough. It used to be better. I say, as if I'm a hundred years old. Anyway, how was your day?
            -> DAY
            ***[Clean girls suck anyway.]
            ~SmileResponse()
            Damn right they do! Like, who wants to live in a sterile, Pinterest-perfect world anyway? Plus, cleaning sucks. I'd much rather spend my time doing something fun or creative.
              ****[Can't be too dirty though.]
              ~AnnoyedResponse()
              That's obviously not what I meant. It's just not something that I obsess over, animals are out there dying you know. Anyway, how was your day?
              ->DAY
              ****[I think you've met your match!]
              ~HappyResponse()
              Hold your horses, I don't like lovebombing. Kidding, totally got you. You should send me a picture of your apartment and we can compare who's more disgusting.
                *****[Count me in!]
                ~charEmotion="Neutral"
                Sweet! Prepare to be absolutely fucking destroyed. Anyway, how was your day?
                ->DAY
                *****[Nah, that's gross.]
                ~charEmotion="Angry"
                Meh, could you try to be more boring? I think it may be impossible. You're taking yourself way too seriously.. Anyway, how was your day?
              ->DAY
      **[Then why did you invite me?]
      ~AnnoyedResponse()
       Oh, feeling special? I can assure you you're not. Just needed a break from talking to Lucifer about the meaning of life.. 
            ***[That's a bit harsh.]
            ~charEmotion="Angry"
            Harsh? Nah, just keeping it real. But hey, if you're looking for sugar-coated compliments, you're in the wrong place. Anyway, moving on... How was your day?
            ->DAY
            ***[What if I do?]
            ~SmileResponse()
            Oh, playing coy, are we? Well, who knows, maybe you are a little special. After all, you did manage to divert my attention from Lucifer's existential crises.. Consider that a badge of honor. So, how was your day?
            ->DAY
                 
                        
* [Isn't it a bit too much?]
      ~AnnoyedResponse()
       Too much? That's rich coming from someone whose idea of decoration is probably a poster and a beanbag chair. But hey, if you're not feeling it, I'm sure you'll get used to it. Or not.
        **[I like too much.]
         ~charEmotion= "Indifferent"
          Well, shit. Look who's the drama queen now. Lucifer definitely got it from me. But hey, chaos is my middle name. It's either go big or go home, and I'm already home. 
          ***[Wait. Is that really your middle name?]
          ~charEmotion="Neutral"
          Wait. Are. You. Stupid? Haha, of course it isn't. I even picked the name Luna for myself, because my parents gave me a name that I don't resonate with. Mostly because I don't want anything to do with them, including having a name that they gave me.
            ****[I'm sorry.]
            ~SmileResponse()
            No worries. I honestly don't feel like talking about deep stuff yet, I'm too sober. So changing topic, how was your day?
            ->DAY
            ****[I like Luna.]
            ~SmileResponse()
            Thanks, I do too! I got it changed when I was 10, so I'm happy that I still like it. So changing topic, how was your day?
            -> DAY
         
          ***[No one ever died from some drama.]
          ~IndifferentResponse()
          That's definitely not true, but I do appreciate the effort to make me feel less stupid. So, changing topic, how was your day?
          ->DAY
         
         **[I don't want to get used to it.]
         ~AngryResponse()
            Then why are you even here? Honestly, you dragged yourself here through a rainstorm and now you're critisizing my home?
           *** [Alright, I'm sorry.]
           ~IndifferentResponse()
            Whatever. Just don't come over with that attitude again, I'm done with people like that in my life, its enough enduring that from my parents.
            -> DAY
            ***[I was bored.]
             ~PissedResponse()
             Bored? You should really keep some thoughts for yourself, because guess what, not everyone gives a shit about your opinion. Especially not me.
              ****[I don't care about your opinion either.]
              ~AnnoyedResponse()
               I can't imagine being that unoriginal. Has to be exhausting, trying to copy other people all the time in lack of personality.
               *****[I'm sorry, I'm a dickhead.]
               ~charEmotion="Indifferent"
               Yeah, you are. I'm used to it, just don't come over with that attitude again. I'm done with people like that in my life, it's enough enduring that from my parents. Anyway, how was your day?
               ->DAY
               *****[Can we stop fighting?]
               ~IndifferentResponse()
               Whatever. As long as you remember that you're boring. Anyway, how was your day?
               ->END
                      
              ****[That was rude of me.]
                     ~charEmotion= "Indifferent"
                      It's fine. I'm used to it, just don't come over with that attitude again. I'm done with people like that in my life, it's enough enduring that from my parents. Anyway, how was your day?
                     ->DAY
             
            
*[Just like I imagined!]
    ~charEmotion= "Indifferent"
     Shoot. Guess I need to work on my element of surprise, huh? Zero points to me. So welcome to the predictably unpredictable chaos of my life I guess..
     
        **[Don't worry, I like it.]
        ~AnnoyedResponse()
        Worry? You think I'd care that much of your opinion? Cute. 
        
           ***[Ouch! It was a compliment.]
           ~charEmotion="Neutral"
           Yeah.. I'm not too good with those, but maybe you've already figured that out. I guess I'm just not used to it.
           
              ****[I feel you.]
              ~charEmotion="Indifferent"
              You do? You don't strike me as the brooding-depressed-I-want-to-die-right-fucking-now-Type. But I guess every onion has its layers. That sounded gross. Anyway, how was your day?
              ->DAY
              
              ****[What do you mean?]
              ~AngryResponse()
              I don't really feel like talking about deep stuff yet. I'm too sober. Soooo.. I'm going to awkwardly change topic now. Because that's how I am. How was your day?
              ->DAY
              
              ****[Really?]
              ~charEmotion="Angry"
              Oh, don't give me that look. I know I'm not ugly. I just don't talk to people that much, okay? I like to stay in my corner and observe.
                 *****[Just like Lucifer!]
                 ~HappyResponse()
                 You remembered his name! Even if I just told you seconds ago, shows you don't have the memory of a goldfish. Anyway, how was your day?
                 ->DAY
                 *****[Just like your kitty!]
                 ~AnnoyedResponse()
                 You can't even remember Lucifers name? I just told you seconds ago. You must have the memory of a goldfish, dickhead. I'm going to go on and act as if that didn't happen. Sooo, how was your day?
                 ->DAY
              
              
          ***[Fair enough!]
          ~NeutralResponse()
           That was probably a bit rude of me. I'm not always that good in social settings, but maybe you've already figured that out.
             ****[I feel you.]
             ~IndifferentResponse()
              You do? You don't strike me as the brooding-depressed-I-want-to-die-right-fucking-now-Type. But I guess every onion has its layers. That sounded gross. Anyway, how was your day?
              ->DAY
              
              ****[What do you mean?]
              ~AngryResponse()
              I don't really feel like talking about deep stuff yet. I'm too sober. Soooo.. I'm going to awkwardly change topic now. Because that's how I am. How was your day?
              ->DAY
              
              ****[Really?]
              ~charEmotion="Angry"
              Oh, don't give me that look. I just don't talk to people that much, okay? I like to stay in my corner and observe.
                 *****[Just like Lucifer!]
                 ~SmileResponse()
                 You remembered his name! Even if I just told you seconds ago, shows you don't have the memory of a goldfish. Anyway, how was your day?
                 ->DAY
                 *****[Just like your kitty!]
                 ~AnnoyedResponse()
                 You can't even remember Lucifers name? I just told you seconds ago. You must have the memory of a goldfish, dickhead. I'm going to go on and act as if that didn't happen. Sooo, how was your day?
                 ->DAY
        
          
        **[Predictable indeed.]
        ~IndifferentResponse()
        I see you've figured me out already. Or have you? Play the dramatic twist music!
           ***[Well, I like predictable.]
           ~AnnoyedResponse()
           I guess it could be comforting, like knowing exactly where the snacks are in the grocery store. But that's an awfully boring way to live life. I like to embrace the chaos.
              ****[That doesn't chock me.]
              ~AngryResponse()
              It seems like nothing does. But go on, be boring and live your life like everyone else, SHEEPLE. Anyway, moving on, how was your day?
              ->DAY
              ****[I'd rather feed my sons to the dragons.]
              ~SmileResponse()
              Oh. A House of the Dragon reference? Watch out or you might start growing on me. I binged the first season in one day, just imagining if my cat could turn into a dragon.
                 *****[Raven would love that!]
                 ~AnnoyedResponse()
                 Did you just... His name is Lucifer. I just told you seconds ago! You must have the memory of a goldfish, dickhead. Im going to act as if that didn't happen. Sooo... How was your day?
                 ->DAY
                 *****[Diablo would love that!]
                 ~AnnoyedResponse()
                 Did you just... His name is Lucifer. I just told you seconds ago! You must have the memory of a goldfish, dickhead. Im going to act as if that didn't happen. Sooo... How was your day?
                 ->DAY
                 *****[Lucifer would love that!]
                 ~HappyResponse()
                 He totally would! And you remembered his name, shows you don't have the memory of a goldfish. Even if that should honestly be the bare minimum. Anyway, how was your day?
                 ->DAY
                 
              ****[We shall reign in chaos then!]
              ~HappyResponse()
              And in the evil we shall find solace! Or something. I totally made that shit up. Anyway, how was your day?
              ->DAY
           
           ***[Predictability is overrated.]
           ~NeutralResponse()
           Yep! It's like trying to watch a horror movie without any jump scares – what's the point? You have to embrace the chaos to make life interesting.
              *****[I'd love it if horror movies had no jump scares.]
              ~AnnoyedResponse()
              What are you, 12? Oh my god. Am I.... A pedophile? No wonder my parents hate me.
                  ******[Funny.]
                  ~IndifferentResponse()
                  I always thought so too. Guess I'm just a walking punchline, huh? So, moving on, how was your day?
                  ->DAY
                  ******[Hate to break it to you...]
                  ~SmileResponse()
                  Well, if the shoe fits... Anyway, moving on. How was your day?
                  ->DAY
              *****[Jumpscares forever!]
              ~HappyResponse()
              We should totally watch one later. A really bloody one just came out, where there's a guy who has to eat one persons hearts raw a year to keep him from going totally insane and murdering multiple.
                 ******[That sounds disgusting?]
                 ~AngryResponse()
                Can't handle a little gore? Weak stomach? I fear you might me in the wrong place. Anyway, how was your day?
                 ->DAY
                 ******[Count me the fuck in!]
                 ~SmileResponse()
                 That's what I'm talking about! And so... the bloodbath begins! But first, how was your day?
                 ->DAY
           
        
 == DAY ==  
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
   ~LoveResponse()
   I think hanging out with an animal has always been like an escape for me, ever since I was a kid. It's this kind of unconditional love that you can't really find in any other being, at least if your parents are like mine.
          ***[Facts!]
          ->CIGARETTES
          ***[What about your parents?]
          ->CIGARETTES

   **[Humans are superior.]
   ~PissedResponse()
   That must be the most stupid thing I've heard in the two decades that I've been alive. I think we should just all stop reproducing, and walk hand in hand into extinction. Just like Rust said in True Detective you know?
         ***[What's True Detective?]
          Dude. You've got some learning to do.
             ****[What?]
              ->CIGARETTES
         ***[Rust for the win!]
         ->CIGARETTES
       
   **[I love animals!]
   ~LoveResponse()
       I think hanging out with an animal has always been like an escape for me, ever since I was a kid. It's this kind of unconditional love that you can't really find in any other being, at least if your parents are like mine.
          ***[Facts!]
          ->CIGARETTES
          ***[What about your parents?]
          ->CIGARETTES
                 

== CIGARETTES==  
~charEmotion="Annoyed"
 FUCK! Sorry for cutting you off. I just realized that I forgot to buy cigarettes. I know. Probably a turn off, right? But what can I do, everyone in my band smokes like Snoop Dogg. I don't do the weed though, only on special occasions.
   *[I smoke too!]
         ~LoveResponse()
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
     
        