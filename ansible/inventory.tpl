[webservers]
web0  ansible_host=${ip[0]}  ansible_subnet_host=${int_ip[0]} ansible_connection=ssh ansible_user=adminroot
web1  ansible_host=${ip[1]}  ansible_subnet_host=${int_ip[1]} ansible_connection=ssh ansible_user=adminroot

[lblservers]
lbl0  ansible_host=${ip[2]}  ansible_subnet_host=${int_ip[2]} ansible_connection=ssh ansible_user=adminroot
lbl1  ansible_host=${ip[3]}  ansible_subnet_host=${int_ip[3]} ansible_connection=ssh ansible_user=adminroot

[keepalived_master]
lbl0  ansible_host=${ip[2]} ansible_subnet_host=${int_ip[2]} ansible_connection=ssh ansible_user=adminroot

[keepalived_backup]
lbl1  ansible_host=${ip[3]} ansible_subnet_host=${int_ip[3]} ansible_connection=ssh ansible_user=adminroot
