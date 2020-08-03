
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'JAYANT NARLIKAR', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The comet – II", audio_link: 'chapter1.mp3')
        sections = ['BY the time they finished their deliberations and Sir John dropped him at his hotel off Regent Street, it was 1 a.m. There was hardly any crowd on the street but when James looked up from his window a star-studded night sky greeted him. Somewhere amongst these stars was Comet Dutta heading for a collision with the Earth. It was hard to believe the calamity of the future on such a peaceful night. For a moment James wondered if he had done his sums right.',
                    'Whatever doubt James may have had about Sir John\'s efficiency were quickly dispelled when he reported for the conference and found that all the experts listed by him were there. Astronomers, computer scientists, nuclear physicists, space technologists, biologists, all were there. And as Sir John\'s special invitee was present the man who had started it all—Manoj Dutta.',
                    'The conference lasted one week and went on under total cover of secrecy. First the experts checked and rechecked James Forsyth\'s calculation with the latest observations of Comet Dutta.',
                    'He was right: there was no escape from the direct hit predicted by him. There was a small chance that the comet may just graze the atmosphere of the Earth and not collide. In that case the loss of life and property would not be total. But this slight respite was hardly reassuring enough for taking no action.',
                    'Having decided that some action was needed, what form should it take? The experts dismissed defensive measures like living in underground bunkers. It was simply not a practical proposition. So the only course was to take offensive action. Comet Dutta could be marginally deflected from its path by giving it a push.',
                    'The experts calculated that the bulk of destructive nuclear power available on the Earth would be needed to achieve this mammoth task. A gigantic nuclear explosion suitably placed, suitably directed and suitably timed could do the trick. This could be done by placing the nuclear payload in a spaceship, sending it to intercept the approaching comet and detonating it by remote control. Success or failure, secrecy must be preserved. Finally a time-table was drawn up for the operation which was code-named \'Project Light Brigade\'. The important dates in it were:October 10: Despatch the spacecraft with the payload unless by then the comet is already destroyed by natural causes or has changed its path due to unforeseen reasons. November 15: Rendezvous with the comet and detonation of the payload.',
                    'December 15: If the experiment failed this was the day the comet would hit the Earth. If it succeeded, this was the day the comet would pass by at a near but safe distance.',
                    'The success of the experiment depended on how massive the comet was. Nobody could estimate; everybody hoped that it was not very massive.',
                    '“Do you think we will succeed?” Duttada asked Sir John Macpherson for his opinion. During the week the two had developed considerable affinity for each other.',
                    '“Mr Dutta, I will give you an honest answer! I am not buying any Christmas presents till December 15.”Duttada toured the British Isles for two weeks after the conference and he had a pleasant time visiting observatories and exchanging views with amateur as well as professional astronomers. On his return he was greeted by the inevitable vast crowd of friends, social leaders, students and the usual hangers-on. Loaded with garlands and bombarded by questions from the press he somehow made his way to the waiting car.',
                    'Comprehension Check1. “For a moment James wondered if he had done his sums right.” Why was James doubtful about his sums and calculations?',
                    '2. What did the scientists at the conference say about James\'s \'sums\'?',
                    '3. Immediate action was needed, the scientists decided. Give one exampleeach of \'defensive\' and \'offensive\' action mentioned in the text.',
                    '4. “I am not buying any Christmas presents till December 15.” What did SirJohn mean by that?',
                    'II• Duttada returns home to a warm welcome and a ceremony, which is not a scientist\'s delight.',
                    '• A secret communication sends him rushing to the local sweet shop.',
                    '• Indrani Debi says that Khoka, their eight-year-old grandson, hassaved the world. Her husband is seriously puzzled.',
                    'Arriving home he found another crowd gathered under a pandal. He glanced questioningly at Indrani Debi. Surely she knew how he hated crowds. Indrani, obviously uneasy, offered the explanation: “I have arranged a yajna and called priests to bless you.”“But why? Just because I left the shores of India? You know it is no longer taboo! And in any case you know my views on these meaningless rituals.”',
                    'Indrani Debi looked at Sibaji babu, the younger brother of her husband. Sibaji babu coughed and explained, “We have all been very disturbed since you discovered the comet. Guruji recommended a shanti yajna to pacify the evil spirit behind the comet. We are all waiting for you to perform the yajna.”“May I know what specific advantage there is in this ceremony?” Duttada was outwardly calm.',
                    '“The comet you have discovered will not cause any ill effects on the Earth.”At this remark Duttda blew up. “Don\'t you know that this is all superstition? It could be condoned in the olden times when man did not know what comets were. Not so in modern times. Comets are known for what they are, their movements are forecast precisely by mathematical calculations and it is clearly established by statistical studies that their visits have no correlations with disasters on the Earth ... All this is of course futile on my part to explain — you and the likes of you never read even the elementary books on Science.”Sibaji babu gently interjected, “But our wise forefathers recommended such yajnas.”Since his return from London, Duttada was in regular correspondence with Sir John Macpherson. Their friendship had grown out of their appreciation of each other\'s virtues. Sir John admired Duttada\'s scientific outlook while the latter admired the former\'s discipline and efficiency. Their correspondence never mentioned the Project Light Brigade although once in a while Sir John would hint at its progress in a subtle manner that Duttada would understand.',
                    'Meanwhile Comet Dutta was following its predicted path. In due course it developed its tail. It circled round the Sun without breaking apart; nor did it evaporate. The scientists on Project Light Brigade therefore knew that the threat of collision was now very much real.',
                    'In the middle of October, Duttada got a letter from Sir John. In the midst of descriptions of the meeting of the Royal Astronomical Society, the unseasonably warm weather, the opening matches of the football season and a recent bye-election, Duttada spotted the sentence he was eagerly looking for: “The charge of the Light Brigade has begun. Let us hope for the best.” So the spacecraft had been launched on time.',
                    'But will it achieve the rendezvous in time and at the right place? Will the remote control detonation work? What if the gigantic nuclear pile fails to fire?',
                    'Duttada could not share his anxieties with anyone around him. He had to participate in and outwardly enjoy the Puja ceremonies, the Diwali celebration and other festivals. His sole daytime relaxation was in the company of Khoka, his eight-year-old grandson, and of course at night looking through Dibya.',
                    'He was regularly monitoring the comet, now clearly visible even to the naked eye. On November 18 a special messenger on a scooter from the British Council brought in an urgent telex message for him. The telex operator in Calcutta had wondered what was so special about it to make it so urgent. But on reading it Duttada lost all his lethargy and rushed to his favourite rasagolla shop. The message read:“I am confident now of buying my Christmas presents on December 15 — John Macpherson.”On December 15 Comet Dutta came closest to the earth — at a distance of 80,000 kilometres. Millions saw it and admired it. Only a handful knew how close they had come to total annihilation.',
                    'When the comet had gone far away and was seen no more, Duttada felt it safe to make the following comment to his wife: “Now that the comet came and went, are you satisfied that no major disaster took place that can be attributed to it?”“I agree that there has been no major disaster; but there could have been some. Do you know how they were averted?” Indrani Debi said with quiet confidence.',
                    'Duttada looked at her. Did she know? How could she? He had never mentioned Project Light Brigade to her. He probed cautiously, “I don\'t understand what you mean.”“It is very simple. There were no disasters because of the yajna at our house.”“But I never performed the yajna. Don\'t you remember, I refused to have anything to do with it?”“Of course, I do. But we found a way out — at least Guruji did. He said that if you were unwilling to perform the yajna, it would be all right if a descendant of yours did it. So we got Khoka to deputise for you. And it has worked! Isn\'t Guruji clever?” Indrani\'s voice had a ring of triumph.',
                    'Duttada formed a mental picture of Khoka performing the yajna uttering mantras dictated to him which he did not understand, pouring ghee at specified intervals into the fire, offering flowers... And then the picture changed to an assembly of scientists at the conference analysing the problem, devising solutions and executing them rationally and efficiently.',
                    'It seemed hard to believe that both pictures were different aspects of contemporary human society. Duttada was aware of the gulf that separates the rich from the poor, the educated from the illiterate, the privileged from the unprivileged. But this gap between the rational and the superstitious seemed to him far wider, far more sinister. Will human society ever succeed in eliminating it?',
                    'Duttada did not know the answer.',        
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1: What did the scientists at the conference say about James’s ‘sums’?',
                    'Q2: Immediate action was needed, the scientists decided. Give one example each of ‘defensive’ and ‘offensive’ action mentioned in the text.',
                    'Q3: What is Duttada expected to do on his return from London?',
                    'Q4: What is his reaction to the proposal?',
                    'Q5: Did Sir John buy Christmas presents on December 15? How did Duttada get to know about it?',
                    'Q6: Why, according to Indrani Debi, had the comet not been disastrous? Do you agree with her?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
