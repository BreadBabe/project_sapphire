VAR charName = "Grandma"
VAR charEmotion = "Neutral"
VAR loveAmount = 0
VAR charSound=""

I can't express how much joy it brings me to see you here, with someone who makes you so happy. My heart feels lighter knowing that you won't be alone in the days to come..
 *[This is Quinn!]
 ~HappyResponse()
Seeing you with someone who loves and cherishes you is all I ever wanted. You've found a wonderful companion, and that fills my heart with peace and contentment..
      ** [...]
     ~SadResponse()
      You've made me so proud, my dear. But... something seems off. There's a look in your eyes, a hesitation. Is everything truly as it seems? 
          ***[What do you mean?]
          ~DisappointedResponse()
           Please, be honest with me. Before I go, could you tell me, is this love real? Is Quinn really the one who brings you joy, or is this just to ease my mind in my final moments?
            ****[I'm sorry, Grandma...]
             ~MadResponse()
             My dear, why would you lie to me? You don't need to pretend for my sake. The truth, though painful, is better than a comforting lie. Life may be fleeting, but it's built on genuine connections, not illusions.
               *****[I understand...]
                I leave this world with a heavy heart, not because of your choices, but because of the burdens you felt you had to carry alone. Please, remember that honesty and genuine connections are what truly matter in life..
              -->END



=== function SadResponse ===
        ~ charEmotion = "Sad"
        
=== function MadResponse ===
        ~ charEmotion = "Mad"
        
=== function DisappointedResponse===
~charEmotion="Disappointed"

=== function ShockedResponse===
~charEmotion="Shocked"

=== function HappyResponse ===
        ~ charEmotion = "Happy"
        
=== function ProudResponse===
~charEmotion="Proud"

== function NeutralResponse==
~charEmotion="Neutral"
