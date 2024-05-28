VAR charName = "Astro"
VAR charEmotion = "Neutral"
VAR loveAmount = 0
VAR charSound=""

Hey Astro! I'm back! Missed you, buddy. Sorry for being gone for so long.
~HowlResponse()
*[Who's a good boy?!]
      Yes you are! So, I went on this date with Noah, and it was pretty interesting. Not that I've been on many... You would know. Anyway, he was really cool!
      ~ BarkResponse() 
      **[But also kind of quirky?]
          So, he suggests we meet up at a bar. And then, I found out he works there! And I got to mix a drink.
          ~ PositiveResponse()
          ***[Not really sure if he liked it though...]
            But it was surprisingly fun, in a messed up way, like he made it fun. I hope grandma would be proud of me, well maybe not the drinking part... 
            ~ BarkResponse()
            ****[Speaking of grandma!]
                Back to reality, Astro. Grandma's wish won't fulfill itself, you know. And dating these days makes me want to vomit. What's up with all those fish pictures? Does anyone find that attractive? I'm glad Noah seems different.
                    ~ NeutralResponse()
              *****[Anyway, gotta stay focused.]
              ~PhoneResponse()
                 Hold up, I think I just got a text. Is it Noah or the Pizza Hut delivery guy? Let's find out!
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