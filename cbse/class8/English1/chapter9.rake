
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'JAYANT NARLIKAR', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The comet – I", audio_link: 'chapter1.mp3')
        sections = ['IT was a moonless night in December. A burst of cool breeze from the window was enough to disturb the sleep of Indrani Debi. Half awake she felt for the adjoining pillow, although she knew the answer. Duttada was not there.',
                    '“So he has gone to hobnob with that wretched Dibya! At least he might have bothered to close the door.” Even as she muttered her complaints Indrani Debi could not repress her smile. She knew how utterly oblivious her husband was of the practical problems of living. Didn\'t his doctor tell him to take special precautions against the cold? But he wouldn\'t remember to put on a sweater even if it was lying on his bedside chair! How could he when Dibya had put her spell on him?',
                    'She picked up the white woollen pullover, wrapped herself in a shawl and made her way to the roof, to break up his tete-a-tete with Dibya.',
                    'She found them both huddled together eye to eye. At least Duttada was looking into Dibya\'s eyes.',
                    'When Duttada acquired this telescope he was so thrilled that he called it Dibya Chakshu — Divine Eye. To Indrani Debi the telescope was like a designing woman who had ensnared her husband. So she just called it Dibya and the name stuck.',
                    'To Duttada the telescope marked the fulfilment of the ambition of a lifetime. As an amateur astronomer he had longed for enough money to buy a good telescope and for enough spare time in which to observe the heavens. He got them both when he retired with ample money. The telescope was duly installed and long were the dark nights that Duttada spent in star-gazing. At least Indrani Debi thought so.',
                    '“Here! Put on this sweater — or do you want Nabin Babu to order bed-rest tomorrow?”Like every other amateur astronomer, Duttada had a secret ambition that he would one day discover a new comet. For, comets can be new, coming as they do from the remote corners of the Solar System. Like planets, comets also orbit round the Sun but their orbits are highly eccentric. So once in a while a comet comes close to the Sun; it has a longish tail that is lit brilliantly by the sunlight and then it recedes into darkness not to be seen again for years, or for centuries.',
                    'What chance did he stand with his eight-inch Dibya? Didn\'t professional astronomers have gigantic telescopes?',
                    'Duttada was optimistic... he knew that the professionals with their pre-assigned programmes would be looking at faint stars and nebulous galaxies. They might miss such an insignificant thing as a comet which they were not expecting to see anyway! Indeed amateurs had often discovered new comets which the professionals had missed.',
                    'And, it looked to Duttada that tonight was going to be the big night. For against the background of the same old stars Duttada had detected a faint stranger. He re-examined the charts with him, checked his Dibya for any smudges on the optics, did some calculations on his pocket calculator in torchlight — for, though absent-minded about daily chores, he was meticulous in his observations.',
                    'Yes, there can be no mistake. What he was looking at had not been there earlier and it did look like a new comet.',
                    'Two days later the Ananda Bazar Patrika came out with the news:Calcutta Man Discovers New Comet(From our special correspondent)Shri Manoj Dutta, a resident on the northern outskirts of Calcutta* has claimed to have discovered a new comet. He has seen the comet on the last two nights and has informed the Indian Institute of Astrophysics (IIA) at Bangalore* of its whereabouts. The IIA runs a 90-inch telescope, the biggest in Asia, at Kavalur. If it confirms Dutta\'s finding it will be the high point in his lifelong career as amateur astronomer. Duttada, as he is affectionately called by his friends and admirers, estimates that the comet would be clearly visible to the naked eye in the next few months. He gives all credit for his discovery to his eight-inch telescope which he calls Dibya.',
                    'Thereafter it took just one week for \'Comet Dutta\' to be recognised and so named. For the IIA confirmed the findings and communicated it worldwide and, according to the accepted practice, the new comet was named after its discoverer.',
                    'This brought in unwelcome publicity to the introvert Duttada. There were numerous receptions and functions to attend. Returning from one such ceremony Duttada muttered to himself in disgust, “I almost wish I had not discovered this comet.”To his surprise Indrani Debi agreed. “I wish the same, though not for the same reason”.',
                    '“May I ask why you wish I had not discovered this comet?” Duttada asked.',
                    '“Comets bring ill-luck and I wish a good man like you were not associated with the discovery of one,” Indrani Debi said with concern. Duttada laughed. “I see that even an MA degree has not cured you of your superstitions! There is no corelation whatsoever with the arrival of a comet and the calamities of the earth. On the contrary comets have been scientifically studied and their composition is well understood. There is nothing harmful about them. Well, you will soon see this comet of mine pass harmlessly by causing noanxiety to anybody.”In this last comment, however, Duttada was not going to beexactly right.',
                    '• A British scientist writes a paper based on Duttada\'s discovery.',
                    '• He and the Defence Science Advisor have a tete-a-tete over animpending calamity.',
                    '• A conference of international experts might yield a clue to thecosmic puzzle.',
                    'In the spacious dining hall of King\'s College, Cambridge, the butler whispered deferentially in the Provost\'s ear and handed him an envelope on a silver tray. The Provost beckoned James and passed on the envelope saying, “It seems you are wanted urgently inyour room.”As he made his way towards the beautiful building, James opened the envelope. It contained a brief note:Dear Dr Forsyth,The bearer of this note has been instructed to bring you to my office in London tonight. Please come without delay. I am making arrangements for your overnight stay in London. I regret the inconvenience caused to you and request you to keep your visit strictly confidential. Believe me, it is absolutely essential.',
                    'Yours sincerely, John MacphersonThe signature carried the designation underneath: Defence Science Advisor, Her Majesty\'s Government.',
                    'A bowler-hatted man near the mantlepiece greeted him as James entered his sitting room. “I am Johnson, sir. Security officer at Whitehall.” He showed his identity card and continued, “I presume, you know why I am here, sir.”“To the extent that is conveyed in this note,” replied James. He knew that it would be useless to ask Johnson for further details. “I won\'t take long.”Johnson\'s Ford Cortina brought them to Whitehall in less than ninety minutes. It took them another ten minutes to reach the chambers of Sir John Macpherson. Having introduced James to Sir John, the quiet but efficient Johnson slipped out.',
                    '“Dr Forsyth, my apologies for this imposition on your time!” Sir John advanced with outstretched hands. “To avoid any further delay, I will come to the point right away.” Sir John handed him a typescript.',
                    '“Why! It is my paper to Nature. How did you get this original manuscript?” James was surprised and somewhat uneasy.',
                    'Sir John saw his anxiety and continued, “Taylor, the editor of Nature is a friend of mine.”“I had asked Nature to publish it without delay since it is very important,” James looked puzzled.',
                    '“I agree that it is important. So important in fact that it must never be published — that is, if what you say is correct.” Sir John lit his pipe.',
                    'James would never have tolerated aspersions on the accuracy of his work, or the implied order that it must be suppressed. But he knew Sir John to be a respected scientist and was willing to hear him out.',
                    '“Please do not misunderstand me, Dr Forsyth. I met Taylor today at lunch in the club where he showed me your paper — I still retain enough interest in astronomy, you know — and he asked for my opinion before sending it to a professional referee. I immediately realised that your result has profound implications, if it is correct.”“Let me assure you, Sir John, that it is correct. I stake my reputation on it,” James could not contain himself any more.',
                    '“Do you realise what will happen if Comet Dutta collides with the Earth, as you predict it will?”“The effects will be catastrophic! That is why I have taken extra care to verify my calculations. Barring rare circumstances, the collision is inevitable.” James was confident. But Sir John picked out the one qualifying phrase: “What are those rare circumstances?”“Well, it might collide with some asteroid before reaching here. Or it might just split up when near the Sun, or it might evaporate...” “But one can\'t count on these fortuitous circumstances. We have to proceed on the assumption that Comet Dutta will collide with the Earth. Cometary collisions are expected to occur once in ten million years. But now we know that the next one will occurin a year...”“Ten months, to be precise,” interjected James.',
                    '“Thank you for the correction! Do you realise that we have onlyten months of survival left for the entire living species on the Earth? Don\'t you think we have to do something to stop all this?”A fleeting smile crossed James\' face. \'Just like a civil servant! As if we are facing here a minor breakdown of law and order,\' he thought to himself. Aloud, he said, “How, may I ask, can we prevent this natural catastrophe?\'“I don\'t know; but we have no option but to try. I think we need more than two brains to handle this situation. It is essential to call an urgent meeting of experts from all over the world to think of a counter-measure and of course in total secrecy. Think of the panic in the world if this dreadful news leaks out.” Sir John glanced at the manuscript in James\' hand.',
                    '“My suppressing this paper will not hide the truth, Sir John!” James said. “There are others who will arrive at the same conclusion, sooner or later.”“No. Do not suppress it but tone it down. Add many if\'s and but\'s to make your conclusion appear not so certain... I will exert all my influence with friends in other countries to make them exercise a similar restraint for a while.”“For how long?”“Until this wretched comet is safely out of the way. Let us spend some time now to plan the details of this international conference. Shall we call it in a week\'s time, here?”A week to plan such an important secret conference of international experts! James thought it an impossible task, but Sir John disagreed, and began to spell out details.',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1: Why does Indrani Debi dislike Duttada’s “hobnobbing” with Dibya?',
                    'Q2: What is the difference between a planet and a comet, as given in the story?',
                    'Q3: Why was Duttada hopeful that he would discover a new comet soon?',
                    'Q4: How did Sir John get hold of James’ original manuscript?',
                    'Q5: Why is his wife unhappy about the discovery?',
                    'Q6: What is the important point the paper makes?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
