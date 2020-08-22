
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Electricity", audio_link: 'chapter1.mp3')
        sections = ['Electricity has an important place in modern society. It is a controllable and convenient form of energy for a variety of uses in homes, schools, hospitals, industries and so on. What constitutes electricity? How does it flow in an electric circuit? What are the factors that control or regulate the current through an electric circuit? In this Chapter, we shall attempt to answer such questions. We shall also discuss the heating effect of electric current and its applications.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What does an electric circuit mean?',
                    'Q2:  Define the unit of current.',
                    'Q3:  When a 12 V battery is connected across an unknown resistor, there is a current of 2.5 mA in the circuit. Find the value of the resistance of the resistor.',
                    'Q4:  A battery of 9 V is connected in series with resistors of 0.2 Ω, 0.3 Ω, 0.4 Ω , 0.5 Ω and 12 Ω, respectively. How much current would flow through the 12 Ω resistor?',
                    'Q5:  How many 176 Ω resistors (in parallel) are required to carry 5 A on a 220 V line? ',
                    'Q6:  Show how you would connect three resistors, each of resistance 6 Ω, so that the combination has a resistance of (i) 9 Ω, (ii) 4 Ω.',
                    'Q7:  Several electric bulbs designed to be used on a 220 V electric supply line, are rated 10 W. How many lamps can be connected in parallel with each other across the two wires of 220 V line if the maximum allowable current is 5 A?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
