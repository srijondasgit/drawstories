 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "RULERS AND BUILDINGS", audio_link: 'chapter1.mp3')

        sections = ['Figure 1 shows the first balcony of the Qutb Minar.Qutbuddin Aybak had this constructed around 1199. Notice the pattern created under the balcony by the small arches and geometrical designs. Can you see two bands of inscriptions under the balcony? These are in Arabic. Notice that the surface of the minar is curved and angular. Placing an inscription on such a surface required great precision. Only the most skilled craftsperson could perform this task. Remember that very few buildings were made of stone or brick 800 years ago. What would have been the impact of a building like the Qutb Minar on observers in the thirteenth century', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: How is the “trabeate” principle of architecture different from the “arcuate”?",
                    "Q2: What is a shikhara?",
                    "Q3: What is pietra-dura?",
                    "Q4: How did a temple communicate the importance of a king?",
                    "Q5: An inscription in Shah Jahan’s diwan-i khas in Delhi stated: “If there is Paradise on Earth, it is here, it is here, it is here.” How was this image created?",
                    "Q6: How did the Mughal court suggest that everyone – the rich and the poor, the powerful and the weak – received justice equally from the emperor?",
                    "Q7: What role did the Yamuna play in the layout of the new Mughal city at Shahajahanabad ?",
                   
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
