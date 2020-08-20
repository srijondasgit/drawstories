
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "STRUCTURE OF THE ATOM", audio_link: 'chapter1.mp3')
        sections = ['In Chapter 3, we have learnt that atoms and molecules are the fundamental building blocks of matter. The existence of different kinds of matter is due to different atoms constituting them. Now the questions arise:(i) What makes the atom of one element different from the atom of another element? and (ii) Are atoms really indivisible, as proposed by Dalton, or are there smaller constituents inside the atom? We shall find out the answers to these questions in this chapter. We will learn about sub-atomic particles and the various models that have been proposed to explain how these particles are arranged within the atom.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Compare the properties of electrons, protons and neutrons.',
                    'Q2:  What are the limitations of J.J. Thomson’s model of the atom?',
                    'Q3:  What are the limitations of Rutherford’s model of the atom?',
                    'Q4:  Describe Bohr’s model of the atom.',
                    'Q5:  Compare all the proposed models of an atom given in this chapter.',
                    'Q6:  Summarise the rules for writing of distribution of electrons in various shells for the first eighteen elements.',
                    'Q7:  Define valency by taking examples of silicon and oxygen.?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
