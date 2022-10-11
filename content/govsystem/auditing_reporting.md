# Auditing and Reporting

All transactions as executed on the digital backbone get registered on a quantum safe storage system and the proofs on a blockchain system.

Strongly authenticated government users can access a dashboard web interface to consult the Digital Backbone Dashboard.

```mermaid
graph TB

    subgraph GOV[Government]
        Gov1[Government User] --> Search
        Gov2[Government Systems]
        Gov1 --> Gov2
    end 

    subgraph BC[ThreeFold Blockchain]
        Validator6 ---|upto 99 validators| Validator1
        Validator1 --- Validator2
        Validator2 --- Validator3
        Validator3 --- Validator4
        Validator4 --- Validator5
        Validator5 --- Validator6
    end

    subgraph DB[ThreeFold Quantum Safe Storage System]
        DB5 --- DB1[DB Storage System 1]
        DB1 --- DB2
        DB2 --- DB3
        DB3 --- DB4
        DB4 --- DB5
    end


    subgraph Auditing[Audit Monitor Cluster]
        Monitor[Monitoring]
        Monitor --> Audit[Auditing Engine]
        Reporting[Reporting] --- Audit
        Search[Dashboard] -->Audit
        Audit --> DB1
        Audit --> Validator1
        Reporting --> Gov2
    end

```

## Information Available To Government

- All registered companies & digital nomads.
- Payments as done of digital nomads towards the system.
- Outstanding invoices.
- If any tax is Due.
- Key Performance Metrics e.g. nr of users, growth over last months, average spending, ... 
