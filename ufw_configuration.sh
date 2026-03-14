#!/bin/bash
# Basic UFW Configuration Script

# 1. Set Defaults: Deny all incoming, allow all outgoing
ufw default deny incoming
ufw default allow outgoing

# 2. Allow SSH (Crucial: Change 22 if you use a custom port)
ufw allow ssh

# 3. Allow Web Traffic (Optional)
ufw allow http
ufw allow https

# 4. Enable Firewall
echo "y" | ufw enable

# 5. Show Status
ufw status verbose
