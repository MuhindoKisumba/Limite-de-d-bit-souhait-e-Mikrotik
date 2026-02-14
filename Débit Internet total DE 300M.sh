
# LIMITE PAR UTILISATEUR HOTSPOT
############################################
/ip hotspot user profile
set default rate-limit=5M/5M


# LIMITE GLOBALE VLAN INVITÉS
############################################
/queue simple
add name=GLOBAL-GUEST target=192.168.30.0/24 max-limit=100M/100M


# PRIORITÉ STAFF
############################################
/queue simple
add name=STAFF-PRIORITY target=192.168.20.0/24 max-limit=180M/180M priority=1


# ADMIN NON LIMITÉ (OU HAUTE PRIORITÉ)
############################################
/queue simple
add name=ADMIN-PRIORITY target=192.168.10.0/24 max-limit=300M/300M priority=1
