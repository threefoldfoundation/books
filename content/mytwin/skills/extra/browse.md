<div style="text-align: center;">

![](img/search.png)

</div>

## My Private Safe Browser

Browsing the internet present risks. There are many sites which have malicious codes embedded in what look like harmless web pages. These malicious contents get uploaded to your browser and might trick you in agreeing malicious codes in your local browser or you local machine. This is a fairly common practice and people are being tricked into providing information of access to others which they should not.

The Surf Safe option of the twin provides a virtual browser on the twin that browses the internet on behalf off the person who operates the twin.

```mermaid
graph RL
    subgraph Person A
    PERSONA(Browser A)
    end

    Internet
    PERSONA .-> Internet

    subgraph Wesite
    WEB(Any website)
    end
    
    Internet .-> WEB

    WEB --> Internet
    Internet --> PERSONA
```

In order to make this safe, the Twin can perform the browsing activities and send the rendered screen(s) back to the person that is browsing as a stream, much like a netflix stream comes to the browser.

```mermaid
graph RL
    subgraph Person A
        PERSONA(Browser A)
        TWINA(Twin A)
    end
    PERSONA .-> TWINA
    subgraph Internet
        NETWORK(Internet)
    end

    TWINA .-> NETWORK

    subgraph Wesite
    WEB(Any website)
    end
    
    NETWORK .-> WEB

    WEB --> NETWORK
    NETWORK --> TWINA
    TWINA --> PERSONA
```

> TODO:

```mermaid
graph LR
    
    subgraph Individual A
    INDIVIDUALA(Person A)
    INDIVIDUALA .->|browser| TWINA
    TWINA -->|browser| INDIVIDUALA
    end
    TWINA(Twin A) .->|secure network| TWINB(Twin B)
    subgraph Individual B
    TWINB .->|browser| INDIVIDUALB
    INDIVIDUALB(Person B) -->|Browser| TWINB
    TWINB -->|secure network| TWINA
    end
```

```

```

