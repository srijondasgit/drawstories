
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Ruling the Countryside", audio_link: 'chapter1.mp3')
        sections = ['On 12 August 1765, the Mughal emperor appointed the East India Company as the Diwan of Bengal. The actual event most probably took place in Robert Clive’s tent, with a few Englishmen and Indians as witnesses. But in the painting above, the event is shown as a majestic occasion, taking place in a grand setting. The painter was commissioned by Clive to record the memorable events in Clive’s life. The grant of Diwani clearly was one such event in British imagination. As Diwan, the Company became the chief financial administrator of the territory under its control. Now it had to think of administering the land and organising its revenue resources. This had to be done in a way that could yield enough revenue to meet the growing expenses of the company. A trading company had also to ensure that it could buy the products it needed and sell what it wanted.',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Describe the main features of the Permanent Settlement.',
                    'Q2:  How was the mahalwari system different from the Permanent Settlement?',
                    'Q3:  Give two problems which arose with the new Munro system of fixing revenue.',
                    'Q4:  Why were ryots reluctant to grow indigo?',
                    'Q5:  What were the circumstances which led to the eventual collapse of indigo production in Bengal?',
                    'Q6:  Find out more about the Champaran movement and Mahatma Gandhi’s role in it.',
                    'Q7:  Look into the history of either tea or coffee plantations in India. See how the life of workers in these plantations was similar to or different from that of workers in indigo plantations.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
