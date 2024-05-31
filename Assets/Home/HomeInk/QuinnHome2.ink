VAR charName = "Astro"
VAR charEmotion = "Neutral"
VAR loveAmount = 0
VAR charSound=""

Hey Astro! I'm back! Missed you, buddy. Sorry for being gone for so long.
~HowlResponse()
*[Who's a good boy?!]
      Yes you are! So, I went on this date with Quinn, and it was pretty interesting. Not that I've been on many... You would know. Anyway, they were really cool!
      ~ BarkResponse() 
      **[But also kind of nerdy?]
        So, they suggest that we meet up at a bookstore. And then, they want me to look for a specific book- a book about a toxic plant. Yep, screams serial killer.
          ~ PositiveResponse()
          ***[Like why else would it be about a toxic plant?]
            Anyway, they were actually really nice. Grandma should be proud of me for getting into a person who loves plants, even if I'm not really into it. But hey, desperate times call for desperate measures.
            ~ BarkResponse()
            ****[Speaking of grandma!]
                Back to reality, Astro. Grandma's wish won't fulfill itself, you know. And dating these days makes me want to vomit. What's up with all those fish pictures? Does anyone find that attractive? I'm glad Quinn seems different.
                    ~ NeutralResponse()
              *****[Anyway, gotta stay focused.]
              ~PhoneResponse()
                 Hold up, I think I just got a text. Is it Quinn or the Pizza Hut delivery guy? Let's find out!
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