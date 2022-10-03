# Twin Architecture

```mermaid
graph TD
    U[YOU as a user] -->|http| A(Your Twin Web Interface)
    A -->|owns| C[[Your Data]]
    A -->|owns| D[[Your Capabilities]]
    A -->|owns| E[[Your Identity]]
    C --- F((Experience <br> e.g.<br>Climate<br>Education))
    D --- F
    E --- F
    C --- G((Experience <br> e.g.<br>Collaboration<br>Work))
    D --- G
    E --- G
    G --- C1[Web Company X]
    F --- C2[Web Company Y]
```

you are sovereign, you can use any web browser to access the capabilities of your twin.

You have many [skills](myskills.md) and can use them to experience your digital life. The web-providers become experience creators in which you can be alive and experiment with your skills.

> Web Companies (or anyone who wants to develop experiences) is working with you to let you use your skills inside their experience, using your tools, data and identity. You truly exist only once and own your digital past and future.

## To Compare: how do I work in the current Web (Web 2)?

```mermaid
graph TD
    U[YOU as a user] -->|http| A(Centralized Application)
    A -->|owns| C[[Your Data]]
    A -->|owns| D[[Your Web Capability<br> = functionality]]
    A -->|owns| E[[Your Identity]]
```

The application provider owns your experience, the experience is the combination of your data on which they develop functionality strictly controlled by their server infrastructure.

```mermaid
graph TD
    U1[User 1] -->|http| A(Centralized Application)
    U2[User 2] -->|http| A(Centralized Application)
    U3[User 3] -->|http| A(Centralized Application)
    U4[User 4] -->|http| A(Centralized Application)
    A -->|owns| C[[Your Data]]
    A -->|owns| D[[Your Web Capability<br> = functionality]]
    A -->|owns| E[[Your Identity]]
```

We all exist many times, for each application we exist, it actually is very messy and leads to manipulation and also complexity. Its not convenient having to use 3 different messaging apps. The current providers don't care about your sovereignity or improving your skills, they care about what they can get from you (money, data..).


```mermaid
graph TD
    U1[User 1] -->A(App 1<br>e.g. facebook)
    U1[User 1] --> B(App 2<br>e.g. linked in)
    U1[User 1] --> C(App 3<br>e.g. airbnb)
    U2[User 2] --> A
    U3[User 3] --> A
    U4[User 4] --> A
    U2[User 2] --> B
    U3[User 3] --> B
    U4[User 4] --> B
    U2[User 2] --> C
    U3[User 3] --> C
    U4[User 4] --> C

```

This is not logical, efficient and for sure not in your best interest.

### To Compare: Blockchain: web 3

Definately a good step in the right direction but not enough.

```mermaid
graph TD
    U1[User 1] -->A(DApp 1)
    U1[User 1] --> B(DApp 2)
    U1[User 1] --> C(DApp 3)
    U2[User 2] --> A
    U3[User 3] --> A
    U4[User 4] --> A
    U2[User 2] --> B
    U3[User 3] --> B
    U4[User 4] --> B
    U2[User 2] --> C
    U3[User 3] --> C
    U4[User 4] --> C
    A --> B11((BC1.1))
    A --> B12((BC1.2))
    A --> B13((BC1.3))
    A --> B14((BC1.X...))
    B --> B21((BC2.1))
    B --> B22((BC2.2))
    B --> B23((BC2.X...))
    C --> B21
    C --> B22
    C --> B23
```

BC stands for BlockChain, so BC1.1 is Blockchain 1 Validator Node 1.

Each DAPP lives on many blockchain nodes, can be thousands. Many dapps live on different blockchain nodes, sometimes on the same. You still exist many times and each Dapp is developed using different technologies and duplicating your digital life which you don't own but now share with others and co-own.

## Twin Communication (web4 base architecture)

This is a very different design, the experience is using your capabilities, but these are yours, not owned nor provided by the web company.


```mermaid
graph TD
    A---|peer2peer<br>local<br>safe|B
    B---|p2p|C
    C---|p2p|A

    U1[User 1] -->|http| A(Your Twin Web Interface)
    U2[User 2] -->|http| B(Your Twin Web Interface)
    U3[User 3] -->|http| C(Your Twin Web Interface)
    subgraph TWIN1[twin 1 private env]
        A[TWIN 1<br>Process]
        A -->|owns| X[[Twin1 Data &<br>Capabilities]]
    end
    subgraph TWIN2[twin 2 private env]
        B[TWIN 2<br>Process]
        B -->|owns| Y[[Twin2 Data &<br>Capabilities]]
    end
    subgraph TWIN3[twin 3 private env]
        C[TWIN 3<br>Process]
        C -->|owns| Z[[Twin3 Data &<br>Capabilities]]
    end

```