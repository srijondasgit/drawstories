 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "DEVOTIONAL PATHS TO THE DIVINE", audio_link: 'chapter1.mp3')

        sections = ['You may have seen people perform rituals of worship, or singing bhajans, kirtans or qawwalis, or even repeating the name of God in silence, and noticed that some of them are moved to tears. Such intense devotion or love of God is the legacy of various kinds of bhakti and Sufi movements that have evolved since the eighth century', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Describe the beliefs and practices of the Nathpanthis,Siddhas and Yogis.",
                    "Q2: What were the major ideas expressed by Kabir? How did he express these?",
                    "Q3: What were the major beliefs and practices of the Sufis?",
                    "Q4: Why do you think many teachers rejected prevalent religious beliefs and practices?",
                    "Q5: What were the major teachings of Baba Guru Nanak?",
                  
                   
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
