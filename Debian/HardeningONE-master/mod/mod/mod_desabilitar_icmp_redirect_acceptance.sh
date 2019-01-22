# HardeningOne - A hardening tool for Linux
# Copyright (C) 2010 Author
# Seg 18 Out 2010 09:49:01 BRST 
# São Paulo-SP
# Brazil
# Author:
#   * Mauro Risonho de Paula Assumpção aka firebits <firebits at backtrack dot com dot br>
#   
#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 2 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program; if not, write to the Free Software
#   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#
#

#!/bin/bash
echo "========================================================================="
echo "---> Scanning no sysctl packet forwarding"
echo "========================================================================="
# Desabilitar ICMP Redirect Acceptance
echo > 0 /proc/sys/net/ipv4/conf/all/accept_redirects && echo 'ICMP Redirect Acceptance - Device All Desabilitado'
echo > 0 /proc/sys/net/ipv4/conf/lo/accept_redirects && echo 'ICMP Redirect Acceptance - Device lo Desabilitado'
echo > 0 /proc/sys/net/ipv4/conf/eth0/accept_redirects && echo 'ICMP Redirect Acceptance - Device eth0 Desabilitado'
echo > 0 /proc/sys/net/ipv4/conf/default/accept_redirects && echo 'ICMP Redirect Acceptance - Device default Desabilitado'

# reinicia as configurações do sysctl
/sbin/sysctl -p

echo "========================================================================="
