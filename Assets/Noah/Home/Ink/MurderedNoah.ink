VAR charName = "Noah"
VAR charEmotion = "Empty"
VAR loveAmount = 0
VAR charSound = ""


\*as the haze starts to clear you sense a terrible pain in the back of your head as you try and regain your balance*
    *[...]
        ~MadResponse()
        \*Noah now stands before you with a disturbing experssion he seems to be reaching for something. You can barley see anything else...*
            **[...]
            \*As you start to drift back into unconciousness you think of your grandma will she die alone?*
                ***[...]
                    ~NoNoah()
                    \*Your eyes once again lose thier ability to see and you feel yourself drifting into a void. You never left Noahs appartment and your last visit to grandma turned out to be your very last*
                        ****[...]
                            ->END
=== function HappyResponse ===
        ~ charEmotion = "Happy"
        ~ charSound=""
        
=== function SadResponse ===
        ~ charEmotion = "Sad"
        ~ charSound=""
        
=== function NeutralResponse===
        ~ charEmotion="Neutral"
        ~ charSound=""
        
=== function MadResponse ====
        ~charEmotion="Mad"
        ~charSound=""
        
=== function AnnoyedResponse ====
        ~charEmotion="Annoyed"
        ~charSound=""
        
=== function ContentResponse ====
        ~charEmotion="Content"
        ~charSound=""
        
=== function SmileResponse ====
        ~charEmotion="Smile"
        ~charSound=""
        
=== function ConfusedResponse ====
        ~charEmotion="Confused"
        ~charSound=""
        
=== function BlushResponse ====
        ~charEmotion="Blush"
        ~charSound=""
        
=== function NoNoah ====
    ~charEmotion="Empty"
    ~charSound=""