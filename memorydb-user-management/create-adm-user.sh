#!/bin/bash

# A quick way to create an administrative user for your MemoryDB cluster.

# Ask for username
echo "Enter username for new admin user:"
read USERNAME

# Ask for password
echo "Set password for admin user:"
read -s PASSWORD

# Create user
aws memorydb create-user \
    --user-name "admin-${USERNAME}" \
    --access-string "on ~* &* +@all" \
    --authentication-mode Passwords=$PASSWORD,Type=password