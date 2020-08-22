
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Life Processes", audio_link: 'chapter1.mp3')
        sections = ['How do we tell the difference between what is alive and what is not alive? If we see a dog running, or a cow chewing cud, or a man shouting loudly on the street, we know that these are living beings. What if the dog or the cow or the man were asleep? We would still think that they were alive, but how did we know that? We see them breathing, and we know that they are alive. What about plants? How do we know that they are alive? We see them green, some of us will say. But what about plants that have leaves of colours other than green? They grow over time, so we know that they are alive, some will say. In other words, we tend to think of some sort of movement, either growth-related or not, as common evidence for being alive. But a plant that is not visibly growing is still alive, and some animals can breathe without visible movement. So using visible movement as the defining characteristic of life is not enough.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Why is diffusion insufficient to meet the oxygen requirements of multi-cellular organisms like humans?',
                    'Q2:  What criteria do we use to decide whether something is alive?',
                    'Q3:  What are outside raw materials used for by an organism?',
                    'Q4:  What processes would you consider essential for maintaining life?',
                    'Q5:  What are the differences between autotrophic nutrition and heterotrophic nutrition?',
                    'Q6:  Where do plants get each of the raw materials required for photosynthesis?',
                    'Q7:  What is the role of the acid in our stomach?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
