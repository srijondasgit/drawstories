 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "FUN WITH MAGNETS", audio_link: 'chapter1.mp3')

        sections = ['Paheli and Boojho went to a place where a lot of waste material was piled into huge heaps. Something exciting was happening! A crane was moving towards the heap of junk. The long hand of the crane lowered a block over a heap. It then began to move.Guess, what? Many pieces of iron junk were sticking to the block, as it moved away (Fig. 13.1)!', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: It was observed that a pencil sharpener gets attracted by both the poles of a magnet although its body is made of plastic. Name a material that might have been used to make some part of it",
                    "Q2: Write any two properties of a magnet.",
                    "Q3: Where are poles of a bar magnet located?",
                    "Q4: A bar magnet has no markings to indicate its poles. How would you find out near which end is its north pole located?",
                    "Q5: You are given an iron strip. How will you make it into a magnet?",
                    "Q6: How is a compass used to find directions?",
                           
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
