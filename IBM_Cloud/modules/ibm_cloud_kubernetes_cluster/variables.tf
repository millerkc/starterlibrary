
variable "org" {
  description = "Your IBM Cloud org name."
}

variable "space" {
  description = "Your IBM Cloud space name."
}

variable "cluster_name" {
  description = "The base name for the cluster."
}

variable "region" {
  description = "The IBM Cloud region where you want to deploy your cluster."
}

variable "datacenter" {
  description = "The data center for the cluster, You can get the list with by running bluemix cs locations."
}

variable "machine_type" {
  description = "The CPU cores, memory, network, and speed. You can get a list for a given location by running bluemix cs machine-types <location>."
}

variable "isolation" {
  default = "public"
}

variable "private_vlan_id" {
  description = "Virtual network that allows private communication between worker nodes in this cluster. Can be retrieved by running bx cs vlans <location>."
}

variable "public_vlan_id" {
  description = "Virtual network that allows secured communication between the worker nodes and the IBM-managed master node. Can be retrieved by running bx cs vlans <location>."
}

variable "subnet_id" {
  type = "list"
  description = "The portable subnet to use for cluster. A list of available subnets can be retrieved by running bx cs subnets."
}

variable "workers" {
  type = "list",
  default = [
    [],
    [ {name = "worker-1", action = "add"} ],
    [ {name = "worker-1", action = "add"}, {name = "worker-2", action = "add"} ],
    [ {name = "worker-1", action = "add"}, {name = "worker-2", action = "add"}, {name = "worker-3", action = "add"} ],
    [ {name = "worker-1", action = "add"}, {name = "worker-2", action = "add"}, {name = "worker-3", action = "add"}, {name = "worker-4", action = "add"} ],
    [ {name = "worker-1", action = "add"}, {name = "worker-2", action = "add"}, {name = "worker-3", action = "add"}, {name = "worker-4", action = "add"}, {name = "worker-5", action = "add"} ],
    [ {name = "worker-1", action = "add"}, {name = "worker-2", action = "add"}, {name = "worker-3", action = "add"}, {name = "worker-4", action = "add"}, {name = "worker-5", action = "add"}, {name = "worker-6"} ],
    [ {name = "worker-1", action = "add"}, {name = "worker-2", action = "add"}, {name = "worker-3", action = "add"}, {name = "worker-4", action = "add"}, {name = "worker-5", action = "add"}, {name = "worker-6"}, {name = "worker-7", action = "add"} ],
    [ {name = "worker-1", action = "add"}, {name = "worker-2", action = "add"}, {name = "worker-3", action = "add"}, {name = "worker-4", action = "add"}, {name = "worker-5", action = "add"}, {name = "worker-6"}, {name = "worker-7", action = "add"}, {name = "worker-8", action = "add"} ],
    [ {name = "worker-1", action = "add"}, {name = "worker-2", action = "add"}, {name = "worker-3", action = "add"}, {name = "worker-4", action = "add"}, {name = "worker-5", action = "add"}, {name = "worker-6"}, {name = "worker-7", action = "add"}, {name = "worker-8", action = "add"}, {name = "worker-9", action = "add"} ],
    [ {name = "worker-1", action = "add"}, {name = "worker-2", action = "add"}, {name = "worker-3", action = "add"}, {name = "worker-4", action = "add"}, {name = "worker-5", action = "add"}, {name = "worker-6"}, {name = "worker-7", action = "add"}, {name = "worker-8", action = "add"}, {name = "worker-9", action = "add"}, {name = "worker-10", action = "add"} ]
  ]
}

variable "num_workers" {
  description = "The number of workers to be deployed in the cluster."
}
