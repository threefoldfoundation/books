# CHI

![](https://library.threefold.me/info/threefold/tfgrid/farming/threefold__grid_new_.png)


CHI is the FreeFlow utility token which is used to reward farmers for making compute, network and storage capacity available as well as to allow users to buy this resource from the FF Network. All of this is being arranged and tracked by the FreeFlow Blockchain called FFChain.

FreeFlow is running as a side chain to ThreeFold and CHI tokens can be exchanged between ThreeFold Tokens (TFT) and CHI.

## CHI is scarce

At start FF sells 5,000 nodes extra (extra compared to existing capacity of ThreeFold grid).

- 5.000 nodes results in 100-150.000.000 CHI over 5 years.
- 5.000 nodes enable +- 250.000 to 500.000 users with their digital life.
- Each user renting a twin needs about 50 CHI per month to do so, this results in the requirement of 300.000.000 CHI per year (if they would hold it per year).
- 1m users buying FFK's (the twins) at these conditions, results in +-1.000.000.000 CHI.
- Clearly there are not enough CHI's which means the CHI price needs to go up as the network grows to compensetate for this requirement.
- As more nodes are added to the network, the more CHI is needed the CHI price will have to go up to compensate for the extra demand.

## Farming Reward Calculation Details

Each FreeFlow node has a certain amount of compute, storage and network resources.

- Compute Capacity (CPU)
- Memory Capacity (RAM)
- Storage Capacity (SSD/HDD)
- Network Capacity (Bandwidth, IP Addresses)
 
The reward is calculated as follows:

> TFT earned per month = 
    CU farmed * CU farming rewards 
    + SU farmed * SU farming rewards
    + NU used * NU farming rewards
    + IPAddr used * IPAddr farming rewards

The reward for above items are linked (pegged) to the USD

| Unit                | USD   | Unit                                  |
| ------------------- | ----- | ------------------------------------- |
| Compute Unit (CU)   | 2.4   | per month                             |
| Storage Unit (SU)   | 1     | per month                             |
| Network Unit (NU)   | 0.03  | per GB transfer (as customers use it) |
| Public IPv4 Address | 0.005 | per IP address, calculated per hour   |


> For the predefined nodes as defined on the "buy node" page the rewards are fixed and described in this manual and expressed in CHI but pegged to USD.


- The rewards get expressed in CHI but are pegged to the USD and registered in the FreeFlow Blockchain (FFChain) at FreeFlow Node registration time in USD. If the CHI vs USD price changes then the amount of CHI will be adjusted in relation to the USD price.
- Rewards are calculated from Resource Units,  see below.
- Rewards for NU and IP Addresses are dynamic
The FFChain tracks capacity utilization and as such the reward can be calculated for the Farmer.
- All Internet capacity farmed is rewarded on a monthly basis but only unlocked after 6 months, in case the farmer removes the node before 5 years the last 6 months of farmed tokens will not be released to farmer but to FreeFlow Treasury.
- Minimum SLA = Service Level Agreement needs to be achieved before CHI can be rewarded.
- The FreeFlow DAO can decide to change the rewards and needs community majority vote for it.



The  Zero-OS and FFChain software translates resource units (CRU, MRU, HRU, SRU) into cloud units (CU, SU) for farming reward calculation.

#### Compute

For farming, 1 CU equals:

- 2 virtual CPUs with a maximum over subscription of 4 CPUs and minimum required memory of 4GB. 
- An over subscription of 4 CPUs remains still gentle as we understand many other providers use more.
- There needs to be at least 50GB SSD per CU, if not there is penalty for nr of CU, reasoning is that otherwise people cannot deploy their VM's or Containers if there would not be minimal SSD.

```python
cu = min((mru - 1) / 4, cru * 4 / 2, sru / 50)
```

- 1 GB of memory is subtracted for the operating system to function.
- please note minimal passmark per CU (with 4GB mem), needs to be 1500 passmark, this is not being checked today but might be done in future. If your chosen CPU has less than 1000 passmark per CU (of 4 GB mem), it could be your final CU's will be lower once that feature is introduced.

#### Storage

For farming, 1 SU equals to:
- 1.2 TB of HD capacity (which can deliver 1 TB of net usable storage) 
- 200 GB of SSD capacity with a buffer of 20%

```python
su = hru / 1200 + sru * 0.8 / 200
```

#### Resource Units

Resource units (RU) are used to measure and convert capacity on the hardware level into cloud units: CU & SU see above.


| Unit Type    | Description                          | Code |
| ------------ | ------------------------------------ | ---- |
| Core Unit    | 1 Logical Core (Hyperthreaded Core)  | CRU  |
| Mem Unit     | 1 GB mem                             | MRU  |
| HD Unit      | 1 GB                                 | HRU  |
| SSD Unit     | 1 GB                                 | SRU  |
| Network Unit | 1 GB of bandwidth transmitted in/out | NRU  |

These are raw capacity resources as measured by the ThreeFold software running on Zero-OS which is the cloud operating system as developped by ThreeFold.

## Important CHI Utilization Remarks

CHI's are needed to use the Internet Capacity as farmed in the FreeFlow Network.

The price for CU,SU and NU capacity is defined by the FreeFlow DAO.

The CHI's used for utilization are distributed as follows

- 10% to FreeFlow Validators
- 10% to ThreeFold Foundation
- 35% gets burned (this is the minimal burn)
- 45% to the FreeFlow DAO Treasury (which can decide to burn or use for promotion or FF network development purposes). DAO is a Decentralized Autonomous Organization.

For deploying the FreeFlow Twin's CU/SU and NU resources are required, the FreeFlow Chain will arrange this energy (CHI) flow in line with above specifications.