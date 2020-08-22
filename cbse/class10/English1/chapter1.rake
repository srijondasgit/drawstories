
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'G.L.Funetes', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "A Letter to God", audio_link: 'chapter1.mp3')
        sections = ['THE house — the only one in the entire valley — sat on the crest of a low hill. From this height one could see the river and the field of ripe corn dotted with the flowers that always promised a good harvest. The only thing the earth needed was a downpour or at least a shower. Throughout the morning Lencho — who knew his fields intimately — had done nothing else but see the sky towards the north-east.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What is a “dust of snow”? What does the poet say has changed his mood? How has the poet’s mood changed?',
                    'Q2:  How does Frost present nature in this poem? The following questions may help you to think of an answer.(i) What are the birds that are usually named in poems? Do you think a crow is often mentioned in poems? What images come to your mind when you think of a crow?(ii) Again, what is “a hemlock tree”? Why doesn’t the poet write about a more ‘beautiful’ tree such as a maple, or an oak, or a pine? (iii) What do the ‘crow’ and ‘hemlock’ represent — joy or sorrow? What does the dust of snow that the crow shakes off a hemlock tree stand for?',
                    'Q3: Have there been times when you felt depressed or hopeless? Have you experienced a similar moment that changed your mood that day?',
                   
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
