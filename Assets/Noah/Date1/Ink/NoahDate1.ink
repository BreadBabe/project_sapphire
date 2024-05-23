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
 *[GO TO END]
    ->END()

== TABLE_DEFAULT ==
*[Walk to table]
    Well now that we are seated hows the day been?!
    **[Its been alright...]
        ~NeutralResponse()  
        ...alright, yeah good to hear...
        ***[Should we get something to drink?]
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
                    I see well you're here now, could i get you something to drink?
                    *****[That be great thank you!]
                            -> TABLE_DRINK()
                        *****[Sure thing!]
                            -> TABLE_DRINK()
        
    -> END

== TABLE_BAD_MOOD ==
*[Walk to table]
    -> BAD_DATE_END()
     //Might not be used in final product, time constraints:(

== TABLE_DRINK ==
    ~SmileResponse()
    *[...]
    Alright now then what you want to start with the drinks are on me!
    **[You're gonna regret that]
        ~ContentResponse()
        Oh well maybe just the first one then haha
            ***[Too late! no taking it back now!]
                ~HappyResponse()
                NOOO! you cant do this to me think of my bank account! If only i had a discount to make the drinks cheaper... wouldnt that be nice?
                    ****[You got a discount?]
                        ~SmileResponse()
                        Sure do! Working here certainly got its perks!
                        -> BackstoryDialogue()
                    ****[Yeah, those are hard to come by i hear]
                        ~SmileResponse()
                        Oh definetly, getting hold of one is not an easy task. Luckly for you tho i have already gone though that process so to say!
                            *****[Really now?]
                                you're currently speaking to this employee of the month! Or rather employee of the month 2 months ago haha
                                    ->BackstoryDialogue()
            ***[Dont worry i wont abuse it]
                ~SmileResponse()
                Good to hear! but the first one is on me really! Cant be sitting on an employee discount and not use it!
                    ->BackstoryDialogue()
    **[Oh really now?]
        Ofcourse! Got to flex that employee discount! Besides would have been rude not get you anything.
            -> BackstoryDialogue()

== BackstoryDialogue ==
//Intended for conversation about being a bartender
    *[Ah so this is where you work!]
        You atleast read my profile i see, said i was a bartender but never said where! But yes this is the place
        **[Hows working here?]
            ~HappyResponse()
            Its great honestly would say it suits me perfectly! Get to talk to people serve drinks have a couple of laughs and party! What more can a man really ask for? Haha
                ***[Sounds like you found something that really suits you]
                    ~ContentResponse()
                    Yes! Spot on observation i would say, if i didnt make it so obvious ofcourse haha
                        ****[Obvious is an understatment]
                            ~SmileResponse()
                            heh.
                            *****[So about that drink]
                                -> PickingDrink()
                        ****[So about that drink you promised me]
                            ->PickingDrink()
                ***[You sure seem excited]
                    What can i say i like my job, lots of people i meet while working dont have that luxury.
                    ->JobTalk()
        **[Seems like a stressful job]
            Not at all! Never been as relaxed as when i am on the job talking to customers serving cold drinks, i mean sure people arent always behaving the best but its overhaul great!
                ***[Its not for me]
                    ~ConfusedResponse()
                    Well, not for everybody i suppose... not sure i get why one would not like it but whatever...
                        ->PickingDrink()
                ***[It seems to suit you quite well]
                    definetly
                    ->PickingDrink()
    *[You work here?]
        Sure do! Quite cozy dont you think?
        **[Sure is!]
            Glad you agree! Never am as relaxed as when i am behind the bar serving drinks and chatting up costumers! Suits me perfectly i would say
            ***[Ill drink to that!]
                ~ContentResponse()
                Thats the spirit! haha
                ->PickingDrink()
        **[Bit too noise for me]
            ~NeutralResponse()
            It all just blends into the surroundings for me, kinda relaxing honestly not like a metal concert or anything thats fucking loud if anything.
            ***[Got something against metal?]
                Meh, just not my thing really. Prefer other types of music but i dont have any grudge against it or anything, plenty of good bars out there playing metal on repeat if youre interested.
                ->MusicDiscourse()
            ***[I mean sure]
                ->PickingDrink()

== PickingDrink ==
*[So about that drink?]
    ~SmileResponse()
    Ofcourse! Whats your poison?
    **[Something non-alcholic]
        ~ContentResponse()
        What like apple juice or milk? Come on you could get something better!
        ***[I don't drink alcohol]
            ~SmileResponse()
            Oh right, sorry... i get it, you will get something nice i promise! Not everything behind that counter is alcohol Ofcourse! Be right back!
                    ->NoahGetsDrink()
        ***[Rather not start with alcohol just yet]
            ~SmileResponse()
            Fair, but a little boring ill get you something good still! Not everything behind that counter is alcohol Ofcourse. Be right back!
                ->NoahGetsDrink()
    **[Something strong]
        ~HappyResponse()
        NOW WE ARE TALKING! This is how you start a night out! Will be right back!
        ->NoahGetsDrink()
    **[Something mild]
        ~SmileResponse()
        Alright Starting off light thats respectable, ill be right back!
        ->NoahGetsDrink()
    **[chefs choice!]
        Bold haha, you wont regret it tho promise! Ill be right back!
        ->NoahGetsDrink()

==NoahGetsDrink==
*[*Wait for Noah*]
    ~NoNoah()
    ...*He marches over to the bar in a brisk pace... He starts talking to the bartender and hangs back on the counter. He smiles at you*
    **[*Smile back*]
        ...*He looks happy... The drinks seems to be done now... He walks back to the table*
            ***[*Wait for him*]
                ->DrinkAtTable1()
    **[*Make a silly face*]
        ...*He makes a face back and looks amused... The drinks seems to be done now... He walks back to the table*
            ***[*Wait for him*]
                ->DrinkAtTable1()
    **[*Make a neutral face*]
        ...*He leans back against the counter... The drinks seem to be done now... He walks back to the table
            ***[*Wait for him*]
                ->DrinkAtTable1()

==DrinkAtTable1==
*[Greet him!]
    ~HappyResponse()
    Alright here you go, enjoy! Its been picked with special care by yours truly!
    **[*Take a sip*]
        .*Noah seems to have gotten a large pint of beer, and is chugging it down quite rapidly*...So hows your drink?
        ***[Its great the flavours really come together]
            ~ContentResponse()
            Thats great to hear! I always prefer a nice flavorful one if am just getting a one or a few. Taking it slow and steady really getting to know all the flavours! 
                ->DrinkAtTable2
        ***[Its alright]
            ~HappyResponse()
            Thats good to hear. Old reliable is a great start as always and a common one at that gets people to come back to the bar, heh cant say we arent encouraged to get that effect going!
                ->DrinkAtTable2
        ***[Could have been better]
            Ah thats a shame, getting a mediocre drink first is a bummer but always easy to fix on the second try! Experimenting with new drinks is a great way to find new favourites as well!
                ->DrinkAtTable2

==DrinkAtTable2==
~SmileResponse()
*[You sure have alot to say about drinks]
    There is a reason i work here right? Its a bit of a passion of mine you could say, people that dont have a love for drinks dont do as well in my opinion.
        **[You would think that]
            Yeah, without that passion you will only get so far, true for any profession id say!
                ***[...]
                    ->MinigamePrelude()
        **[Idk people can be good bartenders still]
            Oh sure but the best in the business always got that passion, just working will only get you so far!
                ***[...]
                    ->MinigamePrelude()
            ->END

==MinigamePrelude==
Say i got something special planned for tonight, privilege of having a chill boss you could say...
    *[And what is that?]
        ~HappyResponse()
        You'll get to make your very own drink! Using some of the special stuff we got behind the counter! Hows that for a first date activity! Haha 
            **[Fuck Yeah!]
                ~BlushResponse()
                Thats the spirit! I get the things ready right way! Just come behind the bar when youre all done with your drink
                    -> END
            **[Idk am not that good...]
                ~HappyResponse()
                Ah come on! It doesnt have to be amazing the first time! Just try and not kill me haha! Come behind the counter when youre all done!
                    -> END
            **[I'll give it a try!]
                ~HappyResponse()
                Just give it your all and it will go well trust me! Come behind the counter when youre all done!
                    -> END
                

== MusicDiscourse ==
->PickingDrink()

== BAD_DATE_END ==
*[I dont think this is gonna work out...]
    yeah... i had a feeling... we should probably just call it right here save both of us some time, have a great evening...
        **[*Leave the bar*]
            -> END
*[*say nothing*]
-> END


=== function HappyResponse ===
        ~ charEmotion = "Happy"
        ~ charSound=""
        ~ loveAmount++
        
=== function SadResponse ===
        ~ charEmotion = "Sad"
        ~ charSound=""
        ~ loveAmount--
        
=== function NeutralResponse===
        ~ charEmotion="Neutral"
        ~ charSound=""
        
=== function MadResponse ====
        ~charEmotion="Mad"
        ~charSound=""
        ~ loveAmount--
        
=== function AnnoyedResponse ====
        ~charEmotion="Annoyed"
        ~charSound=""
        ~ loveAmount--
        
=== function ContentResponse ====
        ~charEmotion="Content"
        ~charSound=""
        ~ loveAmount++
        
=== function SmileResponse ====
        ~charEmotion="Smile"
        ~charSound=""
        ~ loveAmount++
        
=== function ConfusedResponse ====
        ~charEmotion="Confused"
        ~charSound=""
        
=== function BlushResponse ====
        ~charEmotion="Blush"
        ~charSound=""
        ~ loveAmount++
        
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
    
==JobTalk==
~SmileResponse()
*[I can relate to that]
    Jobs not to good aye? 
    **[Just not happy with it]
        A common sentiment, usually they are right but they just dont have luck,money or skill to get there. I am sure you will get something you like doing eventually if you work hard enough for it!
            ***[Thanks!]
                ~HappyResponse()
                No problem!
                ->PickingDrink()
            ***[So about that drink you promised?]
                ->PickingDrink()
*[Guess i am lucky as well i enjoy my job]
    Thats great! glad to hear it honestly! Wish more people had it that way. But enough about that how about i get you a drink?
        ->PickingDrink()
*[Not employed currently myself]
    Feeling good about that?
        **[I am actually studying]
            ~HappyResponse()
            I see, not sure that counts as proper unemployment tho Haha
            ->PickingDrink()
        **[Yeah works for the time being]
            Thats nice! 
            ->PickingDrink()
        **[Not found a job yet so could be better]
            You will get there i belive in you!
            ->PickingDrink()
            



