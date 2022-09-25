<div style="text-align: center;">

![office tool](img/file.png)

</div>

## Office Tools

The internet offers a number of office suites that you can use as a service.  Microsoft 365, Google Doc are the marketleaders and then there are a number of alternatives in local markets or in the oupen source community.

All office tools are provided in a centralised manner which means that all application and data processing activities happen in a large central datacenters and also data storage is done in that same datacente.

```mermaid
graph RL
    subgraph Location B
        subgraph Individual B
            INDIVIDUALB(Individual B)
        end
        subgraph Individual A
            INDIVIDUALA(Individual A)
        end 
    end

    INDIVIDUALA .->|browser| OFFICETOOLA
    OFFICETOOLA -->|browser| INDIVIDUALA

    INDIVIDUALB .->|browser| OFFICETOOLA
    OFFICETOOLA -->|browser| INDIVIDUALB

    subgraph Location A
        subgraph Office Tool Provider
            OFFICETOOLA(Office Tool Platform)
            DATASTORE(Data Storage)
            OFFICETOOLA --> DATASTORE
            DATASTORE --> OFFICETOOLA
        end
    end
```

Although functionally this setup provides good co-working capabilities we see that both co-workers are using a central facility and the data is stored in that serivce provides datacenter.  This is how most online services work and most online service provider exist in the US, Europe and Asia.  This present challenges with regards to data ownership, sovereignty and all sort of other legal challenges.

Office tools can be deployed locally if and when there is a digital infrastucture that can process and store data.  The Twin technology allows the office tools to be run in country, owned by the individual or company and therefore all the names challenges and legal complexity fade.

The principle of doing it that way would look as follows:

```mermaid
graph RL

    subgraph Location A
        INDIVIDUALA(Individual A)
        subgraph Twin A
            OFFICETOOL(Office Capability)
            DATASTORE(Data Storage)
            OFFICETOOL --> DATASTORE
            DATASTORE --> OFFICETOOL 
        end
        INDIVIDUALA .->|browser| OFFICETOOL
        OFFICETOOL -->|browser| INDIVIDUALA

    end

    subgraph Location B
        INDIVIDUALB(Individual B)
    end 
        INDIVIDUALB .->|browser| OFFICETOOL
        OFFICETOOL -->|browser| INDIVIDUALB
   
    subgraph Location C
        INDIVIDUALC(Individual C)
    end 
        INDIVIDUALC .->|browser| OFFICETOOL
        OFFICETOOL -->|browser| INDIVIDUALC

    subgraph Location ...
        INDIVIDUALD(Individual ...)
    end 
        INDIVIDUALD .->|browser| OFFICETOOL
        OFFICETOOL -->|browser| INDIVIDUALD
```

This way, person A is providing the Office tool from his twin and invites other people to cooperate in this office tool. The Twin can run anywhere (as determined by the operator, person A).  With this priciple we can create individuals or companies that operate and own their own office tool and datastorage platform.

Screenshots of the office application capabilities:

### Settings
![onlyoffice_settings](img/onlyoffice_settings.png)
### Document
![onlyoffice_doc](img/onlyoffice_doc.png)
### Spreadsheet
![onlyoffice_calc](img/onlyoffice_calc.png)
### Presentation
![onlyoffice_present](img/onlyoffice_present.png)

