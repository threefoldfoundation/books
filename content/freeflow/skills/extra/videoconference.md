
![comnunication tool video](img/camera.png)


## Communication tool: Video

A truly peer to peer video chat experience starting from your digital twin to your guests', without stopping by a data center in between. Of course, free.

Current world video conferencing services use service provider and centralized software installations to present services to businesses and consumers.  Take for example to users in Zanzibar that wish to communicate through zoom (or google meet, or Microsoft Teams, principle stays the same).  The will connect from their laptops/phones to a centralized service and the traffic will be routed from both of their devices to a centralized service datacenter far away.

In principle this looks like


```mermaid
graph LR
    
    subgraph Individual A
    INDIVIDUALA(Person A)
    end
    INDIVIDUALA .->|browser| MESSAGINGA
    MESSAGINGA -->|browser| INDIVIDUALA
    subgraph Video service provider
    MESSAGINGA(Video service platform)
    end
    INDIVIDUALB(Person B) -->|browser| MESSAGINGA
    subgraph Individual B
    MESSAGINGA .->|browser| INDIVIDUALB
    end
```


And if we expand this to a world map it would look somethingg like this:

<!--
mermaid source in: ./includes/centralized_video.md
-->

<div style="text-align: left;">

![alt text](img/videoconference_central-1.png))

</div>

>TODO: pictures are too small, need to make new ones, also revisit text & flow

This does not lead to create the best experience and over all, it is very wasteful with a number of (scarce) resources.

The solution to this problem is to have a video conference solution that works peer to peer.

<!--
mermaid source in: ./includes/private_video.md
-->

<div style="text-align: center;">

![](img/videoconference_decentral.png)

</div>


```mermaid
graph LR
    
    subgraph Individual A
    INDIVIDUALA(Person A)
    INDIVIDUALA .->|browser| TWINA
    TWINA -->|browser| INDIVIDUALA
    end
    TWINA(Twin A) .->|Browser| INDIVIDUALB
    TWINA(Twin A) .->|Browser| INDIVIDUALC
    TWINA(Twin A) .->|Browser| INDIVIDUALD
    subgraph Individual B
    INDIVIDUALB(Person B) -->|Browser| TWINA
    end
    subgraph Individual C
    INDIVIDUALC(Person C) -->|Browser| TWINA
    end
    subgraph Individual D
    INDIVIDUALD(Person D) -->|Browser| TWINA
    end

```

>TODO: not ok

If we build a video conferencing system that follows this principle we can be much more effective.  Back to the example earlier the two people in Zanzibar would be able to communicate as follows:

<div style="text-align: center;">

![](img/videoconference_central-2.png)

</div>

### 

#### Video Conference features

- 1. 
- 2. 
- 3. 

>TODO: 