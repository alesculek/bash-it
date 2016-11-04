#DOCKER_DNS_1=$(grep nameserver /etc/resolv.conf | awk '{print $2}' | sed -e 's/^/--dns /' | tr '\n' ' ')
#DOCKER_DNS_2=$(ifconfig docker | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}' | sed -e 's/^/--dns /' | tr '\n' ' ')
DOCKER_DNS=$(nmcli device show eth0 | grep IP4.DNS | awk '{print $2}' | sed -e 's/^/--dns /' | tr '\n' ' ')
alias dr='docker run $DOCKER_DNS'
alias ds='while true; do TEXT=$(docker stats --no-stream $(docker ps --format={{.Names}})); sleep 0.1; clear; echo "$TEXT"; done'
