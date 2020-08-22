
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Magnetic Effects of Electric Current", audio_link: 'chapter1.mp3')
        sections = ['In the previous Chapter on ‘Electricity’ we learnt about the heating effects of electric current. What could be the other effects of electric current? We know that an electric current-carrying wire behaves like a  magnet. Let us perform the following Activity to reinforce it.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Draw magnetic field lines around a bar magnet.',
                    'Q2:  List the properties of magnetic field lines.',
                    'Q3:  Why don’t two magnetic field lines intersect each other?',
                    'Q4:  How does a solenoid behave like a magnet? Can you determine the north and south poles of a current–carrying solenoid with the help of a bar magnet? Explain.',
                    'Q5:  When is the force experienced by a current–carrying conductor placed in a magnetic field largest? ',
                    'Q6:  Name some devices in which electric motors are used.',
                    'Q7:  Two circular coils A and B are placed closed to each other. If the current in the coil A is changed, will some current be induced in the coil B? Give reason.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
