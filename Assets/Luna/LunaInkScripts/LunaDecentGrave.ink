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
        ~NeutralResponse()
        ->FINDINGS
        
*[It was actually pretty creepy.]
~AnnoyedResponse()
Aww, come on! It's just a bit of harmless fun with the dearly departed. You're not going to tell me you're scared, are you? You are looking a bit pale... 
    ** [I think I'm gonna pass out.]
        ~IndifferentResponse()
        Sure, and I'm the Queen of England. Relax, I'll protect you from the scary old bones. So, tell me, what did you find?!
        ->FINDINGS
    **[No!]
    ~AngryResponse()
        Sure, and I'm the Queen of England. Relax, I'll protect you from the scary old bones. So, come on, what did you find?!
        ->FINDINGS
    **[I am, so what are you gonna do about it?]
    ~SmileResponse()
    Ha! Maybe I'll just have to haunt your dreams tonight to toughen you up a bit. But seriously, let's focus on what you found- anything cool, or just cobwebs in your pockets?
        ->FINDINGS
        
*[It was amazing, surprisingly!]
Duh, that's what I've been saying. And those bones.. there's something eerily beautiful about them, don't you think?
~HappyResponse()
        ** [Wait, what?]
        ~NeutralResponse()
        Oh, don't give me that look. I can appreciate the aesthetics of a well-aged skeleton, can't I? So, spill the beans, what did you find? 
        ->FINDINGS
        
==FINDINGS==
*[A pair of earrings!]
Earrings, huh? Well, they're classic. A bit too 'everyday undead' for my taste though. I mean, every skeleton in the closet has a pair, right? But there's a certain charm to outlasting your owner. But still, they must've meant something to someone once, right?
~IndifferentResponse()
     ** [I thought they were pretty neat.]
        ~NeutralResponse()
        Neat? Sure, if you're into the whole 'eternally forgotten' aesthetic. Still, I'm all about surprises. So what else have you got lurking in your bag of macabre goodies?
        ->WATCH
     **[Maybe too simple for you, but I liked them.]
        ~AnnoyedResponse()
        Simplicity has its charm, I suppose, especially when it's centuries old. It whispers of past lives... and quiet days. Maybe the next find will have a bit more shadow to it. Lets see it!
        ->WATCH
*[I actually prefer not to tell you anything I've found.]
~IndifferentResponse()
Wait. You're joking, right?... Oh no... You aren't. Come on, spill the beans, I want to know!
     **[Alright, I'll tell you.]
     ~LoveResponse()
     YES! Come on, hurry up, show me. What did you find?
      ->WATCH
     **[I don't rob and tell!]
     ~AngryResponse()
     Why do you have to be so boring? Imagine waking up every morning and just choosing to be as boring as you. Has to be exhausting, really.
          ***[Fine, I'll tell you.]
          ~IndifferentResponse()
          That's what I'm talking about, a true redemption arc. Hurry up, what did you find?
          ->WATCH
          ***[I'd rather just keep it for myself.]
          ~PissedResponse()
          Alright, I guess. It's getting really dark anyway, and I gotta get home to my cat.
          ->NEXTDATE

==WATCH==
*[A pocket watch!]
Oh, now that's more like it! A bit of old-world charm. Maybe it counted its last hour in a very dramatic moment. It seems like it's not working anymore, it's definitely not ticking.
~charEmotion="Smile"
     ** [This one feels more your style, right?]
        ~SmileResponse()
        Definitely closer to the mark. There's a weight to it as well, a sense of past secrets I guess. But keep digging, what else is in your pockets?
        ->BOOTS
     **[I though't you'd appreciate this one.]
       Appreciate? Maybe if it was still ticking. I like things with a bit more life in them- or at least, a bit more death. This is just halfway there. Anyway, let's see if you've got something else in there that actually surprises me! 
        ~NeutralResponse()
        ->BOOTS
        
==BOOTS==
*[A pair of cowboy boots!]
Cowboy boots? That's delightfully bizarre, and honestly.. slay. What's the story here, I wonder? What if this person is a old cowboy, riding out in the ghost towns? Can you imagine the tales these boots could tell if they talked?
~NeutralResponse()
     ** [Unexpected, right?]
        ~SmileResponse()
        Totally! It's like we're assembling a ghost cowboy or something. There's a whole western drama buried here. Keep the surprises coming, show me what else you've got!
        ->KNIFE
     **[They have a certain ghost-town chic, don't you think?]
        ~HappyResponse()
        Ghost-town chic is exactly my vibe. You're getting the hang ouf this! Alright, keep the surprises coming. What else have you unearthed?
        ->KNIFE
        
==KNIFE==
*[A bloody knife!]
Wait, a bloody knife? Now this is the kind of find that gets my blood pumping. Was it used in a duel? A crime of passion? There's something undeniably beautiful about blood, honestly. What if it's the murder weapon? 
~charEmotion="Smile"
     ** [Just part of today's haul. You know, typical tuesday stuff.]
        ~NeutralResponse()
        Typical tuesday? Remind me not to bump into you in a dark alley! But seriously, if you keep finding stuff like this, we might need to start a detective agency- or a horror tour. Who knows, we might make a killing!
        ->ENDING
     **[I swear, I'm not usually this lucky with murder weapons.]
        ~SmileResponse()
        Oh, sure, 'not usually this lucky', you say with a bloody knife in hand! You're practically a natural-born killer at this point. Keep it up and we might just solve a cold case- or start a new one.. Either way, I'm here for the plot twists! 
        ->ENDING
        
==ENDING==
*[Can we really keep this stuff? It feels wrong..]
~AngryResponse()
Oh come on, don't start with the guilt now. These trinkets? They've been underground longer than we've been alive. Let's not get all sentimental over a pair of earrings and a bloody knife.
     ** [But what if it's the murder weapon?]
     ~IndifferentResponse()
     Why did they even bury it with him in the first place then? Seems bizarre. Besides, he's dead- he's got bigger things to worry about. Like... being dead. Anyway, it's getting dark.
     ->NEXTDATE
     **[Yeah, you're right!]
     ~SmileResponse()
     Absolutely! Glad you're seeing it my way. Who knows, maybe next time we can unearth something even cooler. But it's getting a bit late, gotta get home to my cat.
     ->NEXTDATE
*[This is incredible! I can't believe I found all this!]
~HappyResponse()
I know, right? Totally worth the creepy factor. Now, imagine what we could do on future dates? The opportunities are endelss!
    ** [I'd love that!]
        ~LoveResponse()
        Perfect! It's a date. There's a haunted house next town over that I've been dying to check out. Literally. It's gonna be a killer! Anyway, it's getting dark.
        ->NEXTDATE
    **[I'm not so sure..]
    ~AngryResponse()
        Well, if you're having second thoughts, just remember tonight. You survived, right? That's more than these old suckers did. And hey, a little fear never hurt anyone.. Much. Anyway, it's getting dark.
        ->NEXTDATE
*[Shouldn't we put it back? It seems disrespectful..]
Disrespectful? Those bones have been lying there for centuries. They won't miss a few trinkets. Don't be such a bummer.
~AnnoyedResponse()
        ** [You're right!]
        ~HappyResponse()
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
        
