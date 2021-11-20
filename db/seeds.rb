# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Question.destroy_all

Question.create!(
    image: "Lymphedema.jpg",
    question: "A patient has arrived complaining of leg swelling.",
    option0: "Lymphedema",
    option1: "Cirrhosis",
    option2: "Cellulitis",
    option3: "Deep Vein Thrombosis",
    hint: "A condition of localized swelling caused by a compromised lymphatic system.",
    answer: "Lymphedema",
    answer_description: "Lymphedema, also known as lymphoedema and lymphatic edema, is a condition of localized swelling caused by a compromised lymphatic system. The lymphatic system functions as a critical portion of the body's immune system and returns interstitial fluid to the bloodstream."
).imagestorage.attach(io: File.open('app/assets/images/Lymphedema.jpg'), filename: 'Lymphedema.jpg')
 

Question.create!(
  image: "Croup.jpg",
  question: "A parent brings in a child suffering from a breathing problem and coughing that will not stop.",
  option0: "Croup",
  option1: "Asthma",
  option2: "Bronchitis",
  option3: "Sinusitis",
  hint: "Also known as laryngotracheobronchitis, is a type of respiratory infection that is usually caused by a virus.",
  answer: "Croup",
  answer_description: "Croup, also known as laryngotracheobronchitis, is a type of respiratory infection that is usually caused by a virus. The infection leads to swelling inside the trachea, which interferes with normal breathing and produces the classic symptoms of \"barking\" cough, stridor, and a hoarse voice."
).imagestorage.attach(io: File.open('app/assets/images/Croup.jpg'), filename: 'Croup.jpg')

Question.create!(
  image: "BlueNevi.jpg", 
  question: "A patient has arrived with a spot of discolored spots.",
  option0: "Blue Nevi",
  option1: "Kaposi Sarcoma",
  option2: "Melanoma",
  option3: "Radiation Tattoo",
  hint: "A solitary blue-colored mole that can present at birth or develop later on in life.",
  answer: "Blue Nevi",
  answer_description: "The blue nevus is a solitary blue-colored mole that can present at birth or develop later on in life. The blue color, or ceruloderma, is caused by the Tyndall effect when light is preferentially scattering shorter wavelengths by melanin found in the dermis of the skin. The blue nevus can be found on many areas of the body; however, most have been found on the head and neck, sacral area, back of the hands, and feet."
).imagestorage.attach(io: File.open('app/assets/images/BlueNevi.jpg'), filename: 'BlueNevi.jpg')

Question.create!(
  image: "AcuteHemorrhagicOedemaOfInfancy.jpg",
  question: "A parent has arrived with their child who appears to have discoloration of the skin. What is your first impression?", 
  option0: "Acute Hemorrhagic Oedema Of Infancy",
  option1: "Purpura",
  option2: "Bruising",
  option3: "Mongolian Spots",
  hint: "This condition is a benign phenomenon although it manifests with fever, large palpable purpuric skin lesions, and edema.",
  answer: "Acute Hemorrhagic Oedema Of Infancy",
  answer_description: "Acute Hemorrhagic Edema of Infancy is a small vessel leucocytoclastic vasculitis affecting young infants. It is characterized by large, target-like, macular to purpuric plaques predominantly affecting the face, ear lobes and extremities. Non-pitting edema of the distal extremities and low-grade fever may also be present. Extra-cutaneous involvement is very rare. Although the lesions have a dramatic onset in a twenty-four to forty-eight hour period, usually the child has a non-toxic appearance."
).imagestorage.attach(io: File.open('app/assets/images/AcuteHemorrhagicOedemaOfInfancy.jpg'), filename: 'AcuteHemorrhagicOedemaOfInfancy.jpg')

Question.create!(
  image: "GravesDisease.jpg",
  question: "A patient has arrived with a swollen neck and protruding eyeballs.",
  option0: "Graves' Disease",
  option1: "Thyroid Cancer",
  option2: "Hashimoto's Disease",
  option3: "Radiation Exposure",
  hint: "Also known as toxic diffuse goiter, is an autoimmune disease that affects the thyroid.",
  answer: "Graves' Disease",
  answer_description: "Graves' disease, also known as toxic diffuse goiter, is an autoimmune disease that affects the thyroid. It frequently results in and is the most common cause of hyperthyroidism. It also often results in an enlarged thyroid. Signs and symptoms of hyperthyroidism may include irritability, muscle weakness, sleeping problems, a fast heartbeat, poor tolerance of heat, diarrhea and unintentional weight loss."
).imagestorage.attach(io: File.open('app/assets/images/GravesDisease.jpg'), filename: 'GravesDisease.jpg')

p "Created #{Question.count} questions"