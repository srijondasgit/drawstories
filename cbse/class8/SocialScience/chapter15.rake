
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Some Natural Phenomena", audio_link: 'chapter1.mp3')
        sections = ['In Class VII you read about winds, storms and cyclones. You learnt that cyclones can cause a lot of damage to human life and property. You also learnt that we can protect ourselves from these destructive phenomena to some extent. In this chapter we shall discuss two other destructive natural phenomena. These are lightning and earthquakes. We shall also discuss what steps we can take to minimise destruction causedby these phenomena.',
                    '',
                    '15.1 LightningYou might have seen sparks on a electric pole when wires become loose. This phenomenon is quite common when a wind is blowing and shacking the wires. You might also have seen sparks when a plug is loose in its socket. Lightning is also an electric spark, but on a huge scale.',
                    'In ancient times people did not understand the cause of these sparks. They were, therefore, afraid of lightning and thought that the wrath of gods was visiting them. Now, of course, we understand that lightning is caused by the accumulation of charges in the clouds. We need not be afraid of lightning, but we have to take precautions to protect ourselves from the deadly sparks.',
                    'The Sparks that the Greeks Knew AboutThe ancient Greeks knew as early as 600 B.C. that when amber (amber is a kind of resin) was rubbed with fur, it attracted light objects such as hair. You might have seen that when you take off woollen or polyester clothes, your hair stands on ends. If you take off these clothes in the dark, you see even a spark and hear crackling sound. In 1752 Benjamin Franklin, an American scientist, showed that lightning and the spark from your clothes are essentially the same phenomena. However, this realisation took 2000 years.',
                    
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Which of the following cannot be charged easily by friction? (a) A plastic scale (b) A copper rod (c) An inflated balloon (d) A woollen cloth.',
                    'Q2:  When a glass rod is rubbed with a piece of silk cloth the rod (a) and the cloth both acquire positive charge. (b) becomes positively charged while the cloth has a negative charge. (c) and the cloth both acquire negative charge. (d) becomes negatively charged while the cloth has a positive charge.',
                    'Q3:  Sometime, a crackling sound is heard while taking off sweater during winters. Explain.',
                    'Q4:  Explain why a charged body loses its charge if we touch it with our hand.',
                    'Q5:  Name the scale on which the destructive energy of an earthquake is measured. An earthquake measures 3 on this scale. Would it be recorded by a seismograph? Is it likely to cause much damage?',
                    'Q6:  Suggest three measures to protect ourselves from lightning.',
                    'Q7:  Explain why a charged balloon is repelled by another charged balloon whereas an uncharged balloon is attracted by another charged balloon?',
                    'Q8:  Describe with the help of a diagram an instrument which can be used to detect a charged body.',
                    'Q9:  List three states in India where earthquakes are more likely to strike.',
                    'Q10:  Suppose you are outside your home and an earthquake strikes. What precaution would you take to protect yourself?',
                    'Q11:  The weather department has predicted that a thunderstorm is likely to occur on a certain day. Suppose you have to go out on that day. Would you carry an umbrella? Explain.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
