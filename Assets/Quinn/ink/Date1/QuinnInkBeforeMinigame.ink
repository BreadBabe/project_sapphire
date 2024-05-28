VAR charName = "Quinn"
VAR charEmotion = "Neutral"
VAR loveAmount = 0
VAR charSound = ""

Hey, I'm Quinn. I suppose you're my date?
    -> INTRODUCTION

== INTRODUCTION ==
*[What would make you think that?]
    ~HappyResponse()
    Well, if you take a look around, there's only two people here... And it's us. Statistically, you most likely are.
      **[Shoot, you got me.]
      ~SmileResponse()
      That's what I thought! Math never lies. It's nice to meet you! By the way, have you ever been to this bookstore before? It's one of my favorite places.
      ->BEENBEFORE()
      **[Well, technically I could still be someone else.]
      ~AnnoyedResponse()
      True, peaking on your phone where you have our messages open kind of gives it away, sorry.. Anyway, it's nice to meet you in person! Have you ever visited this bookstore before?
    ->BEENBEFORE()
*[I suppose I am?]
    ~AnnoyedResponse()
    You don't even know who you are? Well, that's a bit disappointing.
    **[Well, I guess I am then!]
        ~HappyResponse()
        Alright, if you say so... Have you been to this bookstore before, or is this your first time? 
        ->BEENBEFORE()
    **[Does anybody really know who they are?]
        ~BlushResponse()
        I guess you have a point! But at your age, I kind if think you should have at least some stuff figured out... Anyway, have you ever been here before?
        ->BEENBEFORE()
