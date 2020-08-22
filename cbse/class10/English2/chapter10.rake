
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'CLAIRE BOIKO', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Book That Saved the Earth", audio_link: 'chapter1.mp3')
        sections = ['HISTORIAN : Good afternoon. Welcome to our Museum of Ancient History, and to my department — curiosities of the good old, far-off twentieth century. The twentieth century was often called the Era of the Book. In those days, there were books about everything, from anteaters to Zulus. Books taught people how to, and when to, and where to, and why to. They illustrated, educated, punctuated, and even decorated. But the Mother Goose is a well-known book of nursery rhymes in English. Do you think such a book can save Planet Earth from a Martian invasion? Read this play, set four centuries in the future, and find out.10 The Book That Saved the Earth strangest thing a book ever did was to save the Earth.You haven’t heard about the Martian invasion of 2040?',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Noodle avoids offending Think-Tank but at the same time he corrects his mistakes. How does he manage to do that?',
                    'Q2:  If you were in Noodle’s place, how would you handle Think-Tank’s mistakes?',
                    'Q3:  Do you think books are being replaced by the electronic media? Can we do away with books altogether?',
                    'Q4:  In what ways does Think-Tank misinterpret innocent nursery rhymes as threats to the Martians? Can you think of any incidents where you misinterpreted a word or an action? How did you resolve the misunderstanding?',
                    'Q5:  The aliens in this play speak English. Do you think this is their language? What could be the language of the aliens?',
                     ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
