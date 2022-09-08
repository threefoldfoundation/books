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
