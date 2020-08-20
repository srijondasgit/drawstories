
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'DOUGLAS JAMES', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "If I Were You", audio_link: 'chapter1.mp3')
        sections = ['SCENE: A small cottage interior. There is an entrance back right (which may be curtained). Another door to the left must be a practical door. The furniture is simple, consisting of a small table towards the left, a chair or two, and a divan rather upstage on the right. On the table is a telephone.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  “At last a sympathetic audience.” (i) Who says this? (ii) Why does he say it? (iii) Is he sarcastic or serious?',
                    'Q2:  Why does the intruder choose Gerrard as the man whose identity he wants to take on?',
                    'Q3:  “I said it with bullets.” (i) Who says this? (ii) What does it mean? (iii) Is it the truth? What is the speaker’s reason for saying this?',
                    'Q4:  What is Gerrard’s profession? Quote the parts of the play that support your answer.',
                    'Q5:  “You’ll soon stop being smart.”(i) Who says this?',
                      ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
