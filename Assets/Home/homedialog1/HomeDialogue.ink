VAR charName = "Astro"
VAR charEmotion = "Neutral"
VAR loveAmount = 0
VAR charSound=""

 Well, congratulations to me! I’ve just committed to introducing my nonexistent significant other to my dying grandma. Smooth move, self.
    * [....Why did I do this to myself?]
        I can just imagine the look on her face when she realizes I’ve been talking about someone who’s about as real as Andrew Tates hairline. Gotta start brainstorming creative excuses, NOW.
        ~ BarkResponse()
        
        ** [Wait… you’re right]
            What if I could find someone in one week? Picture this: Operation Find-a-Partner in Seven Days. I mean, weirder things must have occurred, right?
            ~ PositiveResponse()
            ***[Right?]
            Plus, think of the bragging rights. “Oh, you found your soulmate by a common interest? That’s cute. Me? Oh, I just found mine under the pressure of fulfilling a dying wish.”
            ~ HowlResponse()

               ****[You’re a genius!]
                I can totally do this. Time to put on my game face and dive into the wacky world of dating apps, and maybe even a little online stalking. Let the games begin!!
                ~ NeutralResponse()
                *****[Time to open this stupid app...]
             
       
--> END

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
===function HowlResponse===
~charSound="Howl"
~charEmotion="Howl"