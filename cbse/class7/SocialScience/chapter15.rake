 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Women Change the World", audio_link: 'chapter1.mp3')

        sections = ['In the previous chapter, we saw how women’s work in the home is not recognised as work. We also read how doing household work and taking care of family members is a full time job and there are no specific hours at which it begins or ends. In this chapter, we will look at work outside the home, and understand how some occupations are seen to be more suitable for men than for women. We will also learn about how women struggle for equality. Getting an education was, and still is, one way in which new opportunities were created for women. This chapter will also briefly trace the different types of efforts made by the women’s movement to challenge discrimination in more recent years.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: How do you think stereotypes, about what women can or cannot do, affect women’s right to equality?",
                    "Q2: List one reason why learning the alphabet was so important to women like Rashsundari Devi, Ramabai and Rokeya.",
                    "Q3: “Poor girls drop out of school because they are not interested in getting an education.” Re-read the last paragraph on page 62 and explain why this statement is not true.",
                    "Q4: Can you describe two methods of struggle that the women’s movement used to raise issues? If you had to organise a struggle against stereotypes, about what women can or cannot do, what method would you employ from the ones that you have read about? Why would you choose this particular method?",
                             
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
