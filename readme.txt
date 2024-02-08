Gray Team Ansible Scripts

PLAYBOOKS
---
Create Instances - Create new instances inside openstack
Usage: ansible-playbook -i <inventory> create_instances.yml

Required Arguments:
> image: 	image to use to create instance
> ssh_key: 	SSH key to use when creating the instance. Will create a new key using the control node's key if not in openstack
> network_id: 	Network to attach the new control node to
> windows: 	( true or false ) is the image windows based. Required for windows instances, default false

Optional Arguments:
> flavor:		flavor of image, default small
> boot_from_volume:	size of the boot volume, default 100

Uses:
- create_ssh_key Role
- create_instance Role

---
Connect Instances - Distribute SSH keys across hosts ( Linux only )
Usage: ansible-playbook -i <inventory> connect_hosts.yml
	NOTE: inventory file should contain ONLY hosts to be connected

Required Arguments:
> windows: 	( true or false ) is the image windows based. Required for windows, default false

Uses:
- create_ssh_key Role

