
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'RUSKIN BOND', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Adventures of Toto", audio_link: 'chapter1.mp3')
        sections = ['GRANDFATHER bought Toto from a tonga-driver for the sum of five rupees. The tonga-driver used to keep the little red monkey tied to a feeding-trough, and the monkey looked so out of place there that Grandfather decided he would add the little fellow to his private zoo.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  How does Toto come to grandfather’s private zoo?',
                    'Q2:  “Toto was a pretty monkey.” In what sense is Toto pretty?',
                    'Q3:  Why does grandfather take Toto to Saharanpur and how?Why does the ticket collector insist on calling Toto a dog?',
                    'Q4:  How does Toto take a bath? Where has he learnt to do this? How does Toto almost boil himself alive?',
                    'Q5:  Why does the author say, “Toto was not the sort of pet we could keep for long”?',
                    
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