*[Um... Sure.]
    ~ConfusedResponse()
    What do you even mean by that? That was a simple yes or no question. Are you always this ambiguous?
    **[Sorry, I didn't mean it like that, nice to meet you.]
        ~NeutralResponse()
         Well then, thanks for meeting me here! I spend more time here than I'd like to admit. But now I somehow did...
        ***[I'm actually not that into books..]
            ~AnnoyedResponse()
            Well, I guess everyone can't be a bookworm.. So I guess you haven't been here before?
            ->BEENBEFORE()
        ***[I read as much as possible when I have time!]
            ~HappyResponse()
            There's something magical about getting lost in a good book. Have you been here before? It's my favorite spot in town. The smell of books, the quiet corners... It's like a little sanctuary.
            ->BEENBEFORE()
    **[Nothing, nice to meet you]
        ~NeutralResponse()
        Nice to meet you too! This is my little sanctuary. I can spend hours browsing through the shelves.
        ***[That sounds really calming.]
         ~HappyResponse()
          It is! There's something magical about getting lost in a good book. Have you been here before? It's my favorite spot in town. The smell of books, the quiet corners... It's like a little sanctuary.
            -> BEENBEFORE()
        ***[Is this really your favorite place?]
         ~NeutralResponse()
            It is. The smell of books, the quiet corners... It's like a little sanctuary. Have you ever been here before?
            -> BEENBEFORE()

== BEENBEFORE ==
*[Of course I have!]
~NeutralResponse()
 Why do I get the feeling that you're lying..?
    **[I'm not!]
        ~SmileResponse()  
        Really? That’s great then! I must’ve missed you. Do you have a favorite section or genre in books?
        ***[Fantasy, of course!]
        ~HappyResponse()
        Fantasy is amazing! The worlds, the characters, the endless possibilities… It’s like living multiple lives. I could talk about that for hours, but I actually invited you here to ask you if you could help me look for a specific book..
             ****[So that's the reason we're here?]
             ->REASON()
             ****[As long as it's not about murderers...]
             ->REASON()
        ***[Educational books!]
        ~BlushResponse()
        Really? You don't strike me as the type, but I guess the world is full of surprises!
             ****[That's rude!]
             ~AnnoyedResponse()
             I'm sorry, I'm better with plants than people.. Anyway, I kind of invited you here to ask if you could help me look for a specific book!
                  *****[So that's the reason we're here?]
                  ->REASON()
                  *****[As long as it's not about murderers...]
                   ->REASON()
             ****[So, why did you invite me here?]
             ~SmileResponse()
             To show you my favourite place, of course?... Well, I'm lying. I actually need help finding a specific book, and I thought it might be a cute first-date activity?
                 *****[So that's the reason we're here?]
                 ->REASON()
                 *****[As long as it's not about murderers...]
                 ->REASON()
        ***[I don't really have a favorite.]
        ~AnnoyedResponse()
        That's fine, I guess. But also kind of boring.
             ****[That's rude!]
             ~NeutralResponse()
             I'm sorry, I'm better with plants than people.. Anyway, I kind of invited you here to ask if you could help me look for a specific book!
                 *****[So that's the reason we're here?]
                  ->REASON()
                 *****[As long as it's not about murderers...]
                   ->REASON()
             ****[So, why did you invite me here?]
             ~SmileResponse()
              To show you my favourite place, of course?... Well, I'm lying. I actually need help finding a specific book, and I thought it might be a cute first-date activity?
                  *****[So that's the reason we're here?]
                      ->REASON()
                  *****[As long as it's not about murderers...]
                      ->REASON()
        
    **[Maybe..]
    ~HappyResponse()
    You're funny... I like that. But seriously, spill the beans, have you actually been here before, or are you just messing with me?
        ***[Nope, never stepped foot in here.]
        ~NeutralResponse()
           Ah, a newcomer! Welcome to our little sanctuary of literature and knowledge. I actually need help finding a specific book, and I thought it might be a cute first-date activity?
              ****[So that's the reason we're here?]
              ->REASON()
              *****[As long as it's not about murderers...]
              ->REASON()
        ***[Yeah, I've been here a few times!]
           ~HappyResponse()
           Oh, a seasoned visitor, I see! Well, welcome back. I actually need help finding a specific book, and I thought it might be a cute first-date activity?
             ****[So that's the reason we're here?]
               ->REASON()
             *****[As long as it's not about murderers...]
               ->REASON()
               
        ***[Maybe once, but it was ages ago.]
         ~NeutralResponse()
          Ah, a fuzzy memory kind of person, I can relate to that. No worries, we'll make some new memories today. I actually need help finding a specific book, and I thought it might be a cute first-date activity?
             ****[So that's the reason we're here?]
               ->REASON()
             *****[As long as it's not about murderers...]
               ->REASON()
               
    **[Sorry, I totally am.]
    ~NeutralResponse()
      No need to apologize! Honestly, I find it kind of charming. So, spill the beans, have you actually been here before, or are you just pulling my leg?
        ***[Nope, never stepped foot in here.]
        ~NeutralResponse()
           Ah, a newcomer! Welcome to our little sanctuary of literature and knowledge. I actually need help finding a specific book, and I thought it might be a cute first-date activity?
              ****[So that's the reason we're here?]
              ->REASON()
              *****[As long as it's not about murderers...]
              ->REASON()
        ***[Yeah, I've been here a few times!]
           ~HappyResponse()
           Oh, a seasoned visitor, I see! Well, welcome back. I actually need help finding a specific book, and I thought it might be a cute first-date activity?
             ****[So that's the reason we're here?]
               ->REASON()
             *****[As long as it's not about murderers...]
               ->REASON()
                                    
        ***[Maybe once, but it was ages ago.]
            ~HappyResponse()
          Ah, a fuzzy memory kind of person, I can relate to that. No worries, we'll make some new memories today. I actually need help finding a specific book, and I thought it might be a cute first-date activity?
             ****[So that's the reason we're here?]
               ->REASON()
             *****[As long as it's not about murderers...]
               ->REASON()

*[No, I haven't.]
~NeutralResponse()
You haven't? Well, in that case, welcome to our little corner of bookish paradise! If that's something you're into.. So, do you have any favourite genre of books?
      **[Fantasy, of course!]
      ~HappyResponse()
      Fantasy is amazing! The worlds, the characters, the endless possibilities… It’s like living multiple lives. I could talk about that for hours, but I actually invited you here to ask you if you could help me look for a specific book..
         ***[So that's the reason we're here?]
          ->REASON()
         ***[As long as it's not about murderers...]
         ->REASON()
     **[Educational books!]
     ~BlushResponse()
     Really? You don't strike me as the type, but I guess the world is full of surprises!
         ***[That's rude!]
         ~NeutralResponse()
         I'm sorry, I'm better with plants than people.. Anyway, I kind of invited you here to ask if you could help me look for a specific book!
             ****[So that's the reason we're here?]
             ->REASON()
             ****[As long as it's not about murderers...]
             ->REASON()
         ***[So, why did you invite me here?]
         ~SmileResponse()
         To show you my favourite place, of course?... Well, I'm lying. I actually need help finding a specific book, and I thought it might be a cute first-date activity?
             ****[So that's the reason we're here?]
             ->REASON()
             ****[As long as it's not about murderers...]
             ->REASON()
      **[I don't really read that much.]
      ~AnnoyedResponse()
        That's fine, I guess. But also kind of boring.
         ***[That's rude!]
         ~NeutralResponse()
         I'm sorry, I'm better with plants than people.. Anyway, I kind of invited you here to ask if you could help me look for a specific book!
             ****[So that's the reason we're here?]
             ->REASON()
             ****[As long as it's not about murderers...]
             ->REASON()
         ***[So, why did you invite me here?]
         ~HappyResponse()
         To show you my favourite place, of course?... Well, I'm lying. I actually need help finding a specific book, and I thought it might be a cute first-date activity?
             ****[So that's the reason we're here?]
             ->REASON()
             ****[As long as it's not about murderers...]
             ->REASON()
== REASON ==
Maybe... That's probably pretty boring of me. I thought that it would be a fun way to get to know eachother, kind of like an escape room situation, but also not at all.
~SmileResponse()
*[Sounds fun!]
~BlushResponse()
  Right? I mean, who needs cliché dinner dates when you can embark on a botanical adventure? Plus, it's a great icebreaker! Anyway, I'm looking for a book about euphorbias.
    **[Isn't that plant toxic?]
        ~ContentResponse()
     Ah, the million-dollar question! Maybe that's why I'm looking for it...
         ***[Wait, what?]
          ~HappyResponse()
          Euphorbias are only toxic if ingested, so no worries there. It's all about knowing the right facts when you're a plant enthusiast like me.
              ****[Actually, good point.]
              ~SmileResponse()
              I've got a whole bunch of plants at home, and trust me, I've learned my fair share of quirky plant facts!
              -> KNOWTHINGS()
              ****[Still.. kind of concerning.]
               ~MadResponse()
              Concerning? Look, I've got this covered, alright? No need to question my expertise.
              I've got a lot of plants at home, so I have to know these things.
              ->KNOWTHINGS()

         ***[Suspisious..]
           ~MadResponse()
           Suspisious? Look, I've got this covered, alright? No need to question my expertise. I've got a lot of plants at home, so I have to know these things.
                    ->KNOWTHINGS()
     **[Euphorbias?]
       ~ContentResponse()
      Euphorbias are this fascinating group of plants that come in all shapes and sizes. It's like discovering a whole new world within the world of plants. Have you never heard of them before?
            ***[It seems like you know a lot about plants]
              ~HappyResponse()
              I've spent countless hours studying and caring for my plant babies at home. It's amazing what you can learn when you're passionate about something, right?
                        -> KNOWTHINGS()
            ***[Suspisious...]
             ~MadResponse()
              Suspisious? Look, I've got this covered, alright? No need to question my expertise. I've got a lot of plants at home, so I have to know these things.
                    ->KNOWTHINGS()
*[Sounds like a weird date activity to me..]
~AnnoyedResponse()
Weird? Seriously? Look, I thought this would be a fun way to get to know each other. Like, a little adventure, you know? But hey, if you're not into it, you can always bail. Otherwise, I'm looking for a book about euphorbias,
    **[Isn't that plant toxic?]
     ~ContentResponse()
     Ah, the million-dollar question! Maybe that's why I'm looking for it...
         ***[Wait, what?]
          ~HappyResponse()
          Euphorbias are only toxic if ingested, so no worries there. It's all about knowing the right facts when you're a plant enthusiast like me.
              ****[Actually, good point.]
              ~SmileResponse()
              I've got a whole bunch of plants at home, and trust me, I've learned my fair share of quirky plant facts!
              -> KNOWTHINGS()
              ****[Still.. kind of concerning.]
               ~AnnoyedResponse()
              Concerning? Look, I've got this covered, alright? No need to question my expertise.
              I've got a lot of plants at home, so I have to know these things.
              ->KNOWTHINGS()

         ***[Suspisious..]
           ~SmileResponse()
           Suspisious? Look, I've got this covered, alright? No need to question my expertise. I've got a lot of plants at home, so I have to know these things.
           ->KNOWTHINGS()
           
     **[Euphorbias?]
       ~ContentResponse()
      Euphorbias are this fascinating group of plants that come in all shapes and sizes. It's like discovering a whole new world within the world of plants. Have you never heard of them before?
            ***[It seems like you know a lot about plants]
              ~HappyResponse()
              I've spent countless hours studying and caring for my plant babies at home. It's amazing what you can learn when you're passionate about something, right?
                        -> KNOWTHINGS()
            ***[Suspisious...]
             ~MadResponse()
              Suspisious? Look, I've got this covered, alright? No need to question my expertise. I've got a lot of plants at home, so I have to know these things.
                    ->KNOWTHINGS()
== KNOWTHINGS ==
*[How do you know so much about plants?]
~charEmotion="Smile"
I'm studying biology. I know, kind of nerdy. But I've always enjoyed being outside, being alone with plants and animals. Don't you?
     **[I don't know, a little maybe.]
     ~AnnoyedResponse()
     Well, I'll make you love it. I hope. You know, liking animals and plants is a green flag, right? And I do have way too many plants.. Anyway, should we start looking for the book?
         ***[Wait, how many plants do you have?]
         ~BlushResponse()
         A lot. Let's just say, many. But I totally need more, helps me relax, you know?
             ****[Yeah, I get that. Plants are calming.]
              ~SmileResponse()
              Exactly! Finally, someone who gets it. There's just this peaceful vibe they bring to any space. Anyway, should we start looking for the book?
              ->BOOK
              ****[I'd probably kill them all if I tried.]
              Ha, fair enough! But hey, fake plants are a thing too, you know? No shame in that game. Except that plastic is bad for the enviournment.. Anyway, should we start looking for the book?
              ->BOOK
                     
         ***[I suppose so, we'll see.]
         ~AnnoyedResponse()
         Hey, I'll take that as a compliment! Just wait and see, you might find yourself becoming a plant nerd before you know it.
             ****[Maybe, plants are kind of calming.]
              ~SmileResponse()
              Exactly! Finally, someone who gets it. There's just this peaceful vibe they bring to any space. Anyway, should we start looking for the book?
              ->BOOK
             ****[I'd probably kill them all if I tried.]
             ~AnnoyedResponse()
              Ha, fair enough! But hey, fake plants are a thing too, you know? No shame in that game. Except that plastic is bad for the enviournment.. Anyway, should we start looking for the book?
              ->BOOK
     **[Of course I do!]
     ~HappyResponse()
     That's what I'm talking about. It's like a natural remedy for stress. Nothing beats a quiet walk in the woods or a stroll through a garden. Or just showering your plants.
         ***[Wait, how many plants do you have?]
         ~ContentResponse()
         A lot. Let's just say, many. But I totally need more, helps me relax, you know?
             ****[Yeah, I get that. Plants are calming.]
              ~SmileResponse()
              Exactly! Finally, someone who gets it. There's just this peaceful vibe they bring to any space. Anyway, should we start looking for the book?
              ->BOOK
              ****[I'd probably kill them all if I tried.]
              Ha, fair enough! But hey, fake plants are a thing too, you know? No shame in that game. Except that plastic is bad for the enviournment.. Anyway, should we start looking for the book?
              ->BOOK
         ***[Sounds kind of boring to me..]
         ~NeutralResponse()
         You know what, I'll take that as a compliment! Boring is underrated. Just wait and see, you might find yourself becoming a plant nerd before you know it.
             ****[Maybe, plants are kind of calming.]
              ~SmileResponse()
              Exactly! Finally, someone who gets it. There's just this peaceful vibe they bring to any space. Anyway, should we start looking for the book?
              ->BOOK
             ****[I'd probably kill them all if I tried.]
             ~AnnoyedResponse()
              Ha, fair enough! But hey, fake plants are a thing too, you know? No shame in that game. Except that plastic is bad for the enviournment.. Anyway, should we start looking for the book?
              ->BOOK
              
*[Why do you even care that much about plants?]
~charEmotion="Smile"
I'm studying biology. I know, kind of nerdy. But I've always enjoyed being outside, being alone with plants and animals. Don't you?
     **[I don't know, a little maybe.]
     ~AnnoyedResponse()
     Well, I'll make you love it. I hope. You know, liking animals and plants is a green flag, right? And I do have way too many plants.. 
         ***[Wait, how many plants do you have?]
         ~ContentResponse()
         A lot. Let's just say, many. But I totally need more, helps me relax, you know?
             ****[Yeah, I get that. Plants are calming.]
              ~SmileResponse()
              Exactly! Finally, someone who gets it. There's just this peaceful vibe they bring to any space. Anyway, should we start looking for the book?
              ->BOOK
              ****[I'd probably kill them all if I tried.]
              ~MadResponse()
              Ha, fair enough! But hey, fake plants are a thing too, you know? No shame in that game. Except that plastic is bad for the enviournment.. Anyway, should we start looking for the book?
              ->BOOK
                     
         ***[I suppose so, we'll see.]
         ~ContentResponse()
         Hey, I'll take that as a compliment! Just wait and see, you might find yourself becoming a plant nerd before you know it.
             ****[Maybe, plants are kind of calming.]
              ~SmileResponse()
              Exactly! Finally, someone who gets it. There's just this peaceful vibe they bring to any space. Anyway, should we start looking for the book?
              ->BOOK
             ****[I'd probably kill them all if I tried.]
             ~AnnoyedResponse()
              Ha, fair enough! But hey, fake plants are a thing too, you know? No shame in that game. Except that plastic is bad for the enviournment.. Anyway, should we start looking for the book?
              ->BOOK
     **[Of course I do!]
     ~HappyResponse()
     That's what I'm talking about. It's like a natural remedy for stress. Nothing beats a quiet walk in the woods or a stroll through a garden. Or just showering your plants.
         ***[Wait, how many plants do you have?]
         ~BlushResponse()
         A lot. Let's just say, many. But I totally need more, helps me relax, you know?
             ****[Yeah, I get that. Plants are calming.]
              ~SmileResponse()
              Exactly! Finally, someone who gets it. There's just this peaceful vibe they bring to any space. Anyway, should we start looking for the book?
              ->BOOK
              ****[I'd probably kill them all if I tried.]
              ~AnnoyedResponse()
              Ha, fair enough! But hey, fake plants are a thing too, you know? No shame in that game. Except that plastic is bad for the enviournment.. Anyway, should we start looking for the book?
              ->BOOK
         ***[Sounds kind of boring to me..]
         ~NeutralResponse()
         You know what, I'll take that as a compliment! Boring is underrated. Just wait and see, you might find yourself becoming a plant nerd before you know it.
             ****[Maybe, plants are kind of calming.]
              ~SmileResponse()
              Exactly! Finally, someone who gets it. There's just this peaceful vibe they bring to any space. Anyway, should we start looking for the book?
              ->BOOK
             ****[I'd probably kill them all if I tried.]
             ~AnnoyedResponse()
              Ha, fair enough! But hey, fake plants are a thing too, you know? No shame in that game. Except that plastic is bad for the enviournment... Anyway, should we start looking for the book?
              ->BOOK
== BOOK ==
*[...Sure]
~MadResponse()
Well, If you don't like it here then you can leave. You don't have to look for my book if you don't want to. I can look for the book by myself, you know.
    **[I guess I'll help you. Reluctantly.]
    ~ConfusedResponse()
     Great, I guess... So, let's get started. I'll meet you back here if you find it!
     ->END
    **[I'm sorry, let's do this!]
     ~SmileResponse()
     Thank you for helping me! I really appreciate it. And hey, you might even learn something! I'll meet you back here if you find it!
      ->END
*[Let's do it!]
~BlushResponse()
Thank you for helping me! I really appreciate it. And hey, you might even learn something!
    **[Let's do it!]
     I'll meet you back here if you find it!
     ->END
    **[I guess I'll help you. Reluctantly.]
     Great, I guess... So, let's get started. I'll meet you back here if you find it!
     ->END

=== function HappyResponse ===
        ~ charEmotion = "Happy"
        ~ charSound=""
        ~loveAmount++
        
=== function SadResponse ===
        ~ charEmotion = "Sad"
        ~ charSound=""
        ~loveAmount--
        
=== function NeutralResponse===
        ~ charEmotion="Neutral"
        ~ charSound=""
        
=== function MadResponse ====
        ~charEmotion="Mad"
        ~charSound=""
        ~loveAmount--
        
=== function AnnoyedResponse ====
        ~charEmotion="Annoyed"
        ~charSound=""
        ~loveAmount--
        
=== function ContentResponse ====
        ~charEmotion="Content"
        ~charSound=""
        ~loveAmount++
        
=== function SmileResponse ====
        ~charEmotion="Smile"
        ~charSound=""
        ~loveAmount++
        
=== function ConfusedResponse ====
        ~charEmotion="Confused"
        ~charSound=""
        
=== function BlushResponse ====
        ~charEmotion="Blush"
        ~charSound=""
        ~loveAmount++
        


