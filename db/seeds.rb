# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Question.destroy_all

Question.create!([
  {
    "image": "Lymphedema.jpg",
    "question": "A patient has arrived complaining of leg swelling.",
    "option0": "Lymphedema",
    "option1": "Cirrhosis",
    "option2": "Cellulitis",
    "option3": "Deep Vein Thrombosis",
    "hint": "A condition of localized swelling caused by a compromised lymphatic system.",
    "answer": "Lymphedema",
    "answer_description": "Lymphedema, also known as lymphoedema and lymphatic edema, is a condition of localized swelling caused by a compromised lymphatic system. The lymphatic system functions as a critical portion of the body's immune system and returns interstitial fluid to the bloodstream.",
    "image_url": "https://res.cloudinary.com/assessmentapi/image/upload/v1637443945/apiV4/Lymphedema_usmeh0.jpg"
  },
  {

    "image": "Croup.jpg",
    "question": "A parent brings in a child suffering from a breathing problem and coughing that will not stop.",
    "option0": "Croup",
    "option1": "Asthma",
    "option2": "Bronchitis",
    "option3": "Sinusitis",
    "hint": "Also known as laryngotracheobronchitis, is a type of respiratory infection that is usually caused by a virus.",
    "answer": "Croup",
    "answer_description": "Croup, also known as laryngotracheobronchitis, is a type of respiratory infection that is usually caused by a virus. The infection leads to swelling inside the trachea, which interferes with normal breathing and produces the classic symptoms of \"barking\" cough, stridor, and a hoarse voice.",
    "image_url": "https://res.cloudinary.com/assessmentapi/image/upload/v1637443945/apiV4/Croup_bcjgqb.jpg"
  },
  {
    "image": "BlueNevi.jpg",
    "question": "A patient has arrived with a spot of discolored spots.",
    "option0": "Blue Nevi",
    "option1": "Kaposi Sarcoma",
    "option2": "Melanoma",
    "option3": "Radiation Tattoo",
    "hint": "A solitary blue-colored mole that can present at birth or develop later on in life.",
    "answer": "Blue Nevi",
    "answer_description": "The blue nevus is a solitary blue-colored mole that can present at birth or develop later on in life. The blue color, or ceruloderma, is caused by the Tyndall effect when light is preferentially scattering shorter wavelengths by melanin found in the dermis of the skin. The blue nevus can be found on many areas of the body; however, most have been found on the head and neck, sacral area, back of the hands, and feet.",
    "image_url": "https://res.cloudinary.com/assessmentapi/image/upload/v1637443945/apiV4/BlueNevi_cfouod.jpg"
  },
  {
    "image": "AcuteHemorrhagicOedemaOfInfancy.jpg",
    "question": "A parent has arrived with their child who appears to have discoloration of the skin. What is your first impression?", 
    "option0": "Acute Hemorrhagic Oedema Of Infancy",
    "option1": "Purpura",
    "option2": "Bruising",
    "option3": "Mongolian Spots",
    "hint": "This condition is a benign phenomenon although it manifests with fever, large palpable purpuric skin lesions, and edema.",
    "answer": "Acute Hemorrhagic Oedema Of Infancy",
    "answer_description": "Acute Hemorrhagic Edema of Infancy is a small vessel leucocytoclastic vasculitis affecting young infants. It is characterized by large, target-like, macular to purpuric plaques predominantly affecting the face, ear lobes and extremities. Non-pitting edema of the distal extremities and low-grade fever may also be present. Extra-cutaneous involvement is very rare. Although the lesions have a dramatic onset in a twenty-four to forty-eight hour period, usually the child has a non-toxic appearance.",
    "image_url": "https://res.cloudinary.com/assessmentapi/image/upload/v1637443945/apiV4/AcuteHemorrhagicOedemaOfInfancy_thjpm7.jpg"
  },
  {
    "image": "GravesDisease.jpg",
    "question": "A patient has arrived with a swollen neck and protruding eyeballs.",
    "option0": "Graves' Disease",
    "option1": "Thyroid Cancer",
    "option2": "Hashimoto's Disease",
    "option3": "Radiation Exposure",
    "hint": "Also known as toxic diffuse goiter, is an autoimmune disease that affects the thyroid.",
    "answer": "Graves' Disease",
    "answer_description": "Graves' disease, also known as toxic diffuse goiter, is an autoimmune disease that affects the thyroid. It frequently results in and is the most common cause of hyperthyroidism. It also often results in an enlarged thyroid. Signs and symptoms of hyperthyroidism may include irritability, muscle weakness, sleeping problems, a fast heartbeat, poor tolerance of heat, diarrhea and unintentional weight loss.",
    "image_url": "https://res.cloudinary.com/assessmentapi/image/upload/v1637443945/apiV4/GravesDisease_a7boiy.jpg" 
  },
  {
    "image": "Angina.jpg",
    "question": "A patient has arrived with chest pain on the left side.",
    "option0": "Angina",
    "option1": "Heart Failure",
    "option2": "Pneumonia",
    "option3": "Stroke",
    "hint": "A type of chest pain caused by reduced blood flow to the heart.",
    "answer": "Angina",
    "answer_description": "Angina is a type of chest pain caused by reduced blood flow to the heart. Angina, also called angina pectoris, is often described as squeezing, pressure, heaviness, tightness or pain in your chest. Some people with angina symptoms say angina feels like a vise squeezing their chest or a heavy weight lying on their chest. Angina may be a new pain that needs to be checked by a doctor, or recurring pain that goes away with treatment.",
    "image_url": "https://res.cloudinary.com/assessmentapi/image/upload/v1637443945/apiV4/Angina_b6yyt8.jpg"
  },
  {
    "image": "Herpangina.jpg",
    "question": "A child is complaining about swollen throat with a sudden spike in temperature.",
    "option0": "Herpangina",
    "option1": "Canker Sore",
    "option2": "Gum Disease",
    "option3": "Skin Ulcer",
    "hint": "Also called mouth blisters, is a painful mouth infection caused by coxsackieviruses.",
    "answer": "Herpangina",
    "answer_description": "Herpangina, also called mouth blisters, is a painful mouth infection caused by coxsackieviruses. Usually, herpangina is produced by one particular strain of coxsackie virus A, but it can also be caused by coxsackievirus B or echoviruses. Most cases of herpangina occur in the summer, affecting mostly children. However, it occasionally occurs in adolescents and adults.",
    "image_url": "https://res.cloudinary.com/assessmentapi/image/upload/v1637443945/apiV4/Herpangina_uk7k1g.jpg"
  },
  {
    "image": "LymeDisease.jpg",
    "question": "A patient has a rash on their leg that appeared after a camping trip.",
    "option0": "Lyme Disease",
    "option1": "Eczema",
    "option2": "Skin Cancer",
    "option3": "Shingles",
    "hint": "An infectious disease caused by the Borrelia bacterium which is spread by ticks.",
    "answer": "Lyme Disease",
    "answer_description": "Lyme disease, also known as Lyme borreliosis, is an infectious disease caused by the Borrelia bacterium which is spread by ticks. The most common sign of infection is an expanding red rash, known as erythema migrans, that appears at the site of the tick bite about a week after it occurred.",
    "image_url": "https://res.cloudinary.com/assessmentapi/image/upload/v1637443945/apiV4/LymeDisease_sqemsc.jpg"
  },
  {
    "image": "Thrush.jpg",
    "question": "A patient has a redness and burning that is causing problems when eating and swallowing on their tongue.",
    "option0": "Thrush",
    "option1": "Burning Mouth Syndrome",
    "option2": "Lie Bumps",
    "option3": "Allergic Reaction (Mouth)",
    "hint": "A condition in which the fungus Candida albicans accumulates on the lining of your mouth.",
    "answer": "Thrush",
    "answer_description": "Oral thrush — also called oral candidiasis (kan-dih-DIE-uh-sis) — is a condition in which the fungus Candida albicans accumulates on the lining of your mouth. Candida is a normal organism in your mouth, but sometimes it can overgrow and cause symptoms. Oral thrush causes creamy white lesions, usually on your tongue or inner cheeks. Sometimes oral thrush may spread to the roof of your mouth, your gums or tonsils, or the back of your throat.",
    "image_url": "https://res.cloudinary.com/assessmentapi/image/upload/v1637443945/apiV4/Thrush_c9rutt.jpg"
  },
  {
    "image": "Psoriasis.jpg",
    "question": "Your patient arrives complaining of a skin rash.",
    "option0": "Psoriasis",
    "option1": "Seborrheic Dermatitis",
    "option2": "Ringworm",
    "option3": "Jock Itch",
    "hint": "A long-lasting, noncontagious autoimmune disease characterized by raised areas of abnormal skin.",
    "answer": "Psoriasis",
    "answer_description": "Psoriasis is a long-lasting, noncontagious autoimmune disease characterized by raised areas of abnormal skin. These areas are red, or purple on some people with darker skin, dry, itchy, and scaly. Psoriasis varies in severity from small, localized patches to complete body coverage.",
    "image_url": "https://res.cloudinary.com/assessmentapi/image/upload/v1637443945/apiV4/Psoriasis_gmat5l.jpg"
  }
])

p "Created #{Question.count} questions"