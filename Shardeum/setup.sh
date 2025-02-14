#!/bin/bash

# Welcome message
echo "╔══════════════════════════════════════════════════╗"
echo "║            WELCOME TO SHARDEUM SETUP             ║"
echo "╚══════════════════════════════════════════════════╝"
curl -s https://raw.githubusercontent.com/skurbro/NodeRunner/main/Services/start.sh | bash

# Installing required software
echo "╔══════════════════════════════════════════════════╗"
echo "║         INSTALLING REQUIRED SOFTWARE...          ║"
echo "╚══════════════════════════════════════════════════╝"
curl -s https://raw.githubusercontent.com/skurbro/NodeRunner/main/Services/tools.sh | bash 

# Installing Shardeum Node
echo "╔══════════════════════════════════════════════════╗"
echo "║           INSTALLING SHARDEUM NODE...            ║"
echo "╚══════════════════════════════════════════════════╝"
curl -O https://raw.githubusercontent.com/shardeum/shardeum-validator/refs/heads/itn4/install.sh && chmod +x install.sh && ./install.sh

# Success message
echo "╔══════════════════════════════════════════════════╗"
echo "║      SHARDEUM NODE IS SUCCESSFULLY INSTALLED!    ║"
echo "║    Monitor its state at the following address:   ║"
echo "║  https://$(hostname -I | awk '{print $1}'):8180  ║"
echo "╚══════════════════════════════════════════════════╝"

# Log instructions
echo "╔══════════════════════════════════════════════════╗"
echo "║     CHECK NODE LOGS WITH THIS COMMAND BELOW      ║"
echo "║ docker logs -f --tail=250 shardeum-validator     ║"
echo "╚══════════════════════════════════════════════════╝"
curl -s https://raw.githubusercontent.com/skurbro/NodeRunner/main/Services/finish.sh | bash
