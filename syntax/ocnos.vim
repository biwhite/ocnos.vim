" Vim syntax file
" Language: ocnos
" Maintainer: Ben White <ben@cuckoo.org>
" Forked from the chap below as similar to ocnos.  Thanks
" --- Makoto Momota <makoto.momota@gmail.com>

if exists("b:current_syntax")
  finish
endif

setlocal iskeyword+=-
setlocal iskeyword+=_
setlocal iskeyword+=:


syn match   ocnosDef        /\s\u\S\+/

syn keyword ocnosCond       match eq neq gt lt ge le range

syn keyword ocnosKeyword    speed duplex negotiation delay bandwidth preempt priority timers
syn keyword ocnosKeyword    logging log login password username user license host hostname system
syn keyword ocnosKeyword    address network route neighbor redistribute default-gateway community
syn keyword ocnosKeyword    version class switchport clock name minimum maximum level size
syn keyword ocnosKeyword    established source destination allowed
syn keyword ocnosKeyword    timeout threshold frequency keepalive average weights mtu tunnel
syn keyword ocnosKeyword    privilege secret
syn match   ocnosKeyword    /timestamps\?/

syn keyword ocnosProtocol   ipv4 ipv6 tcp udp icmp echo
syn keyword ocnosProtocol   http https www dhcp domain nameserver ssh telnet ftp ftp-data
syn keyword ocnosProtocol   ntp snmp snmptrap syslog
syn keyword ocnosProtocol   smtp pop2 pop3
syn keyword ocnosProtocol   klogin kshell login rlogin sunrpc 
syn keyword ocnosProtocol   mpls rip isis ospf ospfv3 eigrp bgp hsrp vrrp ipsla
syn keyword ocnosProtocol   isdn dial hdlc frame-relay atm
syn keyword ocnosProtocol   igmp multicast broadcast
syn keyword ocnosProtocol   rsa pki isakmp ipsec ike esp gre vpn mvpn pppoe
syn keyword ocnosProtocol   qos cef pim ahp tacacs
syn keyword ocnosProtocol   cdp lldp vtp spanning-tree lacp dot1Q l2tun ethernet
syn keyword ocnosProtocol   aaa aaa-server
syn match   ocnosProtocol   /traps\?/

syn keyword ocnosConfigure  activate set default redundancy prefe ron tag
syn keyword ocnosConfigure  inside outside input output static export import

syn keyword ocnosFunction   service crypto encapsulation standby mode in out
syn keyword ocnosFunction   storm-control snmp-server group nat banner mask seq metric
syn keyword ocnosFunction   add-route shape rd route-target as-path remote-as
syn keyword ocnosFunction   access-list access-class access-group prefix-list
syn keyword ocnosFunction   passive-interface distribute-list permit subnet-zero
syn match   ocnosFunction   /channel\-\(group\|protocol\)/

syn match   ocnosComment    /!.*$/
syn match   ocnosComment    /no\s.*$/
syn match   ocnosComment    /description.*$/
syn match   ocnosComment    /remark.*$/
syn match   ocnosComment    /\s*#.*$/

syn match   ocnosString     /\"[^"]*\"/

syn match   ocnosInterface  /^\(interface\|vlan\|line\|router\|track\)\s.*\d$/
syn match   ocnosInterface  /^ip\s\(sla\|vrf\)\s.*\d$/
syn match   ocnosInterface  /^monitor\ssession\s\d\+$/
syn match   ocnosInterface  /^\(class\|policy\|route\)\-map\s.*$/
syn match   ocnosInterface  /^ip\saccess\-list\s\(standard\|extended\)\s.*$/
syn match   ocnosInterface  /^vrf\s\(definition\|context\)\s.*$/
syn match   ocnosInterface  /^address\-family\sipv.*$/


syn keyword ocnosAction     disable deny shutdown down none

syn keyword ocnosVar        trunk access full full-duplex auto active monitor
syn keyword ocnosVar        any enable disable
syn keyword ocnosVar        pvst mst rapid-pvst \transparent server client
syn match   ocnosVar        /\d\+[mg]\?/


" IPv4
syn match   ocnosIpv4       /\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\(\/[0-9]\{1,2\}\)\?/

" IPv6
syn match   ocnosIpv6       /\s\(\x\{1,4}\:\)\{7}\(\:\|\(\x\{1,4}\)\)/
syn match   ocnosIpv6       /\s\(\x\{1,4}\:\)\{6}\(\:\|\(\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\)\|\(\:\x\{1,4}\)\)/
syn match   ocnosIpv6       /\s\(\x\{1,4}\:\)\{5}\(\(\:\(\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\)\?\)\|\(\(\:\x\{1,4}\)\{1,2}\)\)/
syn match   ocnosIpv6       /\s\(\x\{1,4}\:\)\{4}\(\:\x\{1,4}\)\{0,1}\(\:\(\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\)\?\)/
syn match   ocnosIpv6       /\s\(\x\{1,4}\:\)\{4}\(\:\x\{1,4}\)\{0,1}\(\(\:\x\{1,4}\)\{1,2}\)/
syn match   ocnosIpv6       /\s\(\x\{1,4}\:\)\{3}\(\:\x\{1,4}\)\{0,2}\(\:\(\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\)\?\)/
syn match   ocnosIpv6       /\s\(\x\{1,4}\:\)\{3}\(\:\x\{1,4}\)\{0,2}\(\(\:\x\{1,4}\)\{1,2}\)/
syn match   ocnosIpv6       /\s\(\x\{1,4}\:\)\{2}\(\:\x\{1,4}\)\{0,3}\(\:\(\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\)\?\)/
syn match   ocnosIpv6       /\s\(\x\{1,4}\:\)\{2}\(\:\x\{1,4}\)\{0,3}\(\(\:\x\{1,4}\)\{1,2}\)/
syn match   ocnosIpv6       /\s\(\x\{1,4}\:\)\(\:\x\{1,4}\)\{0,4}\(\:\(\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\)\?\)/
syn match   ocnosIpv6       /\s\(\x\{1,4}\:\)\(\:\x\{1,4}\)\{0,4}\(\(\:\x\{1,4}\)\{1,2}\)/
syn match   ocnosIpv6       /\s\:\(\:\x\{1,4}\)\{0,5}\(\(\:\(\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\)\?\)\|\(\(\:\x\{1,4}\)\{1,2}\)\)/

hi link ocnosKeyword        Statement
hi link ocnosProtocol       Type
hi link ocnosAction         Error
hi link ocnosFunction       Function
hi link ocnosLabel          Identifier
hi link ocnosCond           Type
hi link ocnosComment        Comment
hi link ocnosString         String
hi link ocnosVar            String
hi link ocnosConfigure      Identifier
hi link ocnosDef            String
hi link ocnosInterface      Underlined
hi link ocnosIpv4           Underlined
hi link ocnosIpv6           Underlined

let b:current_syntax = "ocnos"
