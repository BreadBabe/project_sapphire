VAR charName = "Noah"
VAR charEmotion = "Smile"
VAR loveAmount = 0
VAR charSound = ""

HEY!! You found your way here, not too difficult I hope?!
*[!!!]
    -> INTRODUCTION

== INTRODUCTION ==
You are who i think you are right? I am Noah.
*[Oh yeah just got a little startled]
    ~HappyResponse()
    No worries, how about i show you to our table?
    **[Id love that]
        ~HappyResponse()
        Just follow me
        ->TABLE_DEFAULT
    **[Absolutley lead the way]
        Just follow me
        ->TABLE_DEFAULT

*[Indeed am nice to meet you!]
    ~ContentResponse()
    Nice to meet you too! How about we get seated and take if from there?
    **[Id love that!]
        ~HappyResponse()
        ill lead the way!
        ->TABLE_DEFAULT
    **[Sure thing! Lead on!]
        ~HappyResponse()
        will do!
        ->TABLE_DEFAULT

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
            ~SmileResponse()
            Its okay... really, we all get a little nervous sometimes! 
            ->TABLE_DEFAULT
    **[Just be more careful in the future]
        ~AnnoyedResponse()
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
    **[Its been alright...]
        ~NeutralResponse()  
        ...alright, yeah good to hear...
        ***[Should we get a drink?] 
                ~HappyResponse()
                Hell yeah! I'll get us something!
                ->TABLE_DRINK()
        ***[...]
                ...
                ****[...]
                        Maybe i should get us something to drink?
                        *****[yeah, sure]
                                ->TABLE_DRINK()
                        *****[...]
                                ->TABLE_DRINK()
                ****[should we get something to drink?]
                    Yeah sure i'll get us something
                    ->TABLE_DRINK
    **[Quite exciting the craziest thing just happened!]
        ~HappyResponse()
            OH? Dont just leave me hanging here go on tell me!
        ***[A kitten was stuck in a tree and i had to save it!]
                damn thats crazy, you wanna get a drink to celebrate?
                ****[Sure!]
                        ->TABLE_DRINK()
                ****[Was thinking just that!]
                        ~ContentResponse()
                        I'll tell them this ones for the kittens haha
                        ->TABLE_DRINK()
                ****[Id love to!]
                        ~ContentResponse()
                        Great!
                        ->TABLE_DRINK()
                
        ***[I almost got run over by a car!]
                ~HappyResponse()
                ohhh that was you! Had to veer out of the way really quickly haha, close one!
                ****[WHAT?!]
                        ~ContentResponse() //Suprised could work if i had it
                        Dont worry just messing with ya! haha
                        ->REALLY_AND_WHAT()
                ****[Really?]
                        ~SmileResponse()
                        Nah, just messing with you haha
                        -> REALLY_AND_WHAT()
                ****[That isn't funny.]
                        ~ConfusedResponse()
                        Ah come on i was just joking!
                        *****[Yeah, whatever...]
                                ...heh yeah... Anyhow we should probably get something to drink...
                                ->TABLE_DRINK()
                        *****[Not really my type of humour]
                                ... Anyhow we should probably get something to drink...
                                ->TABLE_DRINK() 
                        *****[You're not funny!]
                                ~MadResponse()
                                ...*sigh*...*rolls his eyes*... You really aint no fun huh
                                -> BAD_DATE_END()
        ***[I saw someone slip on a banana peel! Just like in the cartoons!]
            ~HappyResponse()
            Woah really?! I wish i could have seen that!
                ****[It was quite surreal]
                        ~ContentResponse()
                        haha, bet! This deserves a drink or two, let me get you something!
                        *****[That be great thank you!]
                            ~HappyResponse()
                            -> TABLE_DRINK()
                        *****[Sure thing!]
                            ~HappyResponse()
                            -> TABLE_DRINK()
                ****[Yeah i could barley hold in my laughter haha]
                        ~ContentResponse()
                         haha, bet! I would have laughed out loud you got more constraint than me! Should get a drink to remember this moment! 
                         *****[That be great thank you!]
                            ~SmileResponse()
                            -> TABLE_DRINK()
                         *****[Sure thing!]
                            ~SmileResponse()
                            -> TABLE_DRINK()
                         *****[Would that not just make us forget faster?]
                            ~ContentResponse()
                                HA! We dont need something that strong yet
                                ~HappyResponse()
                                ->TABLE_DRINK()
        ***[I found 200  on the street!]
                ~ContentResponse()
                SWEET! i wish I had gotten to that first! How about a drink to celebrate?
                        *****[That be great thank you!]
                            ~SmileResponse()
                            -> TABLE_DRINK()
                        *****[Sure thing!]
                            ~SmileResponse()
                            -> TABLE_DRINK()
        ***[A parrot landed on my shoulder and told me how the day would go!]
                SURE! What it say huh?
                ****[It said you where gonna by me a drink]
                        ~ContentResponse()
                        BET!
                        ->TABLE_DRINK()
                ****[It said you where a secret serial killer!]
                        ~HappyResponse()
                        NO WAY MY SECRETS BEEN EXPOSED, YOU MUST DIE! Haha
                        Better get you something before we get to that aye?
                        -> TABLE_DRINK()
                ****[It said the earth will implode!]
                        ~HappyResponse()
                        WOAH,Better make the best of it then, can i get you something to drink?
                        *****[That be great thank you!]
                            -> TABLE_DRINK()
                        *****[Sure thing!]
                            -> TABLE_DRINK()
    **[I had a little trouble getting here]
        ~NeutralResponse()
        Yeah this place can be a damn maze sometimes but glad you could make it!
            ***[So am I! lets get started shall we!]
                    ~SmileResponse()
                    Say no more, drinks coming up!
                    ->TABLE_DRINK()
            ***[It was more about traffic really]
                    ~SmileResponse()
                    I see well youre here now, could i get you something to drink?
                    *****[That be great thank you!]
                            -> TABLE_DRINK()
                        *****[Sure thing!]
                            -> TABLE_DRINK()
        
    -> END

== TABLE_BAD_MOOD ==
*[Walk to table]
    -> BAD_DATE_END()
    
== TABLE_DRINK ==
    ~SmileResponse()
    Alirght now then what you want to start with the drinks are on me!
    **[Youre gonna regret that]
        ~ContentResponse()
        Oh well maybe just the first one then haha
            ***[]
    **[Oh really now?]
        Ofcourse! Got to flex that employee discount!
        
    **[]

== BackstoryDialogue ==
//Intended for conversation about being a bartender

-> END

== BAD_DATE_END ==
*[I dont think this is gonna work out...]
    yeah... i had a feeling we should probably just call it right here save both of us some time, have a great evening...
        **[*Leave the bar*]
            -> END
*[*say nothing*]
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
        
=== function NoNoah ====
    ~charEmotion="Empty"
    ~charSound=""
        
        
//Storing results for options that lead to same outcome to prevent too much clutter
==REALLY_AND_WHAT==
*[Haha, good one!]
    ~BlushResponse()
    haha, heh thanks! Should i get us something to drink?
    -> TABLE_DRINK()
*[Heh..]
    ~SmileResponse()
    ...Should i get us something to drink?
    -> TABLE_DRINK()
*[Good i was ready to blow up on you! haha]
    ~SmileResponse()
    Haha yeah glad that wasnt me, a true moron that driver must have been right? Should get us some drinks to celebrate your continued survival! haha
    -> TABLE_DRINK()


