VAR charName = "Grandma"
VAR charEmotion = "Neutral"
VAR loveAmount = 0
VAR charSound=""

 My beloved grandchild. As my journey on this earth nears its end, there is a heartfelt request I must make... 
 *[..?..]
 In the days ahead, as you continue your path through life, I do not want you to carry the weight of the world alone. It is my deepest desire to know that you will be surrounded by love, even when I am no longer here beside you. Therefore, I kindly ask to meet your significant other, so that I may find solace in knowing you will have a companion to walk alongside you in the days to come..
    ** [I promise, Grandma, I will make sure of it...]
        -->END
       

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
