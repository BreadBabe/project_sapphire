VAR charName="Luna"

VAR charEmotion="Indifferent"
VAR loveAmount=0

Hey stranger! So, what do you think? Was it everything you've ever dreamed of?
*[I guess?]
Guess? Oh, I was hoping you'd find it as exhilirating as I do. Guess we can't all be thrill-seekers.
     ** [I guess we can't.]
        ~AnnoyedResponse()
     **[Nah, it was fun!]
        ~HappyResponse()
        
        
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
        ->FINDINGS
        
        
        
*[It was amazing, surprisingly!]
Duh, that's what I've been saying. And those bones.. there's something eerily beautiful about them, don't you think?
        ** [Wait, what?]
        ~AnnoyedResponse()
        Oh, don't give me that look. I can appreciate the aesthetics of a well-aged skeleton, can't I?
        
        
==FINDINGS==
*[A ruby!]
Woah, dude! You're totally coming for my graverobbing throne here. Should I be worried? That's the best find in probably years!
     ** [Wait.. You've been doing this for years?]
        ~SmileResponse()
        Did I say years? Slip of the tongue. But yeah, it's been a while. This cemetery is almost like a second home. Weird, right? There's just something comforting about the quiet. So, dazzle me again, what else did you unearth?
        ->RING
     **[Take that, sucker!]
        ~HappyResponse()
        Oh, I love the competetive spirit! But hold on, don't get too cocky, rookie. Let's see if your luck holds out. What else did you find?
        ->RING

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
Seriously, you're making a killing tonight! Here I was thinking I waas the seasond pro, and you came along turning everything upside down.
     ** [Feeling lucky I came along?]
        ~SmileResponse()
        Definitely, though at this rate, I might start wondering if satan had something to do with it. I should bring you along more often. Got anything else, or are you hoarding all the luck tonight?
        ->CHAIN
     **[Yeah, I'm on a roll!]
        ~HappyResponse()
        Look at you, fortune teller! Let's see if your winning streak is going to hold up at the last find. Spill the beans, what's next?
        ->CHAIN
        
==CHAIN==
*[A cold chain!]
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

     ** [I guess we can't.]
        ~AnnoyedResponse()
     **[Nah, it was fun!]
        ~HappyResponse()
        
        
*[This is incredible! I can't believe I found all this!]
I know, right? Totally worth the creepy factor. Now, imagine what we could do on future dates? The opportunities are endelss!
    ** [I'd love that!]
        ~charEmotion="Indifferent"
        Me too! This was so much fun. I really enjoyed your sense of adventure and that you came here with an open mind. I had a great night. 
        -->END
    **[I'm not so sure..]
    ~AnnoyedResponse()
        Sure, and I'm the Queen of England. Relax, I'll protect you from the scary old bones. So, come on, what did you find?!
        -->END
        
        
        
*[Shouldn't we put it back? It seems disrespectful..]
Disrespectful? Those bones have been lying there for centuries. They won't miss a few trinkets. Don't be such a bummer. 
        ** [You're right!]
        ~SmileResponse()
        Oh, don't give me that look. I can appreciate the aesthetics of a well-aged skeleton, can't I?
        **[I'm gonna return it, sorry.]
        -->END
    
        //Can we really keep this stuff? It feels wrong..
        //Wrong? It's not like they were using it. Lighten up, it's all in good fun.
        //This is incredible! I cant believe I found all this!
        //I know, right? Totally worth the creepy factor. Now, imagine what we could do on future dates?
        //Shouldnt we put it back? It seems disrespectful..
        //Disrespectful? Those bones have been lying there for centuries. They won't miss a few trinkets. Don't be such a spoil-sport.
        //So. Partner in crime, what do you say we do next time? Maybe a haunted house? O    

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
        
        
