
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "HOW THE CAMEL GOT HIS HUMP", audio_link: 'chapter1.mp3')
        sections = ['We use different kinds of fuel for various purposes at home, in industry and for running automobiles. Can you name a few fuels used in our homes? Name a few fuels used in trade and industry. What fuels are used for running automobiles? Your list will contain fuels like cowdung, wood, coal, charcoal, petrol, diesel, compressed natural gas (CNG), etc.',
                    'You are familiar with the burning of a candle. What is the difference between the burning of a candle and the burning of a fuel like coal? May be you were able to guess right: candle burns with a flame whereas coal does not. Similarly, you will find many other materials burning without a flame. Let us study the chemical process of burning and the types of flame produced during this process.',
                    '6.1 What is Combustion?',
                    'Recall the activity of burning of magnesium ribbon performed in Class VII. We learnt that magnesium burns to form magnesium oxide and produces heat and light (Fig. 6.1).',
                    'We can perform a similar activity with a piece of charcoal. Hold the piece with a pair of tongs and bring it near the flame of a candle or a Bunsen burner. What do you observe?',
                    'We find that charcoal burns in air. We know that coal, too, burns in air producing carbon dioxide, heat and light.',
                    '',
                    'A chemical process in which a substance reacts with oxygen to give off heat is called combustion. The substance that undergoes combustion is said to be combustible. It is also called a fuel. The fuel may be solid, liquid or gas. Sometimes, light is also given off during combustion, either as a flame or as a glow.',
                    'In the reactions mentioned above magnesium and charcoal are combustible substances.',
                    
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Explain how the use of CNG in automobiles has reduced pollution in our cities.',
                    'Q2:  Compare LPG and wood as fuels.',
                    'Q3:  Give reasons: (a) Water is not used to control fires involving electrical equipment. (b) LPG is a better domestic fuel than wood. (c) Paper by itself catches fire easily whereas a piece of paper wrapped around an aluminium pipe does not.',
                    'Q4:  Name the unit in which the calorific value of a fuel is expressed.',
                    'Q5:  Explain how CO2 is able to control fires.',
                    'Q6:  It is difficult to burn a heap of green leaves but dry leaves catch fire easily. Explain.',
                    'Q7:  Which zone of a flame does a goldsmith use for melting gold and silver and why?',
                    'Q8:  In an experiment 4.5 kg of a fuel was completely burnt. The heat produced was measured to be 180,000 kJ. Calculate the calorific value of the fuel.',
                    'Q9:  Can the process of rusting be called combustion? Discuss.',
                    'Q10:  Abida and Ramesh were doing an experiment in which water was to be heated in a beaker. Abida kept the beaker near the wick in the yellow part of the candle flame. Ramesh kept the beaker in the outermost part of the flame. Whose water will get heated in a shorter time?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
