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