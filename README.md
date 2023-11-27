# Workstation Build Playbooks

This repo contains playbooks and roles to create Fedora 39 workstations using OpenShift Virtualization.

## Installing required collections
Run this prior to running any of the playbooks:
```bash
python3 -m pip install kubernetes --user
```

## Building Fedora Workstation Image

The default Fedora "cloud image" doesn't have a GUI.
The `create_image.yml` playbook can be used to create a customised image and upload it to OpenShift.

Building the image has the following requirements:
- `oc` client is installed
- `virtctl` client is installed
- You are logged in to the OpenShift cluster

Building the image:
```bash
ansible-playbook create_image.yml
```

## Building workstations

Ensure you have the `oc` client installed and are logged in to the cluster.

Running the playbook:
```bash
ansible-playbook playbook.yml -kK
```

## Rebuilding a workstation

Delete the workstation you want to rebuild (e.g. wks1.dev.lab.local):
```
oc project workstations
oc delete vm wks1
```

Run the playbook with a "limit" to the required host. Hit enter twice to skip the DNS update:
```
ansible-playbook playbook.yml -l wks1.dev.lab.local
```
