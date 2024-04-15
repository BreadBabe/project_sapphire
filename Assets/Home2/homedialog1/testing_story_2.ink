VAR envName = "Home"
VAR charName = "Astro"

VAR charEmotion = "Neutral"
VAR loveAmount = 0

Before you stands a figure
    * [Shoot it]
        The bullet bounces right of it...It looks angry >:(
        ~ NegativeResponse()
        ** [Run]
            youre too slow you fat rat...you die
            ~ NegativeResponse()
        ** [Stand still]
            .. you die... rat
            ~ NegativeResponse()
    * [Wave]
        It greets you with a :3
        ~ PositiveResponse()
        ** [:3]
       :D 
           ~ PositiveResponse()
        ** [:)]
        :D
            ~ PositiveResponse()
        ** [walk away]
            it looks sad :(
            ~ NegativeResponse()
    * [Look at it]
        Nothing really happens
--> END

=== function PositiveResponse ===
        ~ loveAmount++
        ~ charEmotion = "Positive"

=== function NegativeResponse ===
        ~ loveAmount--
        ~ charEmotion = "Negative"