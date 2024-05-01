VAR charName = "Noah"
VAR charEmotion = "Neutral"
VAR loveAmount = 0
VAR charSound=""

Hey! You found your way here, not too difficult i hope
*[!!!]
    -> INTRODUCTION

== INTRODUCTION ==
~ SmileResponse()
You are who i think you are right? I am Noah.
*[Oh yeah just got a little startled]
    ~HappyResponse()
    No worries, how about i show you to our table?
    **[Id love that]
        Just follow me
        ->TABLE_DEFAULT
    **[Absolutley lead the way]
        Just follow me
        ->TABLE_DEFAULT

*[Indeed am nice to meet you!]
    ~ContentResponse()
    Nice to meet you too! How about we get seated and take if from there?
    **[Id love that!]
        ~SmileResponse()
        ill lead the way!
        ->TABLE_DEFAULT
    **[Sure thing! Lead on!]
        ~SmileResponse()
        ->TABLE_DEFAULT
        will do!
        
*[Dont jump out at me like that!]
    ~ConfusedResponse()
    I am sorry?
    **[That was uncalled for i am sorry, just got spooked]
        ~NeutralResponse()
        Its fine... it happens. Anyhow should we get seated?...
        ***[sure!]
            ~NeutralResponse()
            Lets get to it then!
            ->TABLE_DEFAULT
        ***[yes please and once again sorry...]
            ~NeutralResponse()
            Its okay... really, we all get a little nervous sometimes!
            ->TABLE_DEFAULT
    **[Just be more careful in the future]
        Right... anyways table is this way should we get seated?...
        ***[sure]
            yup...
            -> TABLE_BAD_MOOD
        ***[mhm]
            ...
            -> TABLE_BAD_MOOD

== TABLE_DEFAULT ==
*[Walk to table]
    Well now that we are seated hows the day been?!
    -> END

== TABLE_BAD_MOOD ==
*[Walk to table]
    -> END

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