VAR charName = "Astro"
VAR charEmotion = "Neutral"
VAR loveAmount = 0
VAR charSound=""

Hey Astro! I'm back! Missed you, buddy. Sorry for being gone for so long.
~HowlResponse()
    * [Who's a good boy?!]
        Yes you are! So, I went on this date with Luna, and it was probably the weirdest date I've ever been on. Not that I've been on many... You would know. Anyway, she was really cool!
        ~ BarkResponse()
        ** [But also kind of creepy?]
            So, she suggests we meet up at a cemetery. Yep, screams serial killer, like I'm gonna get Jeffrey Dahmered. And then, she drops this bomb on me – she wants us to go graverobbing. 
            ~ PositiveResponse()
            ***[And I know it's illegal..]
            But it was surprisingly fun, in a messed up way. I've never seen a real skeleton up close! Grandma would probably not be proud of me but hey, desperate times call for desperate measures. 
            ~ BarkResponse()
               ****[Speaking of grandma!]
                Back to reality, Astro. Grandma's wish won't fulfill itself, you know. And dating these days makes me want to vomit. What's up with all those fish pictures? Does anyone find that attractive? I'm glad Luna seems different.
                ~ NeutralResponse()
                *****[Anyway, gotta stay focused.]
                  ~PhoneResponse()
                   Hold up, I think I just got a text. Is it Luna or the Pizza Hut delivery guy? Let's find out!
                        ******[I should open my phone!]
             
       
--> END

===function PhoneResponse===
~charEmotion="Positive"
~charSound="Phone"

===function HowlResponse===
~charSound="Howl"
~charEmotion="Howl"

=== function PositiveResponse ===
        ~ charEmotion = "Positive"
        ~ charSound=""
        
=== function NegativeResponse ===
        ~ charEmotion = "Negative"
        ~ charSound=""
        
=== function BarkResponse===
~charEmotion="Bark"
~charSound="Bark"

=== function NeutralResponse===
~charEmotion="Neutral"
~ charSound=""
