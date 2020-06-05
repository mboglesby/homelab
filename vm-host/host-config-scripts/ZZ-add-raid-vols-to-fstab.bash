## Raid vols were generated and mounted using cockpit. This script might not work

#!/bin/bash

echo "UUID=d22d9eda-f8ab-4c41-bebb-5ec54ac12f6e /mnt/vm-ssd auto defaults,x-parent=927d36b3:51cfdd6f:caf50dba:e0d13d6b 0 0" >> /etc/fstab
echo "UUID=cbc9fd15-878f-4173-b12c-cbfaa58cd436 /mnt/vm-hdd auto defaults,x-parent=98756858:f87258b8:789cfcca:9dd6b76a 0 0" >> /etc/fstab
mount /mnt/vm-ssd
mount /mnt/vm-hdd
