# vim: set syntax=yaml ts=2 sw=2 sts=2 et :
#
# Pillar top.sls
# /srv/pillar/top.sls
#
# Re-sync pillars
# --> qubesctl saltutil.refresh_pillar
#

# === Common ==================================================================
base:
  '*':
    - salt
    - gnupg
  
# === all =====================================================================
all:
  '*':
    - privacy

# === Dom0 ====================================================================
dom0:
  '*':
    - qubes
    # qubes.users
    - qubes.virtual-machines

# === vm ======================================================================
vm:
  '*':
    - qubes.users
    - formulas