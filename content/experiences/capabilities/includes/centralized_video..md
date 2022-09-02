```mermaid
graph LR
    
    subgraph Individual A
    INDIVIDUALA(Person A)
    end
    INDIVIDUALA .->|browser| MESSAGINGA
    MESSAGINGA -->|browser| INDIVIDUALA
    subgraph Video service provider
    MESSAGINGA(Video service platform)
    end
    INDIVIDUALB(Person B) -->|browser| MESSAGINGA
    subgraph Individual B
    MESSAGINGA .->|browser| INDIVIDUALB
    end
```