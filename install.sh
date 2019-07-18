#!/bin/bash
cd linux-tbs-drivers 
rm -rf /lib/modules/$(uname -r)/kernel/drivers/media
./v4l/tbs-x86_64.sh
make -j4
make install
echo "Por favor reinicie seu equipamento"
