
![ ](../advanced/img/terraform_.png)

## VM Deployment

```terraform
terraform {
  required_providers {
    grid = {
      source = "threefoldtech/grid"
    }
  }
}

provider "grid" {
    mnemonics = "FROM THE CREATE TWIN STEP" 
    network = "dev" # or test to use testnet
}

resource "grid_network" "net1" {
    nodes = [2, 4]
    ip_range = "10.1.0.0/16"
    name = "network"
    description = "newer network"
    add_wg_access = true
}
resource "grid_deployment" "d1" {
  node = 2
  network_name = grid_network.net1.name
  ip_range = lookup(grid_network.net1.nodes_ip_range, 2, "")
  vms {
    name = "vm1"
    flist = "https://hub.grid.tf/tf-official-apps/base:latest.flist"
    cpu = 1
    publicip = true
    memory = 1024
    entrypoint = "/sbin/zinit init"
    env_vars = {
      SSH_KEY ="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeq1MFCQOv3OCLO1HxdQl8V0CxAwt5AzdsNOL91wmHiG9ocgnq2yipv7qz+uCS0AdyOSzB9umyLcOZl2apnuyzSOd+2k6Cj9ipkgVx4nx4q5W1xt4MWIwKPfbfBA9gDMVpaGYpT6ZEv2ykFPnjG0obXzIjAaOsRthawuEF8bPZku1yi83SDtpU7I0pLOl3oifuwPpXTAVkK6GabSfbCJQWBDSYXXM20eRcAhIMmt79zo78FNItHmWpfPxPTWlYW02f7vVxTN/LUeRFoaNXXY+cuPxmcmXp912kW0vhK9IvWXqGAEuSycUOwync/yj+8f7dRU7upFGqd6bXUh67iMl7 ahmed@ahmedheaven"
    }
  }
  vms {
    name = "anothervm"
    flist = "https://hub.grid.tf/tf-official-apps/base:latest.flist"
    cpu = 1
    memory = 1024
    entrypoint = "/sbin/zinit init"
    env_vars = {
      SSH_KEY ="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeq1MFCQOv3OCLO1HxdQl8V0CxAwt5AzdsNOL91wmHiG9ocgnq2yipv7qz+uCS0AdyOSzB9umyLcOZl2apnuyzSOd+2k6Cj9ipkgVx4nx4q5W1xt4MWIwKPfbfBA9gDMVpaGYpT6ZEv2ykFPnjG0obXzIjAaOsRthawuEF8bPZku1yi83SDtpU7I0pLOl3oifuwPpXTAVkK6GabSfbCJQWBDSYXXM20eRcAhIMmt79zo78FNItHmWpfPxPTWlYW02f7vVxTN/LUeRFoaNXXY+cuPxmcmXp912kW0vhK9IvWXqGAEuSycUOwync/yj+8f7dRU7upFGqd6bXUh67iMl7 ahmed@ahmedheaven"
    }
  }
}
output "wg_config" {
    value = grid_network.net1.access_wg_config
}
output "node1_vm1_ip" {
    value = grid_deployment.d1.vms[0].ip
}
output "node1_vm2_ip" {
    value = grid_deployment.d1.vms[1].ip
}
output "public_ip" {
    value = grid_deployment.d1.vms[0].computedip
}


```


### describing the overlay network for the project

```terraform
resource "grid_network" "net1" {
    nodes = [2, 4]
    ip_range = "10.1.0.0/16"
    name = "network"
    description = "some network"
    add_wg_access = true
}
```
We tell terraform we will have a network spanning two nodes `having the node IDs 2 and 4` using the IP Range `10.1.0.0/16` and add wireguard access for this network

### describing the deployment


