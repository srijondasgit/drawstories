
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Rudyard Kipling', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "HOW THE CAMEL GOT HIS HUMP", audio_link: 'chapter1.mp3')
        sections = ['Of all the emotions which surged through me as I stood on the summit of Everest, looking over miles of panorama below us, the dominant one I think was humility. The physical in me seemed to say, \'Thank God, it\'s all over!” However, instead of being jubilant, there was a tinge of sadness. Was it because I had already done the \'ultimate\' in climbing and there would be nothing higher to climb and all roads hereafter would lead down?',
                    'By climbing the summit of Everest you are overwhelmed by a deep sense of joy and thankfulness. It is a joy which lasts a lifetime. The experience changes you completely. The man who has been to the mountains is never the same again.',
                    'As I look back at life after climbing Everest I cannot help remarking about the other summit — the summit of the mind — no less formidable and no easier to climb.',
                    'Even when getting down from the summit, once the physical exhaustion had gone, I began asking myself the question why I had climbed Everest. Why did the act of reaching the summit have such a hold on my imagination? It was already a thing of the past, something done yesterday. With every passing day,it would become more remote. And then what would remain? Would my memories fade slowly away?',
                    'All these thoughts led me to question myself asto why people climb mountains. It is not easy to answer the question. The simplest answer would be,as others have said, “Because it is there.” It presents great difficulties. Man takes delight in overcoming obstacles. The obstacles in climbing a mountain are physical. A climb to a summit means endurance, persistence and will power. The demonstration of these physical qualities is no doubt exhilarating, as it was for me also.',
                    'I have a more personal answer to the question. From my childhood I have been attracted by mountains. I had been miserable, lost, when away from mountains, in the plains. Mountains are nature at its best. Their beauty and majesty pose a great challenge, and like many, I believe that mountains are a means of communion with God.',
                    'Once having granted this, the question remains: Why Everest? Because it is the highest, the mightiest and has defied many previous attempts. It takes the last ounce of one\'s energy. It is a brutal struggle with rock and ice. Once taken up, it cannot be given up halfway even when one\'s life is at stake. The passage back is as difficult as the passage onwards. And then, when the summit is climbed, there is the exhilaration, the joy of having done something, the sense of a battle fought and won. There is a feeling of victory and of happiness.',
                    'Glimpsing a peak in the distance, I get transportedto another world. I experience a change within myselfwhich can only be called mystical. By its beauty, aloofness, might, ruggedness, and the difficulties encountered on the way, the peak draws me to it — as Everest did. It is a challenge that is difficult to resist.',
                    'Looking back I find that I have not yet fully explained why I climbed Everest. It is like answering a question why you breathe. Why do you help your neighbour? Why do you want to do good acts? There is no final answer possible.',
                    'And then there is the fact that Everest is not just a physical climb. The man who has been to the mountain-top becomes conscious in a special manner of his own smallness in this large universe.',
                    'The physical conquest of a mountain is only one part of the achievement. There is more to it than that. It is followed by a sense of fulfilment. There is the satisfaction of a deep urge to rise above one\'s surroundings. It is theeternal love for adventure in man. The experience is not merely physical. It is emotional. It is spiritual.',
                    'Consider a typical climb, towards the summit on the last heights. You are sharing a rope with another climber. You firm in. He cuts the steps in the hard ice. Then he belays and you inch your way up. The climb is grim. You strain every nerve as you take every step. Famous climbers have left records of the help given by others. They have also recorded how they needed just that help. Else they might have given up. Breathing is difficult. You curse yourself for having let yourself in for this. You wonder why you ever undertook the ascent. There are moments when you feel like going back. It would be sheer relief to go down, instead of up. But almost at once you snap out of that mood. There is something in you that does not let you give up thestruggle. And you go on. Your companion keeps up with you. Just another fifty feet. Or a hundred, maybe. You ask yourself: Is there no end? You look at your companion and he looks at you. You draw inspiration from each other. And then, without first being aware of it, you are at the summit.',
                    'Looking round from the summit you tell yourself that it was worthwhile. Other silvery peaks appear through the clouds. If you are lucky the sun may be on them. The surrounding peaks look like a jewelled necklace around the neck of your summit. Below, you see vast valleys sloping into the distance. It is an ennobling, enriching experience to just look down from the summit of a mountain. You bow down and make your obeisance to whichever God you worship.',
                    'I left on Everest a picture of Guru Nanak. Rawat left a picture of Goddess Durga. Phu Dorji left a relic of the Buddha. Edmund Hillary had buried a cross under a cairn (a heap of rocks and stones) in the snow. These are not symbols of conquest but of reverence.',
                    'The experience of having climbed to the summit changes you completely.',
                    'There is another summit. It is within yourself. It is in your own mind. Each man carries within himself his own mountain peak. He must climb it to reach to a fuller knowledge of himself. It is fearful, and unscalable. It cannot be climbed by anyone else. You yourself have to do it. The physical act of climbing to the summit of a mountainoutside is akin to the act of climbing the mountain within. The effects of both the climbs are the same. Whether the mountain you climb is physical or emotional and spiritual, the climb will certainly change you. It teaches you much about the world and about yourself.I venture to think that my experience as an Everester has provided me with the inspiration to face life\'s ordeals resolutely. Climbing the mountain was a worthwhile experience. The conquest of the internal summit is equally worthwhile. The internal summits are, perhaps, higher than Everest.',
                    
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  What are the three qualities that played a major role in the author’s climb?",
                    "Q2:  Why is adventure, which is risky, also pleasurable?",
                    "Q3:  What was it about Mount Everest that the author found irresistible?",
                    "Q4:  One does not do it (climb a high peak) for fame alone. What does one do it for, really?",
                    'Q5:  “He becomes conscious in a special manner of his own smallness in this large universe.” This awareness defines an emotion mentioned in the first paragraph. Which is the emotion?',
                    'Q6:  What were the “symbols of reverence” left by members of the team on Everest?',
                    "Q7:  What, according to the writer, did his experience as an Everester teach him?",
                    'Q8:  Write a composition describing a visit to the hills, or any place which you found beautiful and inspiring.'
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
