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
* [Yeah sound nice!]
~HappyResponse()
Perfect. We could go somewere else to if you want! 
**[Lets decide that later]
~HappyResponse()
Yeah sounds perfect. I had a great time today! bye ->END
**[I think I would like that more]
oh thats fine. I had a great time but i get that it's not for everyone. I hope to see you around. Bye! ->END
                
*[Maybe not here]
Oh, sure I guess. My bad, I thought it was a nice place for a date.
                
     **[It was alright]
        well, we can go somewhere else for the next date!
          ***[Next date?]
             ~BlushResponse()
             Well only if you want.
              ****[Yes]
              ~HappyResponse()
                  Great! Can't wait! ->END
            ****[Let's see how we feel after the date]
                  ~SadResponse()
                 oh okay, sure. I guess i'll see you around..
                 bye
                 *****[Bye]
                 ->END
                    
       **[Not really my cup of tea]
         ahh I see. Okay thats fine. We can go somewhere else for the next date.
           ***[Next date?]
             ~BlushResponse()
            Well only if you want.
                ****[Yes]
              ~HappyResponse()
                  Great! Can't wait! I'm gonna head home now! bye
                  *****[Bye]
                  ->END
               ****[Let's see how we feel after the date]
                  ~SadResponse()
                 oh okay, sure. I guess i'll see you around..
                 bye
                 *****[Bye]
                 ->END
== INTRODUCTION ==
Perfect, thank you! I'll definitely put this book to good use.

*[I hope so! A book about a toxic plant is something everyone could use.]
    ~SmileResponse()
    Yes exactly! I appreciate your sense of humor.
    **[so, Why did you neeed the book?]
    
    Oh just for an experiment that I've been working on. But look at the book I found!
         ***[You found another book?]
          ~SmileResponse()
          Yes! I've been looking for this book forever! ->RomanEmpire
          
          ***[What did you find?]
            ~NeutralResponse()
          This! I've been looking for this forever! ->RomanEmpire
    **[It's a little strange]
    ~AnnoyedResponse()
    Huh? That I got the book? Well it's for an expriement that I've been working on. 
    ***[experiment?]
    ~HappyResponse()
    yeah, but it doesn't matter! Look at the book I found!I've been looking for this book for forever
    ->RomanEmpire
        ***[Oh, okay]
        ~HappyResponse()
        Yeah but look at the book I found?I've been looking for this book for forever
    ->RomanEmpire
        
*[Good, it took a lot of effort to find it]
   ~BlushResponse()
   I'm sorry I should have helped more.I got distracted and forgot what I was looking for. Thank you for helping me! But i did find a couple of other books aswell. I have been looking for this book for ages and then it was right in front of me!!
    **[You didn't want the book I spent half an hour looking for? ]
        ~AnnoyedResponse()
       No of course i did but i've been looking for this book for months! I was just excited about it.
       ***[Well what is this book about then?]
        ->RomanEmpire
    **[oh fun, what book did you find?]
        ~HappyResponse()
        ->RomanEmpire
 *[GO TO END]
    ->END()

== ANOTHERBOOK ==
I found this other book as well.
* [Oh, is it about the ancient Greeks?]
     No, why would I ever read about that?
     
    ** [Oh, sorry just thought it fit]
        ~HappyResponse()  
         It doesn't but I guess I can see how you got there. No this book is for school. Its about microorganisms in alges. It's for a class I have. Did you find something for yourself?
        *** [No, I forgot to look]
              ->nextDate
                
                
        *** [Well, I was busy looking for you book]
                Oh right! Sorry. I didn't mean for it to become all about me. I have a tendency to lose my self in books.
                **** [Don't worry about it!]->nextDate
    ** [My bad, What is it about then?]
        ~NeutralResponse() 
        This is a book about microorganisms. They are so fascinating!
            
        *** [microorganisms?]
            Yeah, I'm studying to be a mircrobiolgist so it's helpful for school.
            ****[Ah okey sounds Interesting]
            well sometimes. ->nextDate
            ****[Sounds difficult]
            Well it can be ,but I really love what I study so.
            ->nextDate
            
        *** [Wow, why?]
                ~NeutralResponse()
                What do you mean why? 
                **** [Why would you get a book about microorganisms?]
                id you find something for yourself?
                   ***** [No, I forgot to look]  ->nextDate
                
                   ***** [Well, I was busy looking for you book]
                Oh right! Sorry. I didn't mean for it to become all about me. I have a tendency to lose my self in books.
                       ****** [Don't worry about it!]->nextDate
                        ~SmileResponse()
                        

        *** [No I had no idea!]
        Well we are studying them in class right now and I needed the book to pass.
        
             ****[What about the book that I found]
             yes that one to, but it's for another class. When you were looking did you find any book you liked?
                ***** [No, I forgot to look]  ->nextDate
                
                 ***** [Well, I was busy looking for you book]
                Oh right! Sorry. I didn't mean for it to become all about me. I have a tendency to lose my self in books.
                       ****** [Don't worry about it!]->nextDate
                        ~SmileResponse()
                        
             ****[Makes sense]
             yeah. When you were looking did you find any books you liked?
                ***** [No, I forgot to look]  ->nextDate
                
                 ***** [Well, I was busy looking for you book]
                Oh right! Sorry. I didn't mean for it to become all about me. I have a tendency to lose my self in books.
                       ****** [Don't worry about it!]->nextDate

== TODAYSHAPPEN ==

    - So, now that we have time, have you done anything special today?
    * [Not really.]
        ~NeutralResponse()  
        - That's a shame. I've been studying all day. It's been so fun, you should try it sometime.
        ** [I've studied before.]
            ~SmileResponse()
                - Really? That's nice. I didn't know that. But that's good.
                        -> BABIES
        ** [Well, okay?]
                - I didn't mean it in a bad way. I just didn't get those vibes from you.
                *** [Hahaha, I don't give off study vibes?]
                        - Now that you mention it... maybe not.
                                -> BABIES
                *** [I don't like studying, so it's okay.]
                    - Perfect!
                                -> BABIES
    * [I spent time with my dog.]
   ~HappyResponse()
    You have a dog too? I love dogs!
    
        ** [I love them too.]
                - Wow! I have so many facts about dogs, but I'm saving those for later.
                ***[can't wait..]
                        -> BABIES
                        
                        ***[Do you have facts about everything?]
                        well almost. I know alot about the things i like i guess.
                        ->BABIES
        ** [Yes.]
                ~HappyResponse()
                - That's so nice! I have so many facts about dogs, but I'm holding onto those for now.
                **** [Hahaha.]
                        - I really love dogs so much! anyways, 
                            -> BABIES
==RomanEmpire==
It's about the Roman Empire
*[I'm sorry what?]
The Roman Empire! You know the most influencial civilication ever! The book i found is one of the biggest deep dives into thier law and culture yet! 
    **[fun...]
       ~HappyResponse()
    Yes so fun! I can't wait to read it. Did you know that the law they created back then has effected our socities laws today! Isn't it incredible that a socity so long ago still has influence over us today?
         ***[ You seem to know alot about this]
          Well yes! it's important to look back at what society was like then and see how it effects us today.
             ****[hmm, And how often do you think about the Roman Empire?]
             What do you mean?
          Like on a weekly basis? or in general per day? Because it varies alot! Why? Do you not think about it?
          
               *****[I might start now]
                 You should! I could show you some books that might help. I have a few a home that you could borrow.
                 ******[sounds cool]
                 ->ANOTHERBOOK
                 ******[We'll see]
                 You don't sound so sure but whatever. Anyways, ->ANOTHERBOOK
                 ******[No, Thank you though]
                 oh,okey i guess it's not for everyone. Sorry i tend to get stuck on subjects that really interested me. Anyways ->ANOTHERBOOK
                
                 
             *****[No, not since my last history class.]
                  Well I could tell you all that you need to know about it but it might take a while. Plus I would need to prepare so that I don't miss anything important!
            
               ******[bummer, maybe next time]
                         Sound like a plan! Anyways,  ->ANOTHERBOOK
                 ******[I honestly would prefer if you didn't ]
                         Whatever. I guess you'll never know then. Oh well. By the way, ->ANOTHERBOOK
                 ******[Yeah sound fun]
                       Right! Anyways,  ->ANOTHERBOOK
            ****[Yeah, I suppose]
            
            Do you not think about it?
               *****[I might start now]
                 You should!I could show you some books that might help. I have a few a home that you could borrow.
                 ******[sounds cool]
                 ->ANOTHERBOOK
                 ******[We'll see]
                 You don't sound so sure but whatever. Anyways, ->ANOTHERBOOK
                 ******[No, Thank you though]
                 oh,okey i guess it's not for everyone. Sorry i tend to get stuck on subjects that really interested me. Anyways ->ANOTHERBOOK
                
                 
             *****[No, not since my last history class.]
                  Well I could tell you all that you need to know about it but it might take a while. Plus I would need to prepare so that I don't miss anything important!
            
               ******[bummer, maybe next time]
                         Sound like a plan! Anyways,  ->ANOTHERBOOK
                 ******[I honestly would prefer if you didn't ]
                         Whatever. I guess you'll never know then. Oh well. By the way, ->ANOTHERBOOK
                 ******[Yeah sound fun]
                       Right! Anyways,  ->ANOTHERBOOK
          
         
          
    **[oh, That's interesting]
       ~HappyResponse()
      Right! This book is so hard to find. I can't believe it was right in front of me the whole time! Isn't it incredible that a socity so long ago still has influence over us today!
        
         ***[Sure? You seem to know alot about this]
          Well yes! it's important to look back at what society was like 
          then and see how it effects us today.
          
             ****[I never really thought about it like that before]
                ~HappyResponse()
             Well lucky for you that you found me!I think about alot. It's so advanced for exsiting whne it did.
             
                 *****[You think about the Roman Empire alot?]
                    ~ConfusedResponse()
                 Yeah all the time! You don't?
                        ******[I might start now]
                        You should!I could show you some books that might help
                            *******[I honestly would prefer if you didn't ]
                            Whatever. I guess you'll never know then. Oh well. By the way, ->ANOTHERBOOK
                                 *******[Yeah sound fun]
                                  Right! Anyways,  ->ANOTHERBOOK
                        ******[no, not since my last history class.]
                         ~ConfusedResponse()
                        Well I could tell you all that you need to know about it but it would take a while and i would need to prepare so that I don't miss anything important!
                             *******[bummer, maybe next time]
                                 sure! Anyways,->ANOTHERBOOK
                             *******[Honstly i would prefer to skip it]
                              ~AnnoyedResponse()
                             Oh sure I guess that's fine.
                             ********[Did you find anything else?]
                              ~HappyResponse()
                             ah yes! ->ANOTHERBOOK
                             ********[So, what now?]
                             ~NeutralResponse()
                             well I guess I'm gonna go and pay for the books. actually ->ANOTHERBOOK
                        
             
              ****[how often do you think about the Roman Empire?]
              
            like on a weekly basis? or times per day?
            
                    *****[You think about it more than once a day!]
                    ~ConfusedResponse()
                      Well, depends on the week and what I'm doing. Why? Is it strange? how often do you think about it?
                         ******[I might start now]
                         ~HappyResponse()
                        You should!I could show you some books that might help
                            *******[I honestly I would prefer if you didn't ]
                            ~AnnoyedResponse()
                            Whatever. I guess you'll never know then. Oh well. By the way, ->ANOTHERBOOK
                                 *******[Yeah sound fun]
                                 ~HappyResponse()
                                  Right! Anyways,  ->ANOTHERBOOK
                        ******[no, not since my last history class.]
                        ~ConfusedResponse()
                        What! Well I could tell you all that you need to know about it but it would take a while and i would need to prepare so that I don't miss anything important!
                             *******[bummer, maybe next time]
                             ~NeutralResponse()
                                 sure! Anyways,->ANOTHERBOOK
                             *******[Honstly I would prefer to skip it]
                              ~AnnoyedResponse()
                             Oh sure I guess that's fine.
                             ********[Did you find anything else?]
                             ah yes! ->ANOTHERBOOK
                             ********[So, what now?]
                              ~NeutralResponse()
                             well I guess I'm gonna go and pay for the books. actually ->ANOTHERBOOK
                        
            
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
                             *******[bummer, maybe next time]
                             ~NeutralResponse()
                                 sure! Anyways,->ANOTHERBOOK
                             *******[Honstly i would prefer to skip it]
                             ~SadResponse()
                             Oh sure I guess that's fine.
                             ********[Did you find anything else?]
                             ~HappyResponse()
                             ah yes! ->ANOTHERBOOK
                             ********[So, what now?]
                             ~NeutralResponse()
                             well I guess I'm gonna go and pay for the books. actually ->ANOTHERBOOK
                        
        ***[Why would I care about the roman Empire]
        ~MadResponse()
          why wouldn't you!? It's the most influencial civilzation ever exsiting! it's worth to atleast think about!
             ****[Huh! And how often do you think about the Roman Empire?]
             ~NeutralResponse()
          like weekly? or in general per day?
              ******[I might start now]
             ~HappyResponse()
                    You should!I could show you some books that might help
                            *******[I honestly would prefer if you didn't ]
                            ~AnnoyedResponse()
                            Whatever. I guess you'll never know then. Oh well. By the way, ->ANOTHERBOOK
                                 *******[Yeah sound fun]
                                 ~HappyResponse()
                                  Right! Anyways,  ->ANOTHERBOOK
                        ******[no, not since my last history class.]
                        ~NeutralResponse()
                        Well I could tell you all that you need to know about it but it would take a while and i would need to prepare so that I don't miss anything important!
                             *******[bummer, maybe next time]
                             ~NeutralResponse()
                                 sure! Anyways,->ANOTHERBOOK
                             *******[Honestly I would prefer to skip it]
                             ~AnnoyedResponse()
                             Oh sure I guess that's fine.
                             ********[Did you find anything else?]
                             ~HappyResponse()
                             ah yes! ->ANOTHERBOOK
                             ********[So, what now?]
                             ~NeutralResponse()
                             well I guess I'm gonna go and pay for the books. actually ->ANOTHERBOOK
                        
    
*[oh like a fiction played out during the roman empire?Fun!]
No I don't really read fiction. I think it just as bad as incorrect facts in movies. 
  **[What do you mean?]
  well, you can just make up a fact about something just because you want it to fit your perception. A fact is a fact and we should be carful with what kind of information we spread. 
      ***[Like about the Roman Empire?]
      Exactly! it's already being incorerctly used in multple books and movies. Especially fiction so that's why it's important with this book because it actually gives the correct information.
      
          ****[huh, you seen to know alot about it]
          Well there is alot to learn. I mean think about it!
               *****[How often do you think about the roman Empire?]
               Like a day? Or weakly, because it depends. Why are you looking at me like that! like you don't think about it!
                    ******[I might start now]
                        You should!I could show you some books that might help
                            *******[I honestly would prefer if you didn't ]
                            Whatever. I guess you'll never know then. Oh well. By the way, ->ANOTHERBOOK
                                 *******[Yeah sound fun]
                                  Right! Anyways,  ->ANOTHERBOOK
                        ******[no, not since my last history class.]
                        Well I could tell you all that you need to know about it but it would take a while and i would need to prepare so that I don't miss anything important!
                             *******[bummer, maybe next time]
                                 sure! Anyways,->ANOTHERBOOK
                             *******[Honstly i would prefer to skip it]
                             Oh sure I guess that's fine.
                             ********[Did you find anything else?]
                             ah yes! ->ANOTHERBOOK
                             ********[So, what now?]
                             well I guess I'm gonna go and pay for the books. actually ->ANOTHERBOOK
        

*[Why would you get a book about the Roman Empire?]
Well why wouldn't I? There is so much to learn from them
   **[well it's not really my thing so]
   
   Oh alright then. Well ->ANOTHERBOOK
   **[I guess]
   I promise there is! I can totally let you borrow some of my books about it if you want. I have some really good ones.
   ***[Sure sound fun]
   I'm glad you think so! ->ANOTHERBOOK
   ***[No thanks]
   Oh well that's disapointing. Well ->ANOTHERBOOK

== BABIES ==
I think I need to head home now.
*[Already?]
    Yeah unfortunally I have to. My babies won't feed by themselves
    **[Babies? LIke actual children?]
    
           What no! ofcourse not! I would have put that in my bio in that case! I meant my plants.
         ***[Ahaa. that makes more sense!]
         ~SmileResponse()
         Yeah, they take alot of work but They bring so much to a room.
             ->nextDate()
                        
         ***[that's atleast a little comforting]
              ->nextDate
 *[Why?]
 What do you mean by that?
    **[What do you mean by babies?]
        Yes my plants?
         ***[Right...]
          ->nextDate()
     **[Nothing]
 By babies I mean my plants
        ***[Ohhh now I understand]
        ->nextDate()
    **[Okay]
   ~HappyResponse()
    I need to go home and read the book
        ***[Yes, I hope it gives you some use]
            Thanks, I think it will. I am very interested in euphorbias so I am excited.
             ****[Okay!]
              ->nextDate()
                
        ***[Okay]
        ~HappyResponse()
        I also need to feed my babies
             ****[Babies?]
           ~ContentResponse() //Suprised could work if i had it
             Yes my plants of course.
                *****[Aha...]
                   ->nextDate()
           ****[What?]
              ~ConfusedResponse()
             What don't you understand?
                 *****[What do you mean with babies?]
                   My plants of course.
                      ******[That explaines it]
                    ->nextDate()
    **[Already?]
        ~NeutralResponse()
        Yes but thank you for helping me find the book.
          ***[Yeah]
              ~SmileResponse()
            Now I need to go home and feed my babies, or I mean my plants.
          ****[Fair enough]
          By the way -> nextDate
      ***[...]
       ~SmileResponse()
        Anyways, time to go home to my plants.
       *****[Okay]
              -> nextDate




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
        
=== function SmileResponse ====
        ~charEmotion="Smile"
        ~charSound=""
        ~ loveAmount+=5
        
=== function ConfusedResponse ====
        ~charEmotion="Shocked"
        ~charSound=""
        
=== function BlushResponse ====
        ~charEmotion="Blush"
        ~charSound=""
        
