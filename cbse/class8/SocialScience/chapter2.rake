
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "From Trade to Territory", audio_link: 'chapter1.mp3')
        sections = ['Aurangzeb was the last of the powerful Mughal rulers. He established control over a very large part of the territory that is now known as India. After his death in 1707, many Mughal governors (subadars) and big zamindars began asserting their authority and establishing regional kingdoms. As powerful regional kingdoms emerged in various parts of India, Delhi could no longer function as an effective centre.',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What attracted European trading companies to India?',
                    'Q2:  What were the areas of conflict between the Bengal nawabs and the East India Company?',
                    'Q3:  How did the assumption of Diwani benefit the East India Company?',
                    'Q4:  Explain the system of “subsidiary alliance”.',
                    'Q5:  In what way was the administration of the Company different from that of Indian rulers?',
                    'Q6:  Describe the changes that occurred in the composition of the Company’s army.',
                    'Q7:  After the British conquest of Bengal, Calcutta grew from a small village to a big city. Find out about the culture, architecture and the life of Europeans and Indians of the city during the colonial period.',
                    'Q8:  Collect pictures, stories, poems and information about any of the following – the Rani of Jhansi, Mahadji Sindhia, Haidar Ali, Maharaja Ranjit Singh, Lord Dalhousie or any other contemporary ruler of your region.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
