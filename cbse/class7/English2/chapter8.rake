 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'AXEL MUNTHE', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Bear story", audio_link: 'chapter1.mp3')

        sections = ['THERE was once a lady who lived in an old manor-house on the border of a big forest. This lady had a pet bear she was very fond of. It had been found in the forest, half dead of hunger, so small and helpless that it had to be brought up on the bottle by the lady and the old cook. This was several years ago and now it had grown up to a big bear, so big and strong that he could have slain a cow and carried it away between his two paws if he had wanted to. But he did not want to; he was a most amiable bear who did not dream of harming anybody, man or beast.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: Where did the lady find the bear cub? How did she bring it up?",
                    "Q2: The bear grew up but “he was a most amiable bear”. Give three examples to prove this.",
                    "Q3: What did the bear eat? There were two things he was not allowed to do. What were they?",
                    "Q4: When was the bear tied up with a chain? Why?",
                    "Q5: What happened one Sunday when the lady was going to her sister’s house? What did the lady do? What was the bear’s reaction?",
                    "Q6: Why was the bear looking sorry for himself in the evening? Why did the cook get angry with her mistress?",
                   
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
