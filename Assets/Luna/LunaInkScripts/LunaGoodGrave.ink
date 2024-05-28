VAR charName="Luna"

VAR charEmotion="Smile"
VAR loveAmount=0

Hey stranger! So, what did you think? Was it everything you've ever dreamed of?
*[I guess?]
~charEmotion="Indifferent"
Guess? Oh, I was hoping you'd find it as exhilirating as I do. Guess we can't all be thrill-seekers.
     ** [I guess we can't.]
     Guess not. Kind of a letdown when you're hoping for a partner in crime and end up with a scaredy-cat. But hey, life's full of disappointments, right? Anyway, what did you find?
        ~AnnoyedResponse()
        ->FINDINGS
     **[Nah, it was fun!]
     Oh, color me impressed! There's hope for you yet. Maybe next time you'll even smile a bit, no promises though, I know how hard that can be. Anyway, what did you find?
        ~HappyResponse()
        ->FINDINGS
        
*[It was actually pretty creepy.]
Aww, come on! It's just a bit of harmless fun with the dearly departed. You're not going to tell me you're scared, are you? You are looking a bit pale... 
    ** [I think I'm gonna pass out.]
        ~charEmotion="Indifferent"
        Sure, and I'm the Queen of England. Relax, I'll protect you from the scary old bones. So, tell me, what did you find?!
        ->FINDINGS
    **[No!]
    ~AnnoyedResponse()
        Sure, and I'm the Queen of England. Relax, I'll protect you from the scary old bones. So, come on, what did you find?!
        ->FINDINGS
    **[I am, so what are you gonna do about it?]
    Ha! Maybe I'll just have to haunt your dreams tonight to toughen you up a bit. But seriously, let's focus on what you found- anything cool, or just cobwebs in your pockets?
        ->FINDINGS
        
*[It was amazing, surprisingly!]
Duh, that's what I've been saying. And those bones.. there's something eerily beautiful about them, don't you think?
        ** [Wait, what?]
        ~AnnoyedResponse()
        Oh, don't give me that look. I can appreciate the aesthetics of a well-aged skeleton, can't I? So, spill the beans, what did you find? 
        ->FINDINGS
        
==FINDINGS==
*[A ruby!]
Woah, dude! You're totally coming for my graverobbing throne here. Should I be worried? That's the best find in probably years!
     ** [Wait.. You've been doing this for years?]
        ~SmileResponse()
        Did I say years? Slip of the tongue. But yeah, it's been a while. This cemetery is almost like a second home. Weird, right? There's just something comforting about the quiet. So, dazzle me again, what else did you unearth?
        ->RING
     **[Take that, sucker!]
        ~HappyResponse()
        I love the competetive spirit! But hold on, don't get too cocky, rookie. Let's see if your luck holds out. What else did you find?
        ->RING
*[I actually prefer not to tell you anything I've found.]
Wait. You're joking, right?... Oh no... You aren't. Come on, spill the beans, I want to know!
     **[Alright, I'll tell you.]
     ~LoveResponse()
     YES! Come on, hurry up, show me. What did you find?
      ->RING
     **[I don't rob and tell!]
     Why do you have to be so boring? Imagine waking up every morning and just choosing to be as boring as you. Has to be exhausting, really.
          ***[Fine, I'll tell you.]
          ~IndifferentResponse()
          That's what I'm talking about, a true redemption arc. Hurry up, what did you find?
          ->RING
          ***[I'd rather just keep it for myself.]
          ~PissedResponse()
          Alright, I guess. It's getting really dark anyway, and I gotta get home to my cat.
          ->NEXTDATE

==RING==
*[A diamong ring!]
What the hell! Seriously? The grave I was poking around in just had a pair of dirty socks and a used condom. Were you...?
     ** [What, NO!]
        ~SmileResponse()
        You dirty bastard. I knew it, Saltburn all the way. Kidding! I totally had you for a second. A diamond ring and a ruby? You're either incredibly lucky or cursed. What else did you find?
        ->COINS
     **[Yeah...]
       That's the spirit. What's the harm? They've been dead for decades. Let's see, what else did you manage to dig up?
        ~HappyResponse()
        ->COINS
        
==COINS==
*[Gold coins!]
Seriously, you're making a killing tonight! Here I was thinking I was the seasond pro, and you came along turning everything upside down.
     ** [Feeling lucky I came along?]
        ~SmileResponse()
        Definitely, though at this rate, I might start wondering if satan had something to do with it. I should bring you along more often. Got anything else, or are you hoarding all the luck tonight?
        ->CHAIN
     **[Yeah, I'm on a roll!]
        ~HappyResponse()
        Look at you, fortune teller! Let's see if your winning streak is going to hold up at the last find. Spill the beans, what's next?
        ->CHAIN
        
==CHAIN==
*[A gold chain!]
Okay, at this point, I'm just pissed. You've officially outdone me on my own turf. How are you even doing this? Did you sacrifice a baby earlier today?
     ** [Sorry, not sorry!]
        ~AnnoyedResponse()
        Keep that up, and you'll need to start giving me pointers.
        ->ENDING
     **[Beginners luck, I guess]
        ~HappyResponse()
        Luck, nothing. Don't downplay your skills. They're obviously paying off, big time!
        ->ENDING
        
==ENDING==
*[Can we really keep this stuff? It feels wrong..]
~AnnoyedResponse()
Oh come on, don't start with the guilt now. These trinkets? They've been underground longer than we've been alive. Let's not get all sentimental over a few shiny things. 
     ** [But what if it's important to the dead person?]
     ~IndifferentResponse()
     If they haven't come back for it yet, I think we're safe. Besides, they're dead- they've got bigger things to worry about than som earthly bling. Anyway, it's getting dark.
     ->NEXTDATE
     **[Yeah, you're right!]
     ~SmileResponse()
     Absolutely! Glad you're seeing it my way. Who knows, maybe next time we can unearth something even cooler. But it's getting a bit late, gotta get home to my cat.
     ->NEXTDATE
*[This is incredible! I can't believe I found all this!]
~NeutralResponse()
I know, right? Totally worth the creepy factor. Now, imagine what we could do on future dates? The opportunities are endelss!
    ** [I'd love that!]
        ~LoveResponse()
        Perfect! It's a date. There's a haunted house next town over that I've been dying to check out. Literally. Anyway, it's getting dark.
        ->NEXTDATE
    **[I'm not so sure..]
    ~AnnoyedResponse()
        Well, if you're having second thoughts, just remember tonight. You survived, right? That's more than these old suckers did. And hey, a little fear never hurt anyone.. Much. Anyway, it's getting dark.
        ->NEXTDATE
*[Shouldn't we put it back? It seems disrespectful..]
~AnnoyedResponse()
Disrespectful? Those bones have been lying there for centuries. They won't miss a few trinkets. Don't be such a bummer.
        ** [You're right!]
        ~SmileResponse()
        Exactly! They've moved to the great beyond or whatever. What's a few missing trinkets to a skeleton? Anyway, it's getting dark.
        ->NEXTDATE
        **[I'm gonna return it, sorry.]
        ~PissedResponse()
        Suit yourself, but you're missing out on all the fun. Remember, guilt is just a ghost haunting the living. Shake it off and enjoy the spoils. Anyway, it's getting dark.
        ->NEXTDATE
    
    ==NEXTDATE==
*[I'd really like to see you again.]
~SmileResponse()
Sure, why not? If you're brave enough to handle another night of mischief with me, how about we make it a bit more personal? My place, next time. I promise it's only slightly less creepy than here.
     ** [I'd love that!]
     Fantastic! Can't wait to show you my collection of oddities. Maybe we'll even stir up some spritis- if we're lucky. Catch you soon, devil!
        ~LoveResponse()
        ->END
     **[I might have to think about it..]
    ~UpsetResponse()
        Okay...? But I do need someone who can keep up with me, remember that. So, I'll talk to you later, I guess? Bye!
        ->END
        
*[I had fun, but I'm not sure if we're a good match.]
Really? What a shocker. Listen, I don't have time for half hearted whims. Either you're all in, or you're out. Seems like you've made your choice, so let's not waste any more of each other's time before one of us gets cursed.
~PissedResponse()
    ** [You know what, I do want to see you again!]
        ~NeutralResponse()
        Fine, but don't expect me to hold your hand through it. If we're doing this, you're going to have to prove you can handle it. I'm not here to babysit, got it? Let's see if you can actually keep up next time. Talk to you later, I guess. Bye!
        ->END
    **[I probably have to think about it.]
    ~UpsetResponse()
        Okay...? But I do need someone who can keep up with me, rmember that. So, I'll talk to you later, I guess? Bye!
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
        
        
