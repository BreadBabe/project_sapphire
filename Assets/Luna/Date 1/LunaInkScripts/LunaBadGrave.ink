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
*[A decaying rose..]
Oh... That's kind of a bummer. Looks like it's seen better days- kind of like the skeleton that left it behind. Bet the person who owned it had some serious heartbreak going on. Hope you found something that hasn't wilted away.
~IndifferentResponse()
     ** [Hoping for something less... dead]
        ~NeutralResponse()
        I think you mayb be in the wrong place for that. And, you know, "All that lives is born to die" like in one of my favourite Led Zeppelin songs. Anyway, what else have you managed to dig up?
        ->DEADCAT
     **[It's the thought that counts, right?]
        ~SmileResponse()
        Sure, we can go with that. Im impressed with the rose's will to live though, it still has some color. Can't relate. Anyway, what else have you found?
        ->DEADCAT

==DEADCAT==
*[A dead cat..]
A dead cat? Now that's pretty sad. Was it trying to claw its way out of the grave? Hope it doesn't have nine lives, or it may come back and haunt you. 
~IndifferentResponse()
     ** [It gave me quite the scare!]
        ~AnnoyedResponse()
        I bet it did! Nothing like a little jump-scare to keep the night interesting though. 
        ->LETTER
     **[Do you think it was someone's beloved pet?]
       Probably. Maybe it was guarding the grave, waiting for just the right graverobber. Creepy, but kind of sweet in a morbid way, right? Keep going- what else have you unearthed?
        ~SmileResponse()
        ->LETTER
        
==LETTER==
*[A love letter!]
Oh, a love letter? That's gross. Wait, let me read it... Oh wow, okay, that's actually really sad. Tragic to think it was buried here and forgotten. Someone's heartfelt words were just left here to rot.
~IndifferentResponse()
     ** [It feels like we're invading someone's private memories]
        ~AnnoyedResponse()
        Invading? Maybe. But graverobbing isn't exactly for the faint of heart. At least someone got to read it, I guess. It's sweet that you care though, shows you're not a complete ghoul. But let's not get too sentimental; we're here to unearth, not to mourn.
        ->ENDING
     **[Doesn't it bother you, finding something so personal?]
        ~NeutralResponse()
        Bother me? Not really. Look, everything we find has a story, right? This is just another chapter. If we start getting choked up over every sentimental scribble, we're in the wrong line of work. Focus on the find, not the feels, you know.
        ->ENDING
        
==ENDING==
*[Can we really keep this stuff? It feels wrong..]
Wait, you wanted to keep the dead cat? I'd rather the kitty gets to rest in peace, but whatever floats your boat...
~IndifferentResponse()
     ** [What, no!]
     That's what I thought. Let's leave the cat where it belongs, next to its human. Some things are better left for the spirits to watch over. Ready to head out?
     ~HappyResponse()
     ->NEXTDATE
     **[Why not?]
     Because it's a dead cat. It should stay with its human. If it was my dead cat and someone stole her, I'd probably stab them. Anyway, it's getting dark, and I gotta get home to my living, breathing cat.
     ~AngryResponse()
     ->NEXTDATE
*[This is incredible! I can't believe I found all this!]
I know, right? Totally worth the creepy factor. Now, imagine what we could do on future dates? The opportunities are endelss!
~HappyResponse()
    ** [I'd love that!]
        ~SmileResponse()
        Perfect! It's a date. There's a haunted house next town over that I've been dying to check out. Literally. It's gonna be a killer! Anyway, it's getting dark.
        ->NEXTDATE
    **[I'm not so sure..]
    ~AnnoyedResponse()
        Well, if you're having second thoughts, just remember tonight. You survived, right? That's more than these old suckers did. And hey, a little fear never hurt anyone.. Much. Anyway, it's getting dark.
        ->NEXTDATE
*[Shouldn't we put it back? It seems disrespectful..]
Probably. It does feel a bit weird to walk away with these things, especially that dead cat. If it was my dead cat and someone stole her, I'd probably stab them.
~IndifferentResponse()
        ** [I'm keeping it!]
        ~AngryResponse()
        Really? All of it? Even the cat? You've got some strange tastes, I guess. But okay, if you're keeping anything, maybe just stick to the letter. Anyway, it's getting dark.
        ->NEXTDATE
        **[I'm with you.]
        Good call. Let's put them back where we found them. Nothing of value anyway, maybe it'll bring us some good karma for our next adventure. Ready to head out?
        ~HappyResponse()
        ->NEXTDATE
    
    ==NEXTDATE==
*[I'd really like to see you again.]
~SmileResponse()
Sure, why not? If you're brave enough to handle another night of mischief with me, how about we make it a bit more personal? My place, next time. I promise it's only slightly less creepy than here.
     ** [I'd love that!]
     Fantastic! Can't wait to show you my collection of oddities. Maybe we'll even stir up some spritis- if we're lucky. Catch you soon, devil!
        ~HappyResponse()
        ->END
     **[I'm not so sure..]
     Fine. Your loss, anyway. If you can't handle a little excitement, then maybe you're better off sticking to the mundane. Don't come crawling back when you realize how dull normal is. Good riddance, and try not to be too boring without me. Bye!
        ~UpsetResponse()
        ->END
*[I had fun, but I'm not sure if we're a good match.]
Really? What a shocker. Listen, I don't have time for half hearted whims. Either you're all in, or you're out. Seems like you've made your choice, so let's not waste any more of each other's time before one of us gets cursed.
~AngryResponse()
    ** [You know what, I do want to see you again!]
        ~NeutralResponse()
        Fine, but don't expect me to hold your hand through it. If we're doing this, you're going to have to prove you can handle it. I'm not here to babysit, got it? Let's see if you can actually keep up next time. Talk to you later, I guess. Bye!
        ->END
    **[It's for the best.]
    ~UpsetResponse()
        Sure, run away. It's obviously too much for you. I need someone who can keep up with me anyway, not someone who gets cold feet. Good riddance, and try not to be too boring without me. Bye!
        ->END
        

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
        
        
