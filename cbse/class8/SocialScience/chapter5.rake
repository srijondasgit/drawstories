
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "When People Rebel", audio_link: 'chapter1.mp3')
        sections = ['In the previous chapters you looked at the policies of the East India Company and the effect they had on different people. Kings, queens, peasants, landlords, tribals, soldiers were all affected in different ways. You have also seen how people resist policies and actions that harm their interests or go against their sentiments.',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What was the demand of Rani Lakshmibai of Jhansi that was refused by the British?',
                    'Q2:  What did the British do to protect the interests of those who converted to Christianity?',
                    'Q3:  What objections did the sepoys have to the new cartridges that they were asked to use?',
                    'Q4:  How did the last Mughal emperor live the last years of his life?',
                    'Q5:  What could be the reasons for the confidence of the British rulers about their position in India before May 1857?',
                    'Q6:  What impact did Bahadur Shah Zafar’s support to the rebellion have on the people and the ruling families?',
                    'Q7:  How did the British succeed in securing the submission of the rebel landowners of Awadh?',
                    'Q8:  In what ways did the British change their policies as a result of the rebellion of 1857?',
                    'Q9:  Find out stories and songs remembered by people in your area or your family about San Sattavan ki Ladaai. What memories do people cherish about the great uprising?',
                    'Q10: Find out more about Rani Lakshmibai of Jhansi. In what ways would she have been an unusual woman for her times?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
