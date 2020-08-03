
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "HOW THE CAMEL GOT HIS HUMP", audio_link: 'chapter1.mp3')
        sections = ['We use various materials for our basic needs. Some of them are found in nature and some have been made by human efforts.',
                    '',
                    'Does this list include air, water, soil and minerals? Since all these are obtained from nature, they are called natural resources.',
                    '',
                    'Can air, water and soil be exhausted by human activities? You have already studied about water in Class VII. Is water a limitless resource?',
                    'In the light of the availability of various resources in nature, natural resources can be broadly classified into two kinds:Inexhaustible Natural ResourcesThese resources are present in unlimited quantity in nature and are not likely to be exhausted by human activities. Examples are: sunlight, air.',
                    'Exhaustible Natural ResourcesThe amount of these resources in nature is limited. They can be exhausted by human activities. Examples of these resources are forests, wildlife, minerals, coal, petroleum, natural gas etc.',
                    '',
                    'Assume that the eatables in the container represent the total availability of an exhausible natural resource like coal, petroleum or natural gas. Each group may have different consumption pattern. Are the earlier generations of any group too greedy? It may be that the earlier generations in some groups were concerned about the coming generation(s) and left something for them.',
                    'In this chapter we will learn about some exhaustible natural resources like coal, petroleum and natural gas. These were formed from the dead remains of living organisms (fossils). So, these are all known as fossil fuels.',
                    '',
                    '5.1 CoalYou may have seen coal, or heard about it (Fig. 5.1). It is as hard as stone and is black in colour.',
                    '',
                    'Coal is one of the fuels used to cook food. Earlier, it was used in railway engines to produce steam to run the engine. It is also used in thermal power plants to produce electricity. Coal is also used as a fuel in various industries.',
                    '',
                    'About 300 million years ago the earth had dense forests in low lying wetland areas. Due to natural processes, like flooding, these forests got buried under the soil. As more soil deposited over them, they were compressed. The temperature also rose as they sank deeper and deeper. Under high pressure and high temperature, dead plants got slowly converted to coal. As coal contains mainly carbon, the slow process of conversion of dead vegetation into coal is called carbonisation. Since it was formed from the remains of vegetation, coal is also called a fossil fuel. A coal mine is shown in Fig. 5.2.',
                    
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What are the advantages of using CNG and LPG as fuels?',
                    'Q2:  Name the petroleum product used for surfacing of roads.',
                    'Q3:  Describe how coal is formed from dead vegetation. What is this process called?',
                    'Q4:  Explain why fossil fuels are exhaustible natural resources.',
                    'Q5:  Describe characteristics and uses of coke.',
                    'Q6:  Explain the process of formation of petroleum.',

                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
