 #!/bin/sh
  
  IFACE=$(/usr/sbin/ifconfig | grep tun0 | awk '{print $1}' | tr -d ':')
  
  if [ "$IFACE" = "tun0" ]; then
          echo "%{F#1bbf3e} %{F#cc0000}$(/usr/sbin/ifconfig tun0 | grep "inet " | awk '{pr  int $2}')%{u-}"
  else
          echo "%{F#1bbf3e}%{u-} Disconnected"
  fi
