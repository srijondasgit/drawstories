
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: ' ZAKIR HUSAIN ', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Pact with the Sun", audio_link: 'chapter1.mp3')
        sections = [   "SAEEDA’S mother had been ailing for a long time — fever, cough,body-ache, painful joints and what not. Treated by a variety of physicians for weeks, she often showed signs of improvement but soon relapsed into her old, sick self, one complaint substituted by another. Though weak and colourless, she was forbidden normal food and was under strict orders to remain perpetually confined to her small, dingy room with doors and windows fastened, deprived of sunshine and fresh air.",
                    'Please refer your text book for the rest of the course',
                    ] 
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  What did the physicians ask Saeeda’s mother to do to get well? Did their advice help her? If not, why not?",
                    "Q2:  What did the specialist prescribe in addition to medicine?",
                    "Q3:  What did Saeeda tell the sunrays to do? ",
                    "Q4:  Why were the sunrays keen to go down to the earth the next day?",
                    
                      ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