```terraform
resource "grid_deployment" "d1" {
  node = 2
  network_name = grid_network.net1.name
  ip_range = lookup(grid_network.net1.nodes_ip_range, 2, "")
  vms {
    name = "vm1"
    flist = "https://hub.grid.tf/tf-official-apps/base:latest.flist"
    cpu = 1
    publicip = true
    memory = 1024
    entrypoint = "/sbin/zinit init"
    env_vars = {
      SSH_KEY ="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeq1MFCQOv3OCLO1HxdQl8V0CxAwt5AzdsNOL91wmHiG9ocgnq2yipv7qz+uCS0AdyOSzB9umyLcOZl2apnuyzSOd+2k6Cj9ipkgVx4nx4q5W1xt4MWIwKPfbfBA9gDMVpaGYpT6ZEv2ykFPnjG0obXzIjAaOsRthawuEF8bPZku1yi83SDtpU7I0pLOl3oifuwPpXTAVkK6GabSfbCJQWBDSYXXM20eRcAhIMmt79zo78FNItHmWpfPxPTWlYW02f7vVxTN/LUeRFoaNXXY+cuPxmcmXp912kW0vhK9IvWXqGAEuSycUOwync/yj+8f7dRU7upFGqd6bXUh67iMl7 ahmed@ahmedheaven"
    }
  }
  vms {
    name = "anothervm"
    flist = "https://hub.grid.tf/tf-official-apps/base:latest.flist"
    cpu = 1
    memory = 1024
    entrypoint = "/sbin/zinit init"
    env_vars = {
      SSH_KEY ="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeq1MFCQOv3OCLO1HxdQl8V0CxAwt5AzdsNOL91wmHiG9ocgnq2yipv7qz+uCS0AdyOSzB9umyLcOZl2apnuyzSOd+2k6Cj9ipkgVx4nx4q5W1xt4MWIwKPfbfBA9gDMVpaGYpT6ZEv2ykFPnjG0obXzIjAaOsRthawuEF8bPZku1yi83SDtpU7I0pLOl3oifuwPpXTAVkK6GabSfbCJQWBDSYXXM20eRcAhIMmt79zo78FNItHmWpfPxPTWlYW02f7vVxTN/LUeRFoaNXXY+cuPxmcmXp912kW0vhK9IvWXqGAEuSycUOwync/yj+8f7dRU7upFGqd6bXUh67iMl7 ahmed@ahmedheaven"
    }
  }
}
```

It's bit long for sure but let's try to dissect it a bit 

```terraform
  node = 2
  network_name = grid_network.net1.name
  ip_range = lookup(grid_network.net1.nodes_ip_range, 2, "")
```

