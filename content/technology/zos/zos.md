![](img/zos22.png)

# Zero-OS

![](img/zero_os_overview.jpg)

## ZOS compute storage overview

![](img/zos_overview_compute_storage.jpg)

## ZOS network overview

![](img/zos_network_overview.jpg)


### Imagine an operating system with the following benefits

- upto 10x more efficient for certain workloads (e.g. storage)
- no install required
- all files are deduped for the VM's, containers and the ZOS itself, no more data duplicated filesystems
- the hacking footprint is super small, which leads to much safer systems
    - every file is fingerprinted and gets checked at launch time of an application
    - there is no shell or server interface on the operating system
    - the networks are end2end encrypted between all Nodes
- there is the possibility to completely disconnect the compute/storage from the network service part which means hackers have a lot less chance to get to the data
- a smart contract for IT layer allows groups of people to deploy IT workloads with concensus and full control
- all workloads which can run on linux can run on Zero-OS but in a much more controlled, private and safe way

> ThreeFold has created an operating system from scratch, we used the Linux kernel and its components and then build further on it, we have been able to achieve all the above benefits.

## The requirements for our TFGrid based on Zero OS are:

- **Autonomy**: TF Grid needs to create compute, storage and networking capacity everywhere. We could not rely on a remote (or a local) maintenance of the operating system by owners or operating system administrators
- **Simplicity**: An operating system should be simple, able to exist anywhere, for anyone, and be good for the planet
- **Stateless**: In a grid (peer2peer) set up, the sum of the components is providing a stable basis for single elements to fail and not bring the whole system down. Therefore, it is necessary for single elements to be stateless, and the state needs to be stored within the grid.



