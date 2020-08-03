
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'FIRDAUS KANGA', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "A visit to Cambridge", audio_link: 'chapter1.mp3')
        sections = ['Cambridge was my metaphor for England, and it was strange that when I left it had become altogether something else, because I had met Stephen Hawking there.',
                    'It was on a walking tour through Cambridge that the guide mentioned Stephen Hawking, \'poor man, who is quite disabled now, though he is a worthy successor to Issac Newton, whose Chair he has at the university.\'And I started, because I had quite forgotten that this most brilliant and completely paralysed astrophysicist,the author of A Brief History of Time, one of the biggest best-sellers ever, lived here.',
                    'When the walking tour was done, I rushed to a phone booth and, almost tearing the cord so it could reach me outside, phoned Stephen Hawking\'s house. There was his assistant on the line and I told him I had come in a wheelchair from India (perhaps he thought I had propelled myself all the way) to write about my travels in Britain. I had to see Professor Hawking — even ten minutes would do. “Half an hour,“ he said. “From three-thirty to four.”And suddenly I felt weak all over. Growingup disabled, you get fed up with people asking you to be brave, as if you have a courage account on which you are too lazy to draw a cheque. The only thing that makes you stronger is seeing somebody like you, achieving something huge. Then you know how much is possible and you reach out further than you ever thought you could.',
                    '“I haven\'t been brave,” said his disembodied computer-voice, the next afternoon. “I\'ve had no choice.” Surely, I wanted to say, living creatively with the reality of his disintegrating body was a choice? But I kept quiet, because I felt guilty every time I spoke to him, forcing him to respond. There he was, tapping at the little switch in his hand, trying to find the words on his computer with the only bit of movement left to him, his long, pale fingers. Every so often, his eyes would shut in frustrated exhaustion. And sitting opposite him I could feel his anguish, the mind buoyant with thoughts that came out in frozen phrases and sentences stiff ascorpses.',
                    '“A lot of people seem to think that disabled peopleare chronically unhappy,” I said. “I know that\'s not true myself. Are you often laughing inside?”About three minutes later, he responded, “I find it amusing when people patronise me.”“And do you find it annoying when someone like me comes and disturbs you in your work?”The answer flashed. “Yes.” Then he smiled his one- way smile and I knew, without being sentimental or silly, that I was looking at one of the most beautiful men in the world.',
                    'A first glimpse of him is shocking, because he is like a still photograph — as if all those pictures of him in magazines and newspapers have turned three-dimensional.',
                    'Then you see the head twisted sideways into a slump, the torso shrunk inside the pale blue shirt, the wasted legs; you look at his eyes which can speak, still, and they are saying something huge and urgent — it is hard to tell what. But you are shaken because you have seen something you never thought could be seen.',
                    'Before you, like a lantern whose walls are worn so thin you glimpse only the light inside, is the incandescence of a man. The body, almost irrelevant, exists only like a case made of shadows. So that I, no believer in eternal souls, know that this is what each of us is; everything else an accessory.',
                    '“What do you think is the best thing about being disabled?” I had asked him earlier.',
                    '“I don\'t think there is anything good about being disabled.”“I think,” I said, “you do discover how much kindness there is in the world.”“Yes,” he said; it was a disadvantage of his voice synthesiser that it could convey no inflection, no shades or tone. And I could not tell how enthusiastically he agreed with me.',
                    'Every time I shifted in my chair or turned my wrist to watch the time — I wanted to make every one of our thirty minutes count — I felt a huge relief and exhilaration in the possibilities of my body. How little it mattered then that I would never walk, or even stand.',
                    'I told him how he had been an inspiration beyond cliche ́ for me, and, surely, for others — did that thought help him?',
                    '“No,” he said; and I thought how foolish I was to ask. When your body is a claustrophobic room and the walls are growing narrower day by day, it doesn\'t do much good to know that there are people outside smiling with admiration to see you breathing still.',
                    '“Is there any advice you can give disabled people, something that might help make life better?”“They should concentrate on what they are good at; I think things like the disabled Olympics are a waste of time.” “I know what you mean.” I remembered the years I\'d spent trying to play a Spanish guitar considerably larger than I was; and how gleefully I had unstringed it one night. The half-hour was up. “I think I\'ve annoyed youenough,” I said, grinning. “Thank you for...”“Stay.” I waited. “Have some tea. I can show you the garden.” The garden was as big as a park, but StephenHawking covered every inch, rumbling along in his motorised wheelchair while I dodged to keepout of the way. We couldn\'t talk very much;the sun made him silent, the letters on hisscreen disappearing in the glare.',
                    'A n hour later, we were ready to leave. I didn\'tknow what to do. I could not kiss him or cry. I touched his shoulder and wheeled out into the summer evening. I looked back; and I knew he was waving, though he wasn\'t. Watching him, an embodiment of my bravest self, the one I was moving towards, the one I had believed in for so many years, alone, I knew that my journey was over. For now.',                  
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  Guess the first question put to the scientist by the writer.",
                    "Q2:  Stephen Hawking said, “I’ve had no choice.” Does the writer think there was a choice? What was it?",
                    "Q3:  What endeared the scientist to the writer so that he said he was looking at one of the most beautiful men in the world?",
                    "Q4:  Read aloud the description of ‘the beautiful’ man. Which is the most beautiful sentence in the description?",
                    "Q5:  What is the scientist’s message for the disabled?",
                    "Q6:  Why does the writer refer to the guitar incident? Which idea does it support?",
                    "Q7:  ThewriterexpresseshisgreatgratitudetoStephenHawking.Whatisthe gratitude for?",
                    'Q8:  Fill in the blanks in the sentences below using the appropriate forms of the words given in the following  - guide succeed chair travel pale draw true'
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
