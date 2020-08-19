 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "WHAT BOOKS AND BURIALS TELL US", audio_link: 'chapter1.mp3')

        sections = ['You may have heard about the Vedas. There are four of them – the Rigveda, Samaveda, Yajurveda and Atharvaveda. The oldest Veda is the Rigveda,composed about 3500 years ago. The Rigveda includes more than a thousand hymns, called sukta or “well-said”. These hymns are in praise of various gods and goddesses. Three gods are especially important: Agni, the god of fire; Indra,a warrior god; and Soma, a plant from which a special drink was prepared.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1: In what ways are the books we read today different from the Rigveda?",
                    "Q2: What kind of evidence from burials do archaeologists use to find out whether there were social differences amongst those who were buried? ",
                    "Q3: In what ways do you think that the life of a raja was different from that of a dasa or dasi?",
                   
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
