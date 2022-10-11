# Digital Nomad and OurWorld Backbone

ThreeFold has developed a capable system which can be used to streamline the way in which we deal with the core services like identity, license approval, company creation, tax registration.

A strong blockchain based backbone is available to host all required services.

This system is used to deploy all available services on.

## High Level Architecture for the Backbone

```mermaid
graph TB

    User[User Web Browser] --> Explorers
    User --> ConsensusEngine1
    User --> money_blockchain

    subgraph Auditing[Audit Monitor Cluster]
        Monitor[Monitoring]
        Monitor --> Audit[Auditing]
        Monitor --> Reporting[Reporting]
    end

    subgraph Digital Currency Ecosystem
        OracleEngine[Oracle For Pricing Digital Currencies] --> Exch2[Financial Institute A]
        OracleEngine --> Exch3[Financial Institute B]     
        OracleEngine --> Exch1[Digital Currency Exchange]
    end

    subgraph TFChainNode1[ThreeFold Blockchain Node]
        Explorers[Blockchain Explorer] --- TFGridDB[Blockchain DB] 
        Explorers --> Validator[Validator Node]
        ConsensusEngine1[Consensus Engine] -->Validator
        ConsensusEngine1 --> TFGridDB
        ConsensusEngine1 --> money_blockchain[Money Blockchain]
        ConsensusEngine1 --> ReputationEngine[Reputation Engine]
        ReputationEngine --> Monitor
        Validator --> Monitor
        ConsensusEngine1 --> OracleEngine
    end

```

The system above is very scalable and can deliver any of the required business and government flows.


## Requirements

- Data can never be lost.
- Every transaction is logged in a blockchain and available to the auditing modules.
- Consensus needs to be achieved between all parties for relevant transactions
- Strong identity is a must, see that section for more info.
