VAR envName = "Home"
VAR charName = "Astro"

VAR charEmotion = "Neutral"
VAR loveAmount = 8

# story block
Before you stands a figure
    * [Shoot it] # bad
        The bullet bounces right of it...It looks angry >:(
        ~ NegativeResponse()
        ** [Run] # bad
            youre too slow you fat rat...you die
            ~ NegativeResponse()
        ** [Stand still.. you die... rat] # bad
            ~ NegativeResponse()
    * [Wave] # good
        It greets you with a :3
        ~ PositiveResponse()
        ** [:3] # good
           :D 
           ~ PositiveResponse()
        ** [:)] # good
            :D
            ~ PositiveResponse()
        ** [walk away] # bad
            it looks sad :(
            ~ NegativeResponse()
    * [Look at it]
        Nothing really happens
--> END

# function blocks
=== function PositiveResponse ===
        ~ loveAmount++
        ~ charEmotion = "Positive"

=== function NegativeResponse ===
        ~ loveAmount--
        ~ charEmotion = "Negative"