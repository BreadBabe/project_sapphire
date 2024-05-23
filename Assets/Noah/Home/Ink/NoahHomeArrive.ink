VAR charName = "Noah"
VAR charEmotion = "Smile"
VAR loveAmount = 0
VAR charSound = ""


Heya!... You actually came, that's great to see!
*[Hello Noah..]
    ->InHall
*[Hey!]
    ->InHall
*[Afraid I wouldn't show up?]
    ~HappyResponse()
    There is always the possibility, we have only been on one date so far but am glad you showed and i didnt get ghosted!
        **[Me ghosting people? Wouldn’t dream of it]
	        ~SmileResponse()
	        Good to hear! If some doesn’t wanna meet up it’s always better to just say so! No need to leave the other person waiting and wasting time.
	        -> InHall
        **[Boo!!]
            ~ContentResponse()
	        Haha new meaning to the term ghosting i see.
            -> InHall

== InHall ==
Anyhow welcome to my home you can put your things over here
*[Can I put my shoes here?..]
    ~SmileResponse()
	Yeah sure! Right there is fine and you can put your jacket over here. Just excuse the mess. I have a system I promise!
	**[*Take your shoes off and hang up your jacket*]
		Alright get yourself comfortable and I'll show you around the place! Sofa is one of my favorites, very comfortable 
		***[Sorry already put dibs on it]
			~HappyResponse()
			What?! No you can't do this to me there is plenty of room!
			****[Sorry it’s all mine now]
				~SmileResponse()
				Really need to learn to share you know haha
                ->LivingRoom
			****[Could probably share…]
				~BlushResponse()
				There we go, that sounds much better, no need to hog the entire sofa with plenty of space!
				->LivingRoom
		***[That sounds great]
			~SmileResponse()
			Good! You want something to drink?
			****[Sure i could go for something!]
				->LivingRoom

*[*Put shoes in awkward place*]
	~ConfusedResponse()
	Oh.. The shoes usually go here haha, and you can hang your jacket on that thing!
		**[Sorry! I’m not very organized ugh..]
			~SmileResponse()
			No worries! It’s not too important, my place is a bit messy right now, don’t mind that.
			***[no worry]
				~HappyResponse()
				I promise the kitchen looks much better! You wont catch me not cleaning glasses or counters and that you can count on! *Noah start walking toward the kitchen*
	        ->LivingRoom
			***[mine looks just the same]
				~HappyResponse()
				Ha! i knew it! Am just so terrible at cleaning everything except the kitchen, cause that i cant be caught not cleaning at work noone wants to buy a drink at a dirty establishment and i would never serve a drink in a dirty glass! *Noah starts walking towards the kitchen*
				    ->LivingRoom
			***[could have cleaned…]
				~ConfusedResponse()
				Well I didn't… it’s just here, the kitchen is much nicer you wont be drinking out of a dirty glass i assure you… *Noah leaves and starts walking towards the kitchen*
				->LivingRoom
		**[Oh.. That makes more sense!]
			Yeah!
			***[....]
				~ConfusedResponse()
				Soooo…. You want something to drink maybe?..
				****[Uhm… No.]
					~MadResponse()
					Oh okay.. I’m gonna get something for myself still….
					-> LivingRoom()
				****[Yes…]
					~SmileResponse()
					Alright! Give me a second.. *Noah goes to the kitchen to get a drink…*
					-> LivingRoom()

*[*Put your stuff next to Noahs*]
	You found some space for your stuff! Want to see around the place?
		~HappyResponse()
		**[No, I came here to steal your stuff!]
			~MadResponse()
			Noo! In that case I’m kicking you out!
				***[Fine… I’d like to see around now.]
					~SmileResponse()
					Okay! Would you like something to drink?
						****[Sure!]
						    \*Noah goes to the kitchen to get a drink…*
						    -> LivingRoom
						****[I am good thanks.]
						    ~ConfusedResponse()
					        \*Noah goes to the kitchen to get a drink for himself*
                            -> LivingRoom()
		**[Yes! That sounds great.]
			Would you like something to drink first?
				***[Sure! I forgot to drink earlier..]
				    \*Noah goes to the kitchen to get a drink…*
					-> LivingRoom()


==LivingRoom==
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