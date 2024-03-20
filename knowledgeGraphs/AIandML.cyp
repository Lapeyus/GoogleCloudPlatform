MERGE (AIandML)-[:SERVICE_OF]->(GCP)

MERGE (
    vertexAI:AIandML {
        name: "Vertex AI Platform"
    }
)

MERGE (
    generativeAI:AIandML:Service:AIandML {
        name: "Generative AI on Vertex AI"
    }
)
MERGE (
    vertexAISearch:AIandML:Service:AIandML {
        name: "Vertex AI Search and Conversation",
        description: "Generative AI apps for enterprise search and conversational AI."
    }
)
MERGE (
    automl:AIandML:Service:AIandML {
        name: "AutoML",
        description: "Custom machine learning model training and development."
    }
)
MERGE (
    dialogflow:AIandML:Service:AIandML {
        name: "Dialogflow",
        description: "Conversation applications and systems development suite for virtual agents."
    }
)
MERGE (
    mediaTranslation:AIandML:Service:AIandML {
        name: "Media Translation",
        description: "Add dynamic audio translation directly to your content and applications."
    }
)
MERGE (
    naturalLanguageAI:AIandML:Service:AIandML {
        name: "Natural Language AI",
        description: "Sentiment analysis and classification of unstructured text."
    }
)
MERGE (
    recommendationsAI:AIandML:Service:AIandML {
        name: "Recommendations AI",
        description: "Deliver highly personalized product recommendations at scale."
    }
)
MERGE (
    speechToText:AIandML:Service:AIandML {
        name: "Speech-to-Text",
        description: "Speech recognition and transcription supporting 125 languages."
    }
)
MERGE (
    textToSpeech:AIandML:Service:AIandML {
        name: "Text-to-Speech",
        description: "Speech synthesis in 220+ voices and 40+ languages."
    }
)
MERGE (
    translationAI:AIandML:Service:AIandML {
        name: "Translation AI",
        description: "Language detection,translation, and glossary support."
    }
)
MERGE (
    videoAI:AIandML:Service:AIandML {
        name: "Video AI",
        description: "Video classification and recognition using machine learning."
    }
)
MERGE (
    visionAI:AIandML:Service:AIandML {
        name: "Vision AI",
        description: "Custom and pre-trained models to detect emotion,text, more."
    }
)
MERGE (
    vertexAINotebooks:AIandML:Service:AIandML {
        name: "Vertex AI Notebooks",
        description: "A single interface for your data, analytics, and machine learning workflow."
    }
)
MERGE (
    vertexExplainableAI:AIandML:Service:AIandML {
        name: "Vertex Explainable AI",
        description: "Tools and frameworks to understand and interpret your machine learning models."
    }
)
MERGE (
    aiInfrastructure:Category:AIandML {
        name: "AI Infrastructure",
        description: "Options for every business to train deep learning and ML models cost-effectively."
    }
)
MERGE (
    cloudGPUs:aiInfrastructure:AIandML:Service {
        name: "Cloud GPUs",
        description: "GPUs for machine learning, scientific computing, and 3D visualization."
    }
)
MERGE (
    cloudTPUs:aiInfrastructure:AIandML:Service {
        name: "Cloud TPUs",
        description: "Tensor processing units for machine learning applications."
    }
)
MERGE (
    deepLearningVM:aiInfrastructure:AIandML:Service {
        name: "Deep Learning VM Image",
        description: "Preconfigured VMs for deep learning applications."
    }
)
MERGE (
    deepLearningContainers:aiInfrastructure:AIandML:Service {
        name: "Deep Learning Containers",
        description: "Preconfigured and optimized containers for deep learning environments."
    }
)
MERGE (
    tensorflowEnterprise:aiInfrastructure:AIandML:Service {
        name: "TensorFlow Enterprise",
        description: "Reliability and performance for AI apps with enterprise-grade support and managed services."
    }
)
MERGE (
    AISolutions:Category:AIandML {
        name: "AI AISolutions",
        description: "AI Solutions for business"
    }
)
MERGE (
    contactCenterAI:AISolutions:AIandML:Service {
        name: "Contact Center AI",
        description: "AI model for speaking with customers and assisting human agents."
    }
)
MERGE (
    documentAI:AIandML:AISolutions:Service {
        name: "Document AI",
        description: "Machine learning and AI to unlock insights from your documents."
    }
)
MERGE (
    intelligentProducts:AISolutions:AIandML:Service {
        name: "Intelligent products(Preview)",
        description: "MERGE engaging product ownership experiences with AI."}
)
MERGE (
    productDiscovery:AISolutions:AIandML:Service {
        name: "Product Discovery",
        description: "Google-quality search and recommendations for retailers' digital properties help increase conversions and reduce search abandonment."
    }
)

MERGE (AIandML)<-[:PART_OF]-(vertexAI)
MERGE (vertexAI)<-[:PART_OF]-(generativeAI)
MERGE (vertexAI)<-[:PART_OF]-(vertexAISearch)
MERGE (vertexAI)<-[:PART_OF]-(automl)
MERGE (vertexAI)<-[:PART_OF]-(dialogflow)
MERGE (vertexAI)<-[:PART_OF]-(mediaTranslation)
MERGE (vertexAI)<-[:PART_OF]-(naturalLanguageAI)
MERGE (vertexAI)<-[:PART_OF]-(recommendationsAI)
MERGE (vertexAI)<-[:PART_OF]-(speechToText)
MERGE (vertexAI)<-[:PART_OF]-(textToSpeech)
MERGE (vertexAI)<-[:PART_OF]-(translationAI)
MERGE (vertexAI)<-[:PART_OF]-(videoAI)
MERGE (vertexAI)<-[:PART_OF]-(visionAI)
MERGE (vertexAI)<-[:PART_OF]-(vertexAINotebooks)
MERGE (vertexAI)<-[:PART_OF]-(vertexExplainableAI)       
MERGE (AIandML)<-[:PART_OF]-(AISolutions)
MERGE (AISolutions)<-[:PART_OF]-(contactCenterAI)
MERGE (AISolutions)<-[:PART_OF]-(documentAI)
MERGE (AISolutions)<-[:PART_OF]-(intelligentProducts)
MERGE (AISolutions)<-[:PART_OF]-(productDiscovery)
MERGE (AIandML)<-[:PART_OF]-(aiInfrastructure)
MERGE (aiInfrastructure)<-[:PART_OF]-(cloudGPUs)
MERGE (aiInfrastructure)<-[:PART_OF]-(cloudTPUs)
MERGE (aiInfrastructure)<-[:PART_OF]-(deepLearningVM)
MERGE (aiInfrastructure)<-[:PART_OF]-(deepLearningContainers)
MERGE (aiInfrastructure)<-[:PART_OF]-(tensorflowEnterprise)
