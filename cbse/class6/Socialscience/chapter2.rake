 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "ON THE TRAIL OF THE EARLIEST PEOPLE", audio_link: 'chapter1.mp3')

        sections = ['The earliest people: why were they on the move?We know about people who lived in the subcontinent as early as two million years ago. Today, we describe them as hunter-gatherers. The name comes from the way in which they got their food. Generally, they hunted wild animals, caught fish and birds, gathered fruits, roots, nuts, seeds, leaves, stalks and eggs. The immense variety of plants in a tropical land like ours meant that gathering plant produce was an extremely important means of obtaining food.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1: Why did the hunter-gatherers travel from place to place? In what ways are these similar to/different from the reasons for which we travel today?",
                    "Q2: What tools would you use today for cutting fruit? What would they be made of?",
                    "Q3: List three ways in which hunter-gatherers used fire (see page16). Would you use fire for any of thesepurposes today?",
                    "Q4: Make two columns in your notebook. In the left hand column, list the foods hunter-gatherers ate (see page11). In the right hand column, list some of the foods you eat. Do you notice any similarities/differences?",
                    "Q5: If you had a natural pebble like the ones shown on page 13, what would you use it for?",
                    "Q6: List two tasks that are performed by both men and women at present. List another two that are performed only by women, and two that are performed only by men. Compare your list with that of any two of your classmates. Do you notice any similarities/differences in your lists?",
                   
                           
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
