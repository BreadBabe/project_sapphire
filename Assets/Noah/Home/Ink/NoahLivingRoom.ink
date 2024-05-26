VAR charName = "Noah"
VAR charEmotion = "Empty"
VAR loveAmount = 0
VAR charSound = ""

.*As you're looking though the box you hear Noah steps get closer and closer*
*[Keep looking in the box]
	~ConfusedResponse()
	->NoahCatchesYou()
*[Quickly put everything back]
	~SmileResponse()
		->NoahSeesNothing()



== NoahSeesNothing ==
Hi, I'm back! *Puts drink on table*... What do you think about the place?
	*[I really like your pet duck Gilbert..]
	  ~ConfusedResponse()
		…
		**[...]
	 ->NoahCatchesYou()

*[It’s comfy i like it]
	Couldn't agree more, really happy with the view and proximity to work, a wonder i managed to get my hands on a place like this really.
	**[Definitely lucky or is there something more to it?]
		~HappyResponse()
		Well alright might have had some connections to get this but that's what you got to do in today's market, I won't get more than a single room otherwise… but it's not like I got it for free or anything and still got to pay rent every month!
		***[Hey not judging, glad you got something nice]
			~NeutralResponse()
			Oh sorry if that sounded a bit defensive, had people been annoying about it before, like yes i get it not everyone got it great but you don't have to ruin the mood… Anyhow glad you’re not like that!
			****[...]
				->NoahRant()
		***[just how it all works really, said it yourself]
			~NeutralResponse()
			Yes! People don't seem to like it when someone else gets lucky but, yeah it usually stems from people not having it as good, often not their fault ultimately but they don't have to be so stuck up about it.
