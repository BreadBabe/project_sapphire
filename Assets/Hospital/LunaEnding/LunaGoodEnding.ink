VAR charName = "Grandma"
VAR charEmotion = "Neutral"
VAR loveAmount = 0
VAR charSound=""

I can't express how much joy it brings me to see you here, with someone who makes you so happy. My heart feels lighter knowing that you won't be alone in the days to come..
 *[...]
 ~HappyResponse()
Seeing you with someone who loves and cherishes you is all I ever wanted. You've found a wonderful companion, and that fills my heart with peace and contentment..
      ** [...]
     ~ProudResponse()
      You've made me so proud, my dear. Your promise was not empty; you kept it and found someone who brings you joy. As my time fades, I am comforted by the thought that you are in good hands. Remember, I am always with you in spirit, watching over you and your newfound happiness..
          ***[...]
          ~NeutralResponse()
           Before I go, could you tell me their name? I want to know the name of the one who has brought such joy into your life..
            ****[Her name is Luna!]
           ~HappyResponse()
           Thank you, my dear. Life may be fleeting, but love endures. Knowing you are with Luna gives me the strength to face my end with a smile. Carry this love with you always, and know that I leave this world with a heart full of joy and gratitude..
               *****[I will, Grandma.]
              -->END

=== function HappyResponse ===
        ~ charEmotion = "Happy"
        
=== function ProudResponse===
~charEmotion="Proud"

== function NeutralResponse==
~charEmotion="Neutral"

