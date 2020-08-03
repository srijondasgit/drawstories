
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "HOW THE CAMEL GOT HIS HUMP", audio_link: 'chapter1.mp3')
        sections = ['Do you recall the processes of digestion, circulation and respiration which you have studied in your previous classes? These processes are essential for the survival of every individual. You have also learnt about the process of reproduction in plants. Reproduction is essential for the continuation of a species. Imagine what would have happened if organisms had not reproduced. You will realise that reproduction is very important as it ensures the continuation of similar kinds of individuals, generation after generation.',
                    'You have already learnt in your previous class about reproduction in plants. In this chapter, we shall learn how reproduction takes place in animals.',
                    '9.1 Modes of ReproductionHave you seen the young ones of different animals? Try to name some of the young ones by completing Table 9.1 as shown in examples at S. No. 1 and 5.',
                    'You must have also seen the young ones of various animals being born. Can you tell how chicks and caterpillars are born? How are kittens and puppies born? Do you think that these young ones looked the same before they were born as they do now? Let us find out.',
                    '',
                    'Just as in plants, there are two modes by which animals reproduce. These are: (i) Sexual reproduction, and (ii) Asexual reproduction.',
                    '9.2 Sexual ReproductionTry to recall reproduction in plants which you studied in Class VII. You will remember that plants that reproduce sexually have male and female reproductive parts. Can you name these parts? In animals also, males and females have different reproductive parts or organs. Like plants, the reproductive parts in animals also produce gametes that fuse to form a zygote. It is the zygote which develops into a new individual. This type of reproduction beginning from the fusion of male and female gametes is called sexual reproduction. Let us find out the reproductive partsin humans and study the process of reproduction in them.',
                    
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Explain the importance of reproduction in organisms.',
                    'Q2:  Describe the the process of fertilization in human beings.',
                    'Q3:  Choose the most appropriate answer: (a) Internal fertilization occurs - (i) infemalebody. (ii) outsidefemalebody. (iii) inmalebody. (iv) outsidemalebody. --- (b) A tadpole develops into an adult frog by the process of (i) fertilization. (ii) metamorphosis. (iii) embedding. (iv) budding. --- (c) The number of nuclei present in a zygote is (i) none. (ii) one. (iii) two. (iv) four.',
                    'Q4:  Give two difference between a zygote and a foetus.',
                    'Q5:  Define asexual reproduction. Describe two methods of asexual reproduction in animals.',
                    'Q6:  In which female reproductive organ does the embryo get embedded?',
                    'Q7:  What is metamorphosis? Give examples.',
                    'Q8:  Differentiate between internal fertilization and external fertilization.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