****[...]
->NoahRant()
		***[Skipped the line just cause you knew someone?]
			~MadResponse()
			Well it wasn't the simple! God you people never understand I still had to work really hard for this!
			****[Still had an advantage that others lack]
				->Hell
			****[Didn't mean to undermine your accomplishments!]
				~ConfusedResponse()
				No am sorry that was an irrational response i shouldn't have lashed out like that… sorry
				*****[It’s okay]
					SadResponse()
					->NoahStopsCaring
				*****[Can't handle the truth that's all]
					->Hell
	**[Really liked the interior actually]
~HappyResponse()
Oh? Just the layout or what I have done to the place? 
	***[The layout…]
		~NeutralResponse()
		It's pretty good yeah lots of room to put all my stuff and personal projects heh.
		****[Personal projects?]
			Heh what can i say i like making the place a little personal you might get to see some you might not, we will see. Anyhow i got something to show you
			*****[mhm?]
				->NoahStopsCaring()
			*****[What's that?]
				->NoahStopsCaring()
	***[What you have “done” to it i suppose haha]
		~BlushResponse()
		Oh really? Well i am glad you like it spent lots of time moving things up here most of it without anyone's help! not exactly an interior designer but I have tried my best. Thank you!
		****[I like it when people personalize their space]
			Hmm… you know what i have something to show you, promise you will find it interesting!
			*****[mhm?]
				->NoahStopsCaring()
			*****[What's that?]
				->NoahStopsCaring()
		 ****[You can clearly tell its you living here]
			~ContentResponse()
			Well what a coincidence! I actually happen to do that! You know what I got something to show you, it will be great!
			*****[mhm?]
				->NoahStopsCaring()
			*****[What's that?]
				->NoahStopsCaring()

*[Bit of a mancave]
Oh come on not that much, you haven't even gotten THE room yet! haha
**[Nothing wrong with a mancave Noah]
    ~ContentResponse()
        It's not a mancave! but fine haha. Got something to show you btw!
        ***[Oh?]
            ->NoahStopsCaring()
    
**[“The Room”?]
	~ContentResponse()
	Sorry personal stuff you might get to see it one day tho! haha
	***[Oh come on!]
		~SmileResponse()
		Nope not yet at least final answer
		****[Aright]
			~HappyResponse()
		Glad that you understand. Should we move onto some more fun activities don't you say?
		->NoahStopsCaring
		****[Come on Noah!]
		      	~ConfusedResponse()
			    Lets move on to someother subject you might find interesting since you happen to be so curious
			     *****[Alright]
			             ~SmileResponse()
			            ->NoahStopsCaring()
	***[Alright if that's how you want it haha]
		~HappyResponse()
		Glad that you understand. Should we move onto some other activities dont you think?
****[And what would that be?]
	~SmileResponse()
	.*Noah eyes the box you went though earlier*... See that box, got some things i wanna show you
	*****[...]
		->NoahStopsCaring()
****[Sure!]
	Good spirit as always! *Noah starts walking towards the sofa*
	*****[...]
		->NoahStopsCaring()
==NoahRant==
Ugh… sorry about the rant just brought up some old stuff...
*[It's okay]
	~NeutralResponse()
	Got some things to show you, bottles of special interest to this conversation you could say...
	->NoahStopsCaring()
	
*[And what would that be?]
	~SadResponse()
	stuff with… well an ex you could say… didn’t go down too well
	**[Something hurtful?]
		~NeutralResponse()
		you could say that, probably best to not talk about it like this… i have a better idea
		***[Oh?]
			->NoahStopsCaring()
		***[And what is that?]
			->NoahStopsCaring()
		

==Hell==
~MadResponse()
~loveAmount = -1000
Idk what your problem is but you gotta cut it out, i invite you here to have a nice time and you just go around acting like this! Get yourself together for god's sake!
*[You’re really annoying you know that?]
	The door is right there! get out!
	**[*Open door*]
    	You open the door but something is not right... You actually opened the door to the room instead. You try to close the door but it is too late, the things u witnessed... Before you can turn around you feel a big thud on your head and your vision fades out...
    	    -> END
*[*say nothing*]
	we should probably call it right here…
	->END
	
== NoahCatchesYou ==
Wait… Were you rummaging through my stuff?!
	*[Sorry.. Couldn’t help myself!..]
		~ConfusedResponse()
		What… Did you see all my stuff? I put all my embarrassing things in that box to try and hide it…
			**[I saw what's in your box Noah.…]
				~BlushResponse()
				.*Noah is visibly shook*
					***[...]
						-> NoahCatchesYou2()
			**[Not much honestly…]
			    Well what exactly did you see?
					***[A pet duck named Gilbert, very handsome]
						So you did see all my stuff…
							****[....]
								-> NoahCatchesYou2()
					***[A golden dinosaur, looked heavy..]
						Really? You actually didn’t get a very good look then..										
						        ****[I told you!]
								-> NoahStopsCaring()
					***[A knitted scarf, maybe knitted by his grandma]
						So you did see all my stuff…
							****[....]
                            -> NoahCatchesYou2()
					***[A romantic bottle,  unopened]
						So you did see all my stuff…
							****[....]
								-> NoahCatchesYou2()
					***[A straw hat, worn down through use..]
						Really? You must’ve not got a very good look at the stuff then…
							****[See! I wasn’t lying..]
								-> NoahStopsCaring()				
	*[Yes.. I got a little bored.]
		~MadResponse()
		You got a little bored?.... Well… You could've asked to see it if you really wanted to… I was just in the kitchen for a brief moment getting a drink!			
**[Okay.. I admit I got a little hasty.]
				-> NoahCatchesYou2()
			**[My attention span ran out!!]
				~ConfusedResponse()
				That doesn’t make it excusable to look through anyone's stuff like that! You’re playing with fire… What if it was a box of snakes and u get bit! Owwie…
					***[I’ll be more careful in the future…]
						-> NoahCatchesYou2()
					***[Would’ve been cooler than all that lame stuff..]
						Hey! Those things are very valuable to me…
							****[I’m sorry.. I don’t know what got into me…]
								~SadResponse()
								-> NoahCatchesYou2()
							***[Doesn’t make them any less boring….]
								-> Hell()
	*[Sorry! I just poked my head in that box for a second..]
		Hmmm… Okay.  Maybe I should’ve hid it a bit better haha.
			**[...]
				-> NoahCatchesYou2()
						
== NoahCatchesYou2 ==
Now you have already seen everything… There's no point trying to hide it now. What did you think about my pet duck…?
	*[It’s just a picture..]
		~SadResponse()
		It’s so not just a picture!! He was the bestest duckling, I called him Gilbert. Then he grew into that mighty duck you saw earlier….
**[Didn't mean to be rude..]
	…
	-> NoahCatchesYou3()
**[Whatever you say Noah…]
	~MadResponse()
	Ugh… Anyways.
		***[......]
			-> NoahStopsCaring()
**[Mighty? Looked a bit ugly to me..]
	~SadResponse()
	If by ugly you mean beautiful then sure…
		***[Oh yeah, I meant beautiful! Misspoke..]
			Alright…let's move on.
				****[....]
					-> NoahStopsCaring()
		***[I meant every word I said!]
			-> Hell()
	*[Oh that's what that thing was?]
		~MadResponse()
		That thing! Was my pet duck Gilbert and he was the sweetest and most handsomest duck ever… You would maybe know that if you cared…
			**[Sorry I didn’t mean to be rude, I’m just not a big duck enjoyer.]
				Ughh, whatever I  get it. Anyways…
					-> NoahStopsCaring() // he is a broken man
			**[Oh I’m so sorry, I didn’t think of that..]
				~ConfusedResponse()
				…
					***[I thought it was for decoration…]
						Oh…. well know you know….
							-> NoahCatchesYou3()
			**[So we’re naming them now?..]
				-> Hell()
== NoahCatchesYou3 ==
*[He looks very handsome!]
~SmileResponse()
Oh okay… Thanks! I still miss him to this day…
-> NoahStopsCaring()
*[I’m sure he was the greatest ducky ever!]
	~ContentResponse()
	Oh he really was! Such a good ducky..  I still miss him to this day…
		-> NoahStopsCaring()


== NoahStopsCaring ==
*[....]
    ~NeutralResponse()
    \*You sit down on the couch with Noah*
    	**[*brief silence*]
    		.*Noah grabs the box of memorobilia and takes out all the things one by one*
    			-> MemorobiliaAsk()

== MemorobiliaAsk ==
~NeutralResponse()
* { not (MemorobiliaDuck or NoahCatchesYou2) }  [Ask about the duck..] 
-> MemorobiliaDuck()
* { not MemorobiliaScarf } [Ask about the scarf..] 
-> MemorobiliaScarf()
* { not MemorobiliaBottle } [Ask about the  bottle..] 
-> MemorobiliaBottle()
* [Don’t ask anything more] 
-> NoahEnd()




== MemorobiliaDuck ==
*[...]
    Oh…. my duck? He was a fierce duckling, a little warrior. I named him Gilbert. Gilbert grew up to be the bestest, most handsomest duck of all time! He was truly great… I still miss him to this day…
    **[You should display the picture of Gilbert!]
    	Yeah maybe you’re right… I just thought it was a little embarrassing to keep it for our date… Maybe I will hang it back up later tonight…. Thank you.
    		-> MemorobiliaAsk()
    **[Don’t say anything]
    	-> MemorobiliaAsk()

== MemorobiliaScarf ==
*[...]
~SmileResponse()
\*Noah holds the red scarf in his hands stroking his fingertips over it* This might be one of the oldest articles of clothing i own, was gifted to me by my grandma when i was idk 5 maybe? Was too big at inception. She wanted me to be able to keep it when I was an adult.
    **[And how is your grandma doing?]
    	~SadResponse()
    	Not too well… I am sorry to say she died when I was 7. I didn't really get that much time to talk to her. Suppose there is a mercy in that since you don’t get enough time to get attached to them. Would hurt a lot more if she had died sometime close to now.
    	***[Yeah that would suck…]
    		~NeutralResponse()
    		yeah…
    		****[My grandma is actually in that situation]
    			~SadResponse()
    			Noooo I am sorry that sounds horrible. I should have inquired before I said anything. Didn't know sorry…
    			*****[It's okay…]
    				Just tell me if you need anything, okay?
    				->MemorobiliaAsk()
    		****[Say nothing]
    			-> MemorobiliaAsk()
    		
    	***[You don't say…]
    		NeutralResponse()
    		Oh? What do you mean?
            ****[My grandma is actually in that situation]
            			~SadResponse()
            			Noooo I am sorry that sounds horrible. I should have inquired before I said anything. Didn't know sorry…
            			*****[It's okay…]
            				Just tell me if you need anything, okay?
            				->MemorobiliaAsk()
    		****[Its nothing…]
        			Okay, just tell me if you wanna talk about it
        			-> MemorobiliaAsk()
    
    **[Don’t say anything]
    	-> MemorobiliaAsk()



== MemorobiliaBottle ==
*[...]
\*Noah grabs the bottle reads the text on the label* This got to be one of the worst purchases ever, it was so damn expensive and I never got to use it! Was supposed to be for my ex but that didn't work out so well so never got to give it to anyone…
	**[What were they like?]
		They were a party animal and drank LOTS… very fun to be around a lot of the time but just couldn't stop blaming everyone else for problems they caused. They would go on rants about everyone else being so fortunate and them being so unlucky and victimized… Got too much eventually, hope they’re doing well but It’s not my responsibility now…
		***[It’s good you got out of that!]
			Been better since yes but still got some stuff left from it
			****[...]
			->MemorobiliaAsk()
		***[Don’t say anything]
			->MemorobiliaAsk()
	**[Don’t say anything]
		-> MemorobiliaAsk()




== NoahEnd ==
*[It was nice getting to know you more!]
	…
	**[And those items have some interesting backstories worthy of attention!]
		~BlushResponse()
		Oh… Thank you, I’m glad I decided to not hide them super well in a corner somewhere then! And I also agree that it was an enjoyable time together!
			***[It’s getting late. I really should be heading home now…]
				~NeutralResponse()
				Oh okay yeah. I agree, it’s getting dark out already! Don’t let me delay you…
				****[Please keep in touch.. bye!]
					-> END
				****[Bye bye!]
					-> END
			***[It's gonna be dark soon, I should start heading home..]
				Yeah of course! No worries, don’t let me delay you! And please get home safe..				
                    ****[Thank you!]
						Bye bye!!
						 ->END
					****[Is that a threat?]
						~ConfusedResponse()
						Nooo… It’s not!
							*****[I’m just kidding haha don't worry!]
								~NeutralResponse()
								Oh… you really scared me for a second!! Okay go home now.. go on… byeeeee. *Noah closes the door slowly while u both chuckle*
									-> END
							*****[Can never be too sure nowadays…]
								~MadResponse()
								….. *awkward silence* …..
									******[Just kidding haha!!!! Got you good!]
									        ~NeutralResponse()
									        Alright then ill see you next time!
									        ->END
									******[See! You totally give the wrong vibe.. eww...]
										-> Hell()			
*[I think I’m going home now..]
	Oh? Already?
		**[I promised my dog I would be home within 30 minutes...]
			Well in that case, don’t let your dog down.. It’s getting late anyways.
				***[Yeah it is! Okay I’m heading out..]
					Byeee!
						****[Bye….]
							-> END
		**[Yea just feel like I’ve been here long enough now.. But it was nice!]
			Oh alright, yeah. That's understandable. It has been a bit. Don’t forget your stuff!
				***[Thanks, I think I’ve got everything now. I’m leaving byee…]
					Bye….
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
        ~ charEmotion="Mad"
        ~ charSound=""
        ~ loveAmount--
        
=== function AnnoyedResponse ====
        ~ charEmotion="Annoyed"
        ~ charSound=""
        ~ loveAmount--
        
=== function ContentResponse ====
        ~ charEmotion="Content"
        ~ charSound=""
        ~ loveAmount++
        
=== function SmileResponse ====
        ~ charEmotion="Smile"
        ~ charSound=""
        
=== function ConfusedResponse ====
        ~ charEmotion="Confused"
        ~ charSound=""
        ~ loveAmount--
        
=== function BlushResponse ====
        ~ charEmotion="Blush"
        ~ charSound=""
        ~ loveAmount++
        
=== function NoNoah ====
        ~charEmotion="Empty"
        ~charSound=""