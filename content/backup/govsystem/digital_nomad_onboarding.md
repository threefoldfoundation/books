# Digital Nomad Onboarding

A digital nomad who wants to become a customer of the OurWorld System will have to do the following

- The user sees the different offerings on a website hosted from Zanzibar 
- The user needs to become a member of our system before he/she can register for the chosen offering
- The user needs to go through the [identity management system](identity.md)
- Once completed, the user can select required products and will get detailed proposal online.
- There is a chat button on the website which the user can use to get help at any point in time.
- The user needs to load his/her wallet with money (to be defined e.g. a Digital USD)
- The user now gets confirmation that company is created and chosen products available

## Process Frontend

```mermaid 
sequenceDiagram
    actor U as User
    participant WS as Digital Nomad Website
    participant I as Identity Management System
    participant NS as Digital Nomad System
    participant BC as Blockchain
    actor A as Agent
    U->>+WS: Learn about project, choose products.
    U->>I: Through website complete registration process
    I->>+A: In case there is doubt, manual verification request
    A->>-U: Do video conference and check authenticity manually
    A->>+I: Inform system about status, OK or NOT
    I->>+BC: Register info in BC, Use private KEY to sign
    U->>+WS: Order the services and products, pay with digital currency
    WS->>+NS: interact with system to make sure right products & services ordered
    NS->>+U: User receives email about ordered products and confirmation about timing
    U->>-A: can at any point in time chat with agent to get help.

```

## Usage of Digital Twin

Each user will receive a digital twin which is living on top of the Local Internet as deployed in Zanzibar.

Check here for more info about [Digital Twin](../web4/architecture_highlevel/web4_digital_twin.md).

A digital twin is used to further work with all services as provided in the Digital Nomad Sandbox.


```mermaid
sequenceDiagram
    actor U as User
    participant NS as Digital Nomad System
    participant DT as ThreeFold Digital Twin
    participant CS as ThreeFold Cloud System
    participant BC as Blockchain
    actor A as Agent
    U->>NS: User ordered his products and got accepted
    U-->BC: User now exists on the blockchain
    NS->>+CS: User gets his own digital twin as provisioned on ThreeFold Grid
    CS->>-DT: Digital Twin is Life
    U->>DT: User can now use digital twin for any further services
    U-->DT: e.g. User can make contractual agreement with other User
    U-->DT: e.g. User can co-invest in a property together with more Users
    U->>A: can at any point in time chat with agent to get help.
```