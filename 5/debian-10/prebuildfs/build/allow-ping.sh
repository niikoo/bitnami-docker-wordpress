#!/bin/bash

chmod -R g+rwX /bin/ping
chmod -R g+rwX /bin/ping6
setcap cap_net_admin,cap_net_bind_service,cap_net_raw+eip /bin/ping
setcap cap_net_admin,cap_net_bind_service,cap_net_raw+eip /bin/ping6
sysctl -w net.ipv4.ping_group_range='0 2147483647'
echo "net.ipv4.ping_group_range='0 2147483647'" >> /etc/sysctl.conf