- `node=2` means this deployment will happen on node with id `2`. Please note the choice of the node is completely up to the user at this point. They need to do the capacity planning. Check [Exploring Capacity](../../dashboard/explorer/explorer_home.md) to know which nodes fits your deployment criteria.
- `network_name` which network to deploy our project on, and here  we choose the `name` of network `net1`
- `ip_range` here we [lookup](https://www.terraform.io/docs/language/functions/lookup.html) the iprange of node `2` and initially load it with `""`

> Advannced note: Direct map access fails during the planning if the key doesn't exist which happens in cases like adding a node to the network and a new deployment on this node. So it's replaced with this to make a default empty value to pass the planning validation and it's validated anyway inside the plugin.

## Which flists to use

see [list of flists](../../manual3_iac/grid3_supported_flists.md)


## remark multiple VMs 

in terraform you can define items of a list like the following

```
listname {

}
listname {

}
```
So to add a VM 

```terraform
  vms {
    name = "vm1"
    flist = "https://hub.grid.tf/tf-official-apps/base:latest.flist"
    cpu = 1
    publicip = true
    memory = 1024
    entrypoint = "/sbin/zinit init"
    env_vars = {
      SSH_KEY ="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeq1MFCQOv3OCLO1HxdQl8V0CxAwt5AzdsNOL91wmHiG9ocgnq2yipv7qz+uCS0AdyOSzB9umyLcOZl2apnuyzSOd+2k6Cj9ipkgVx4nx4q5W1xt4MWIwKPfbfBA9gDMVpaGYpT6ZEv2ykFPnjG0obXzIjAaOsRthawuEF8bPZku1yi83SDtpU7I0pLOl3oifuwPpXTAVkK6GabSfbCJQWBDSYXXM20eRcAhIMmt79zo78FNItHmWpfPxPTWlYW02f7vVxTN/LUeRFoaNXXY+cuPxmcmXp912kW0vhK9IvWXqGAEuSycUOwync/yj+8f7dRU7upFGqd6bXUh67iMl7 ahmed@ahmedheaven"
    }
  }
```

- We give it a name within our deployment `vm1`
- `flist` is used to  define the [flist](threefold:zos_fs) to run within the VM. Check the [supported flists](grid3_supported_flists)
- `cpu` and `memory` are used to define the cpu and memory
- `publicip` is usued to define if it requires a public IP or not
- `entrypoint` is used define the entrypoint which in most of the cases in `/sbin/zinit init`, but in case of flists based on vms it can be specific to each flist
- `env_vars` are used to define te environment variables, in this example we define `SSH_KEY` to authorize me accessing the machine

Here we say we will have this deployment on node with `twin ID 2` using the overlay network defined from before `grid_network.net1.name` and use the ip range allocated to that specific node `2`

The file describes only the desired state which is `a deployment of two VMs and their specifications in terms of cpu and memory, and some environment variables e.g sshkey to ssh into the machine`



## Reference

A complete list of VM workload parameters can be found [here](https://github.com/threefoldtech/terraform-provider-grid/blob/development/docs/resources/deployment.md#nested-schema-for-vms).

```
terraform {
  required_providers {
    grid = {
      source = "threefoldtech/grid"
    }
  }
}

provider "grid" {
}

resource "grid_network" "net1" {
    nodes = [8]
    ip_range = "10.1.0.0/16"
    name = "network"
    description = "newer network"
    add_wg_access = true
}
resource "grid_deployment" "d1" {
  node = 8
  network_name = grid_network.net1.name
  ip_range = lookup(grid_network.net1.nodes_ip_range, 8, "")
  vms {
    name = "vm1"
    flist = "https://hub.grid.tf/tf-official-apps/base:latest.flist"
    cpu = 2 
    publicip = true
    memory = 1024
    entrypoint = "/sbin/zinit init"
    env_vars = {
      SSH_KEY = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCtCuUUCZGLZ4NoihAiUK8K0kSoTR1WgIaLQKqMdQ/99eocMLqJgQMRIp8lueFG7SpcgXVRzln8KNKZX1Hm8lcrXICr3dnTW/0bpEnF4QOGLYZ/qTLF5WmoCgKyJ6WO96GjWJBsZPads+RD0WeiijV7jj29lALsMAI8CuOH0pcYUwWsRX/I1z2goMPNRY+PBjknMYFXEqizfUXqUnpzF3w/bKe8f3gcrmOm/Dxh1nHceJDW52TJL/sPcl6oWnHZ3fY4meTiAS5NZglyBF5oKD463GJnMt/rQ1gDNl8E4jSJUArN7GBJntTYxFoFo6zxB1OsSPr/7zLfPG420+9saBu9yN1O9DlSwn1ZX+Jg0k7VFbUpKObaCKRmkKfLiXJdxkKFH/+qBoCCnM5hfYxAKAyQ3YCCP/j9wJMBkbvE1QJMuuoeptNIvSQW6WgwBfKIK0shsmhK2TDdk0AHEnzxPSkVGV92jygSLeZ4ur/MZqWDx/b+gACj65M3Y7tzSpsR76M= omar@omar-Predator-PT315-52"
    }
    planetary = true
  }
  vms {
    name = "anothervm"
    flist = "https://hub.grid.tf/tf-official-apps/base:latest.flist"
    cpu = 1
    memory = 1024
    entrypoint = "/sbin/zinit init"
    env_vars = {
      SSH_KEY = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCtCuUUCZGLZ4NoihAiUK8K0kSoTR1WgIaLQKqMdQ/99eocMLqJgQMRIp8lueFG7SpcgXVRzln8KNKZX1Hm8lcrXICr3dnTW/0bpEnF4QOGLYZ/qTLF5WmoCgKyJ6WO96GjWJBsZPads+RD0WeiijV7jj29lALsMAI8CuOH0pcYUwWsRX/I1z2goMPNRY+PBjknMYFXEqizfUXqUnpzF3w/bKe8f3gcrmOm/Dxh1nHceJDW52TJL/sPcl6oWnHZ3fY4meTiAS5NZglyBF5oKD463GJnMt/rQ1gDNl8E4jSJUArN7GBJntTYxFoFo6zxB1OsSPr/7zLfPG420+9saBu9yN1O9DlSwn1ZX+Jg0k7VFbUpKObaCKRmkKfLiXJdxkKFH/+qBoCCnM5hfYxAKAyQ3YCCP/j9wJMBkbvE1QJMuuoeptNIvSQW6WgwBfKIK0shsmhK2TDdk0AHEnzxPSkVGV92jygSLeZ4ur/MZqWDx/b+gACj65M3Y7tzSpsR76M= omar@omar-Predator-PT315-52"
    }
  }
}
output "wg_config" {
    value = grid_network.net1.access_wg_config
}
output "node1_zmachine1_ip" {
    value = grid_deployment.d1.vms[0].ip
}
output "node1_zmachine2_ip" {
    value = grid_deployment.d1.vms[1].ip
}
output "public_ip" {
    value = grid_deployment.d1.vms[0].computedip
}

output "ygg_ip" {
    value = grid_deployment.d1.vms[0].ygg_ip
}
```

