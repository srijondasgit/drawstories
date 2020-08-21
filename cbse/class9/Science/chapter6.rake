
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "TISSUES", audio_link: 'chapter1.mp3')
        sections = ['From the last chapter, we recall that all living organisms are made of cells. In unicellular organisms, a single cell performs all basic functions. For example, in Amoeba, a single cell carries out movement, intake of food,gaseous exchange and excretion. But in multicellular organisms there are millions of cells. Most of these cells are specialised to carry out specific functions. Each specialised function is taken up by a different group of cells. Since these cells carry out only a particular function,they do it very efficiently. In human beings, muscle cells contract and relax to cause movement, nerve cells carry messages, blood flows to transport oxygen, food, hormones and waste material and so on. In plants, vascular tissues conduct food and water from one part of the plant to other parts. So, multi-cellular organisms show division of labour. Cells specialising in one function are often grouped together in the body. This means that a particular function is carried out by a cluster of cells at a definite place in the body. This cluster of cells, called a tissue, is arranged and designed so as to give the highest possible efficiency of function. Blood, phloem and muscle are all examples of tissues.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Define the term “tissue”.',
                    'Q2:  How many types of elements together make up the xylem tissue? Name them.',
                    'Q3:  How are simple tissues different from complex tissues in plants?',
                    'Q4:  Differentiate between parenchyma, collenchyma and sclerenchyma on the basis of their cell wall.',
                    'Q5:  What are the functions of the stomata?',
                    'Q6:  Diagrammatically show the difference between the three types of muscle fibres.',
                    'Q7:  What is the specific function of the cardiac muscle?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
