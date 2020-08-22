
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'VICTOR CANNING', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "A Question of Trust", audio_link: 'chapter1.mp3')
        sections = ['EVERYONE thought that Horace Danby was a good, honest citizen. He was about fifty years old and unmarried, and he lived with a housekeeper who worried over his health. In fact, he was usually very well and happy except for attacks of hay fever in summer. He made locks and was successful enough at his business to have two helpers. Yes, Horace Danby was good and respectable — but not completely honest.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Did you begin to suspect, before the end of the story, that the lady was not the person Horace Danby took her to be? If so, at what point did you realise this, and how?',
                    'Q2:  What are the subtle ways in which the lady manages to deceive Horace Danby into thinking she is the lady of the house? Why doesn’t Horace suspect that something is wrong?',
                    'Q3:  “Horace Danby was good and respectable — but not completely honest”. Why do you think this description is apt for Horace? Why can’t he be categorised as a typical thief?',
                    'Q4:  Horace Danby was a meticulous planner but still he faltered. Where did he go wrong and why?',
                    'Q5:  Do you think Horace Danby was unfairly punished, or that he deserved what he got?',
                    'Q6:  Do intentions justify actions? Would you, like Horace Danby, do something wrong if you thought your ends justified the means? Do you think that there are situations in which it is excusable to act less than honestly?',
                      ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
