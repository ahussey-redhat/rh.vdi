# rh.vdi.fedora_gui_image role

## Variables
| Name | Default | Required | Description |
| --- | --- | --- | --- |
| fedora_gui_image_qcow_url | https://download.fedoraproject.org/pub/fedora/linux/releases/39/Cloud/x86_64/images/ | Yes | URL to pull base Fedora image from |
| fedora_gui_image_qcow_name | Fedora-Cloud-Base-39-1.5.x86_64.qcow2 | Yes | The name of the Fedora QCOW image |
| fedora_gui_image_pvc_name | fedora39-workstation | Yes | The name of the PVC to publish |
| fedora_gui_image_pvc_namespace | openshift-virtualization-os-images | Yes | Where the PVC is published to |