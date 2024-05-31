VAR charName = "Quinn"
VAR charEmotion = "Neutral"
VAR loveAmount = 0
VAR charSound = ""

Hey there you are! Did you find the book?
*[Yes, here it is] -> INTRODUCTION
 
*[I think so, is this the right one?]
Hmm, let me see. Yes, ->INTRODUCTION



   
==nextDate==
I'm sorry for not finding you a book. I guess we'll have to come back here sometime!
* [Yeah, sound nice!]
~HappyResponse()
Perfect. We could go somewere else to if you want! 
**[Lets decide that later.]
~HappyResponse()
Yeah sounds perfect. I had a great time today! Bye for now. ->END
**[I think I would like that more]
Oh, thats fine. I had a great time but I get that it's not for everyone. I hope to see you around. Bye! ->END
                
*[Maybe not here]
Oh, sure I guess. My bad, I thought it was a nice place for a date.
     **[It was alright]
        Well, we can go somewhere else for the next date!
          ***[Next date?]
             ~BlushResponse()
             Well only if you want.
              ****[Yes]
              ~HappyResponse()
                  Great! Can't wait! ->END
            ****[Let's see how we feel after the date]
                  ~SadResponse()
                 Oh okay, sure. I guess i'll see you around..
                 Bye for now!
                 *****[Bye]
                 ->END
                    
       **[Not really my cup of tea]
         Ah I see. Okay, thats fine. We can go somewhere else for the next date.
           ***[Next date?]
             ~BlushResponse()
            Well only if you want.
                ****[Yes]
              ~HappyResponse()
                  Great! Can't wait! I'm gonna head home now! Bye for now!
                  *****[Bye]
                  ->END
               ****[Let's see how we feel after the date]
                  ~SadResponse()
                 Oh okay, sure. I guess i'll see you around..
                 Bye for now!
                 *****[Bye]
                 ->END
== INTRODUCTION ==
Perfect, thank you! I'll definitely put this book to good use.
*[I hope so! I'm sure a book about a toxic plant is something everyone could use right?]
    ~SmileResponse()
    Yes exactly! I appreciate your sense of humour.
    **[So, why did you need the book?]
        Oh, it's for an experiment that I've been working on. I'm hoping to be able to write a thesis about it if I succed. But enough about that! Look at the book I found!
         ***[You found another book?]
          ~SmileResponse()
          Yes! I've been looking for this book forever! ->RomanEmpire
          
          ***[What did you find???]
            ~NeutralResponse()
          This! I've been looking for this forever! ->RomanEmpire
          
    **[But it's a little strange that you needed a book about a poisonous plant.]
    ~AnnoyedResponse()
    Huh? Well it's for an experiment that I've been working on. 
    ***[Experiment?]
     ~NeutralResponse()
    Yes, It's hard to explain! It's for a project in school. However I did also find  another book! I've been looking for this book for forever! ->RomanEmpire
        ***[Oh, okay]
        ~HappyResponse()
        Yeah but look at the book I found! I've been looking for this book for forever.
    ->RomanEmpire
        
*[Good! It took a lot of effort to find it.]

   ~SmileResponse()
   I'm sorry I should have helped more. I got distracted and forgot what I was looking for. Thank you for helping me! However when you were helping me I did find a couple of other books aswell. I have been looking for this book in particular for ages and then, there it was! Right in front of me!
    **[Wait... You didn't want the book I spent half an hour looking for? ]
        ~AnnoyedResponse()
       What? No of course I did but I've been looking for this book for months! I was just excited about it.
       ***[Well, what is this book about then?]
        ~NeutralResponse()
        ->RomanEmpire
    **[Oh fun! What book did you find?]
        ~HappyResponse()
        ->RomanEmpire

== ANOTHERBOOK ==
I found this other book as well.
* [Oh, is it about the ancient greeks?]
     ~charEmotion="Annoyed"
     No, why would I ever read about that?
    ** [Oh, sorry just thought it fit]
        ~HappyResponse()  
         It doesn't but I guess I can see how you got there. No, this book is for school. It's about microorganisms in alges. It's for a class I have. Did you find something for yourself?
        *** [No, I forgot to look..]
              ->nextDate
         *** [Well, I was busy looking for your book]
             ~BlushResponse()
                Oh right! Sorry. I didn't mean for it to become all about me. I have a tendency to loose myself in books.
                **** [Don't worry about it!]->nextDate
    ** [My bad, What is it about then?]
        ~NeutralResponse() 
        This is a book about microorganisms. They are so fascinating!
        *** [Microorganisms?]
         ~ContentResponse()
            Yeah, I'm studying to be a mircrobiolgist so it's helpful for school.
            ****[Ah okay, sounds interesting]
            Well sometimes. ->nextDate
            ****[Sounds difficult]
            Well it can be, but I really love what I study so.
            ->nextDate
            
        *** [Wow, why?]
                ~NeutralResponse()
                What do you mean why? 
                **** [Why would you get a book about microorganisms?]
                ~SmileResponse()
                 It's for school. Sorry I'm only talking about myself here! Did you atleast find a book you liked?
                   ***** [No, I forgot to look]  ->nextDate
                
                   ***** [Not really, I was busy looking for you book]
                   ~BlushResponse()
                Oh right! Sorry. I didn't mean for it to become all about me. I have a tendency to loose myself in books.
                       ****** [Don't worry about it!]->nextDate
                        ~SmileResponse()
                        

        *** [No I had no idea!]
        ~charEmotion="Happy"
        Well we are studying them in class right now and I needed the book to pass.
             ****[What about the book that I found?]
             ~SmileResponse()
             Yes that one too, but it's for another class. 
             When you were looking did you find any book you liked?
                ***** [No, I forgot to look]  ->nextDate
                 ***** [Well, I was busy looking for you book]
                 ~BlushResponse()
                Oh right! Sorry. I didn't mean for it to become all about me. I have a tendency to lose my self in books.
                       ****** [Don't worry about it!]->nextDate
             ****[Makes sense]
             ~NeutralResponse()
             Yeah. When you were looking did you find any books you liked?
                ***** [No, I forgot to look]  ->nextDate
                 ***** [Well, I was busy looking for you book]
                 ~BlushResponse()
                Oh right! Sorry. I didn't mean for it to become all about me. I have a tendency to loose myself in books.
              ****** [Don't worry about it!]->nextDate

=
==RomanEmpire==
It's about the Roman Empire.
*[I'm sorry what?]
~charEmotion="Happy"
The Roman Empire! You know the most influencial civilication ever! The book I found is one of the biggest deep dives into their law and culture yet! 
    **[Fun...]
       ~SmileResponse()
    Yes so fun! I can't wait to read it. Did you know that the law they created back then has affected our socities laws today! Isn't it incredible that a socity so long ago still has influence over us today?
         ***[ You seem to know alot about this]
         ~charEmotion="Blush"
          Well yes! it's important to look back at what society was like then and see how it effects us today.
             ****[Hmm, And how often do you think about the Roman Empire?]
             ~NeutralResponse()
             What do you mean? Like on a weekly basis? Or in general per day? Because it varies alot! Why? Do you not think about it?
          
               *****[I might start now]
               ~SmileResponse()
                 You should! I could show you some books that might help. I have a few a home that you could borrow.
                 ******[sounds cool]
                 ->ANOTHERBOOK
                 ******[We'll see]
                 ~AnnoyedResponse()
                 You don't sound so sure but whatever. Anyways, ->ANOTHERBOOK
                 ******[No, Thank you though]
                 ~MadResponse()
                 Oh, okay, I guess it's not for everyone. Sorry, I tend to get stuck on subjects that really interest me. Anyways ->ANOTHERBOOK
             *****[No, not since my last history class.]
                 ~NeutralResponse()
                  Well I could tell you all that you need to know about it but it might take a while. Plus I would need to prepare so that I don't miss anything important!
           ******[Bummer, maybe next time]
                         Sound like a plan! Anyways,  ->ANOTHERBOOK
                 ******[I honestly would prefer if you didn't ]
                        ~AnnoyedResponse()
                         Whatever. I guess you'll never know then. Oh well. By the way, ->ANOTHERBOOK
                 ******[Yeah sound fun]
                 ~HappyResponse()
                   Right! Anyways,  ->ANOTHERBOOK
            ****[Yeah, I suppose]
            What? Do you not think about it?
               *****[I might start now]
                 ~HappyResponse()
                 You should! I could show you some books that might help. I have a few a home that you could borrow.
                 ******[Sounds cool]
                 ->ANOTHERBOOK
                 ******[We'll see]
                 ~AnnoyedResponse()
                 You don't sound so sure but whatever. Anyways, ->ANOTHERBOOK
                 ******[No, Thank you though]
                 ~NeutralResponse()
                 Oh, okay, I guess it's not for everyone. Sorry, I tend to get stuck on subjects that really interest me. Anyways ->ANOTHERBOOK
                
                 
             *****[No, not since my last history class.]
                 ~NeutralResponse()
                  Well I could tell you all that you need to know about it, but it might take a while. Plus I would need to prepare so that I don't miss anything important!
            
               ******[Bummer, maybe next time]
                         Sound like a plan! Anyways,  ->ANOTHERBOOK
                 ******[I honestly would prefer if you didn't ]
                         ~MadResponse()
                         Whatever. I guess you'll never know then. Oh well. By the way, ->ANOTHERBOOK
                 ******[Yeah sound fun]
                       ~SmileResponse()
                       Right! Anyways,  ->ANOTHERBOOK
          
         
          
    **[Oh, that's interesting]
       ~HappyResponse()
      Right! This book is so hard to find. I can't believe it was right in front of me the whole time! Isn't it incredible that a society so long ago still has influence over us today!
         ***[Sure? You seem to know alot about this]
         ~NeutralResponse()
          Well yes! it's important to look back at what society was like 
          then and see how it affects us today.
          
             ****[I never really thought about it like that before]
                ~HappyResponse()
             Well lucky for you that you found me! I think about alot. It's so advanced for existing when it did.
             
                 *****[You think about the Roman Empire alot?]
                    ~ConfusedResponse()
                 Yeah all the time! You don't?
                        ******[I might start now]
                        ~SmileResponse()
                        You should!I could show you some books that might help
                            *******[I honestly would prefer if you didn't ]
                            Whatever. I guess you'll never know then. Oh well. By the way, ->ANOTHERBOOK
                                 *******[Yeah sound fun]
                                  Right! Anyways,  ->ANOTHERBOOK
                        ******[no, not since my last history class.]
                         ~ConfusedResponse()
                        Well I could tell you all that you need to know about it but it would take a while and i would need to prepare so that I don't miss anything important!
                             *******[Bummer, maybe next time]
                                 Sure! Anyways,->ANOTHERBOOK
                             *******[Honestly I would prefer to skip it]
                              ~AnnoyedResponse()
                             Oh sure I guess that's fine.
                             ********[Did you find anything else?]
                              ~HappyResponse()
                             Ah yes! ->ANOTHERBOOK
                             ********[So, what now?]
                             ~NeutralResponse()
                             Well, I guess I'm gonna go and pay for the books. Actually,  ->ANOTHERBOOK
                        
             
     ****[How often do you think about the Roman Empire?]
           Like on a weekly basis? Or times per day?
           ~charEmotion="Neutral"
            
                    *****[You think about it more than once a day!]
                    ~ConfusedResponse()
                      Well, depends on the week and what I'm doing. Why? Is it strange? how often do you think about it?
                         ******[I might start now]
                         ~HappyResponse()
                        You should! I could show you some books that might help
                            *******[I honestly I would prefer if you didn't ]
                            ~AnnoyedResponse()
                            Whatever. I guess you'll never know then. Oh well. By the way, ->ANOTHERBOOK
                                 *******[Yeah sound fun]
                                 ~HappyResponse()
                                  Right! Anyways,  ->ANOTHERBOOK
                        ******[No, not since my last history class.]
                        ~ConfusedResponse()
                        What! Well I could tell you all that you need to know about it, but it would take a while, and I would need to prepare so that I don't miss anything important!
                             *******[Bummer, maybe next time]
                             ~NeutralResponse()
                                 sure! Anyways,->ANOTHERBOOK
                             *******[Honstly I would prefer to skip it]
                              ~AnnoyedResponse()
                             Oh sure I guess that's fine.
                             ********[Did you find anything else?]
                             Ah yes! ->ANOTHERBOOK
                             ********[So, what now?]
                              ~NeutralResponse()
                             Well, I guess I'm gonna go and pay for the books. Actually,  ->ANOTHERBOOK
                        
            
                   *****[I see]
                    ~ConfusedResponse()
                   Why? Don't you think about it?
                   ******[I might start now]
                    ~HappyResponse()
                        You should!I could show you some books that might help
                            *******[I honestly would prefer if you didn't ]
                            ~AnnoyedResponse()
                            Whatever. I guess you'll never know then. Oh well. By the way, ->ANOTHERBOOK
                         *******[Yeah sound fun!]
                         ~SmileResponse()
                        Right! Anyways,  ->ANOTHERBOOK
                                  
                        ******[no, not since my last history class.]
                         ~ConfusedResponse()
                        Well I could tell you all that you need to know about it but it would take a while and i would need to prepare so that I don't miss anything important!
                             *******[Bummer, maybe next time]
                             ~NeutralResponse()
                                 Sure! Anyways,->ANOTHERBOOK
                             *******[Honestly, I would prefer to skip it]
                             ~SadResponse()
                             Oh sure, I guess that's fine.
                             ********[Did you find anything else?]
                             ~HappyResponse()
                             Ah yes! ->ANOTHERBOOK
                             ********[So, what now?]
                             ~NeutralResponse()
                             Well, I guess I'm gonna go and pay for the books. Actually, ->ANOTHERBOOK
                        
        ***[Why would I care about the Roman Empire]
        ~MadResponse()
          why wouldn't you!? It's the most influencial civilzation ever existing! it's worth to atleast think about!
             ****[Huh! And how often do you think about the Roman Empire?]
             ~NeutralResponse()
          Like weekly? or in general per day? Do you not think about it?
              ******[I might start now]
             ~HappyResponse()
                    You should! I could show you some books that might help.
                            *******[I honestly would prefer if you didn't ]
                            ~AnnoyedResponse()
                            Whatever. I guess you'll never know then. Oh well. By the way, ->ANOTHERBOOK
                                 *******[Yeah sound fun]
                                 ~HappyResponse()
                                  Right! Anyways,  ->ANOTHERBOOK
                        ******[No, not since my last history class.]
                        ~NeutralResponse()
                        Well I could tell you all that you need to know about it, but it would take a while, and I would need to prepare so that I don't miss anything important!
                             *******[Bummer, maybe next time]
                             ~NeutralResponse()
                                 sure! Anyways,->ANOTHERBOOK
                             *******[Honestly I would prefer to skip it]
                             ~AnnoyedResponse()
                             Oh sure I guess that's fine.
                             ********[Did you find anything else?]
                             ~HappyResponse()
                             Ah yes! ->ANOTHERBOOK
                             ********[So, what now?]
                             ~NeutralResponse()
                             Well I guess I'm gonna go and pay for the books. actually ->ANOTHERBOOK
                        
    
*[Oh like a fiction played out during the roman empire? Fun!]
~NeutralResponse()
No I don't really read fiction. I think it just as bad as incorrect facts in movies. 
  **[What do you mean?]
  ~charEmotion="Smile"
  Well, you can just make up a fact about something just because you want it to fit your perception. A fact is a fact and we should be careful with what kind of information we spread. 
      ***[Like about the Roman Empire?]
      ~charEmotion="Neutral"
      Exactly! it's already being incorrectly used in multiple books and movies. Especially fiction so that's why it's important with this book because it actually gives the correct information.
      
          ****[Huh, you seem to know alot about it]
          ~ContentResponse()
          Well, there is alot to learn. I mean think about it!
               *****[How often do you think about the roman Empire?]
               ~charEmotion="Confused"
               Like a day? Or weakly, because it depends. Why are you looking at me like that! like you don't think about it!
                    ******[I might start now]
                     ~HappyResponse()
                        You should!I could show you some books that might help
                            *******[I honestly would prefer if you didn't ]
                            ~AnnoyedResponse()
                            Whatever. I guess you'll never know then. Oh well. By the way, ->ANOTHERBOOK
                                 *******[Yeah, sounds fun!]
                                 ~BlushResponse()
                                  Right! Anyways,  ->ANOTHERBOOK
                        ******[No, not since my last history class.]
                        ~NeutralResponse()
                        Well I could tell you all that you need to know about it but it would take a while and i would need to prepare so that I don't miss anything important!
                             *******[Bummer, maybe next time]
                             ~SmileResponse()
                                 Sure! Anyways,->ANOTHERBOOK
                             *******[Honestly I would prefer to skip it]
                             ~AnnoyedResponse()
                             Oh sure I guess that's fine.
                             ********[Did you find anything else?]
                             ~NeutralResponse()
                             Ah yes! ->ANOTHERBOOK
                             ********[So, what now?]
                             ~NeutralResponse()
                             Well, I guess I'm gonna go and pay for the books. Actually, ->ANOTHERBOOK
        

*[Why would you get a book about the Roman Empire?]
~NeutralResponse()
Well why wouldn't I? There is so much to learn from them! They were one of the most advanced civilzation at the time. It's fascinating!

   **[It's not really my thing so...]
   ~AnnoyedResponse()
   Oh alright then. Well ->ANOTHERBOOK
   **[I guess..]
   I promise that it is! I can totally let you borrow some of my books about it if you'd like? I have some really good ones!
   ***[Sure sound fun!]
   ~HappyResponse()
   I'm glad you think so! ->ANOTHERBOOK
   ***[No thanks]
   ~AnnoyedResponse()
   Oh well that's disappointing. Oh Well! ->ANOTHERBOOK






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
        ~ loveAmount-=5
        
=== function AnnoyedResponse ====
        ~charEmotion="Annoyed"
        ~charSound=""
        ~ loveAmount--
        
=== function ContentResponse ====
        ~charEmotion="Content"
        ~charSound=""
        ~loveAmount++
        
=== function SmileResponse ====
        ~charEmotion="Smile"
        ~charSound=""
        ~ loveAmount++
        
=== function ConfusedResponse ====
        ~charEmotion="Shocked"
        ~charSound=""
        ~loveAmount--
        
=== function BlushResponse ====
        ~charEmotion="Blush"
        ~charSound=""
        ~loveAmount++
        

