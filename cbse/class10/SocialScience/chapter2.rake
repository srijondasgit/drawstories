
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Nationalism in India", audio_link: 'chapter1.mp3')
        sections = ['As you have seen, modern nationalism in Europe came to be associated with the formation of nation-states. It also meant a change in people’s understanding of who they were, and what defined their identity and sense of belonging. New symbols and icons, new songs and ideas forged new links and redefined the boundaries of communities. In most countries the making of this new national identity was a long process. How did this consciousness emerge in India?',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Explain:a) Why growth of nationalism in the colonies is linked to an anti-colonial movement.b) How the First World War helped in the growth of the National Movement in India.c) Why Indians were outraged by the Rowlatt Act. d) Why Gandhiji decided to withdraw the Non-Cooperation Movement.',
                    'Q2:  What is meant by the idea of satyagraha?',
                    'Q3:  Write a newspaper report on:a) The Jallianwala Bagh massacre b) The Simon Commission',
                    'Q4:  Compare the images of Bharat Mata in this chapter with the image of Germania in Chapter 1.',
                    'Q5:  List all the different social groups which joined the Non-Cooperation Movement of 1921.Then choose any three and write about their hopes and struggles to show why they joined the movement.',
                    'Q6:  Discuss the Salt March to make clear why it was an effective symbol of resistance against colonialism.',
                    'Q7:  Imagine you are a woman participating in the Civil Disobedience Movement. Explain what the experience meant to your life.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
