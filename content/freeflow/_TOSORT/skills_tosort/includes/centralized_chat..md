```mermaid
graph LR
    
    subgraph Individual A
    INDIVIDUALA(Person A)
    end
    INDIVIDUALA .->|browser| MESSAGINGA
    MESSAGINGA -->|browser| INDIVIDUALA
    subgraph Messaging provider
    MESSAGINGA(messaging platform)
    end
    INDIVIDUALB(Person B) -->|browser| MESSAGINGA
    subgraph Individual B
    MESSAGINGA .->|browser| INDIVIDUALB
    end
```