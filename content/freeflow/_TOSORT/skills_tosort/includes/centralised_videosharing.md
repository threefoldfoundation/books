```mermaid
graph LR
    VIDEOPLATFORM .-> INDIVIDUALA
    VIDEOPLATFORM .-> INDIVIDUALB
    VIDEOPLATFORM .-> INDIVIDUALC
    VIDEOPLATFORM .-> INDIVIDUALD
    
    subgraph Class A
    INDIVIDUALA(Student A)
    INDIVIDUALB(Student B)
    INDIVIDUALH(Student ...)
    INDIVIDUALI(Student N)
    end
    
    VIDEOPLATFORM(central video sharing platform)
    
    subgraph Class B
    INDIVIDUALC(Student 1)
    INDIVIDUALD(Student 2)
    INDIVIDUALJ(Student ...)
    INDIVIDUALK(Student N)
    end



    VIDEOPLATFORM .-> INDIVIDUALH
    VIDEOPLATFORM .-> INDIVIDUALI
    VIDEOPLATFORM .-> INDIVIDUALJ
    VIDEOPLATFORM .-> INDIVIDUALK

```