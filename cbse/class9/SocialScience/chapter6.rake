
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "What is Democracy? Why Democracy?", audio_link: 'chapter1.mp3')
        sections = ['What is democracy? What are its features? This chapter builds on a simple definition of democracy. Step by step, we work out the meaning of the terms involved in this definition. The aim here is to understand clearly the bare minimum features of a democratic form of government. After going through this chapter we should be able to distinguish a democratic form of government from a non-democratic government. Towards the end of this chapter, we step beyond this minimal objective and introduce a broader idea of democracy.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Here is some information about four countries. Based on this information, how would you classify each of these countries. Write ‘democratic’, ‘undemocratic’ or ‘not sure’ against each of these. (a) Country A: People who do not accept the country’s official religion do not have a right to vote.(b) Country B: The same party has been winning elections for the last twenty years. (c) Country C: Ruling party has lost in the last three elections. (d) Country D: There is no independent election commission.',
                    'Q2:  Here is some information about four countries. Based on this information, how would you classify each of these countries. Write ‘democratic’, ‘undemocratic’ or ‘not sure’ against each of these.(a) Country P: The parliament cannot pass a law about the army without the consent of the Chief of Army.(b) Country Q: The parliament cannot pass a law reducing the powers of the judiciary.(c) Country R: The country’s leaders cannot sign any treaty with another country without taking permission from its neighbouring country.(d) Country S: All the major economic decisions about the country are taken by officials of the central bank which the ministers cannot change.',
                    'Q3:  Which of these is not a good argument in favour of democracy? Why?(a) People feel free and equal in a democracy.(b) Democracies resolve conflict in a better way than others.(c) Democratic government is more accountable to the people.(d) Democracies are more prosperous than others.',
                    
                       ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
