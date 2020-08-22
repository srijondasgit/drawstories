 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "EIGHTEENTH-CENTURY POLITICAL FORMATIONS", audio_link: 'chapter1.mp3')

        sections = ['If you look at Maps 1 and 2 closely, you will see something significant happening in the subcontinent during the first half of the eighteenth century. Notice how the boundaries of the Mughal Empire were reshaped by the emergence of a number of independent kingdoms. By 1765, notice how another power, the British, had successfully grabbed major chunks of territory in eastern India. What these maps tell us is that political conditions in eighteenth-century India changed quite dramatically and within a relatively short span of time.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: What were the offices held by Sa'adat Khan?",
                    "Q2: Why did the Nawabs of Awadh and Bengal try to do away with the jagirdari system?",
                    "Q3: How were the Sikhs organised in the eighteenth century?",
                    "Q4: Why did the Marathas want to expand beyond the Deccan?",
                    "Q5: What were the policies adopted by Asaf Jah tostrengthen his position?",
                    "Q6: Do you think merchants and bankers today have the kind of influence they had in the eighteenth century?",
                    "Q7: Did any of the kingdoms mentioned in this chapter develop in your state? If so, in what ways do you think life in the state would have been different in the eighteenth century from what it is in the twenty-first century?",
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
