#!/bin/bash

# Welcome message
echo "╔══════════════════════════════════════════════════╗"
echo "║            WELCOME TO DILL SETUP                 ║"
echo "╚══════════════════════════════════════════════════╝"
curl -s https://raw.githubusercontent.com/skurbro/NodeRunner/main/Services/start.sh | bash

# Installing required software
echo "╔══════════════════════════════════════════════════╗"
echo "║         INSTALLING REQUIRED SOFTWARE...          ║"
echo "╚══════════════════════════════════════════════════╝"
curl -s https://raw.githubusercontent.com/skurbro/NodeRunner/main/Services/tools.sh | bash 

# Installing Shardeum Node
echo "╔══════════════════════════════════════════════════╗"
echo "║           INSTALLING DILL NODE...                ║"
echo "╚══════════════════════════════════════════════════╝"
curl -sO https://raw.githubusercontent.com/DillLabs/launch-dill-node/main/dill.sh  && chmod +x dill.sh && ./dill.sh
