# Identity System

A user connects to our Identity management system using a web or mobile client.

- The user submits identity which gets stored in the blockchain system.
- The user will submit documents to the system
- The system will process the documents and use multiple identity verification systems to verify identity.
- Once every year the identity will be verified again against a AML = Anti Money Laudry list provider, to see that in mean time the user did not get black or gray listed.
- Once proof of authenticity and verification is positive, the proof is attached cryptographically to the user entry in the database. This allows all future systems to recognize that this user is ok to work with.


## Process

```mermaid 
sequenceDiagram
    actor U as User
    participant I as Identity Management System
    participant BC as Blockchain
    participant KYC as KYC/AML Provider
    actor A as Agent
    U->>+I: Register Identity
    I->>+BC: Register info in BC
    U->>+I: Upload Identity Docs
    I->>+KYC: Verify identity information with KYC/AML
    KYC->>-I: Proof of authenticity and acceptance
    I->>+A: In case there is doubt, manual verification request
    A->>-U: Do video conference and check authenticity manually
    A->>+I: Inform system about status, OK or NOT
    I->>+BC: Register info in BC, Use private KEY to sign
    I->>+U: User receives email about acceptance
    U->>-I: can at any point in time verify identity and status

```

## Requirements

- No User will ever be allowed to do business unless proof of authenticity and identity succeeded
- No-one will be allowed to operate anonymously.
- All transactions as done for any operation by user is logged in the blockchain and connected to the monitoring system.


## Architecture

```mermaid
graph TB

    User --- WS

    subgraph Auditing[Audit Monitor Cluster]
        Monitor[Monitoring]
        Monitor --> Audit[Auditing]
        Monitor --> Reporting[Reporting]
    end

    subgraph BC[ThreeFold Blockchain]
        Validator6 ---|upto 99 validators| Validator1
        Validator1 --- Validator2
        Validator2 --- Validator3
        Validator3 --- Validator4
        Validator4 --- Validator5
        Validator5 --- Validator6
    end

    subgraph IV[Identity Verification]
        KYC1[KYC/AML Provider 1]
        KYC2[KYC/AML Provider 1]
        P2P[Peer Review, Proof of Authenticity]
    end



    subgraph IMS[Identity Management System]
        KYC[KYC, AML Connector] --- MANAGER[Identity Manager]
        KYC --- KYC2
        KYC --- P2P
        BCCC[Blockchain Connector] --- Validator1
        WS[Web Server] --- MANAGER

        MANAGER --> Monitor
        MANAGER --> BCCC
    end    

 

```
