#!/bin/bash

# Welcome message
echo "╔══════════════════════════════════════════════════╗"
echo "║            WELCOME TO DILL SETUP                 ║"
echo "╚══════════════════════════════════════════════════╝"
curl -s https://raw.githubusercontent.com/skurbro/NodeRunner/Services/start.sh | bash

# Installing required software
echo "╔══════════════════════════════════════════════════╗"
echo "║         INSTALLING REQUIRED SOFTWARE...          ║"
echo "╚══════════════════════════════════════════════════╝"
curl -s https://raw.githubusercontent.com/skurbro/NodeRunner/Services/tools.sh | bash 

# Installing Shardeum Node
echo "╔══════════════════════════════════════════════════╗"
echo "║           INSTALLING DILL NODE...                ║"
echo "╚══════════════════════════════════════════════════╝"
curl -sO https://raw.githubusercontent.com/DillLabs/launch-dill-node/main/dill.sh  && chmod +x dill.sh && ./dill.sh

# Success message
echo "╔══════════════════════════════════════════════════╗"
echo "║      DILL NODE IS SUCCESSFULLY INSTALLED!        ║"
echo "║    You can stake TestnetDill there:              ║"
echo "║    https://staking.dill.xyz/en/                  ║"
echo "╚══════════════════════════════════════════════════╝"

# Log instructions
echo "╔══════════════════════════════════════════════════╗"
echo "║     CHECK NODE STAT ON THIS WEBSITE!             ║"
echo "║     https://alps.dill.xyz/validators             ║"
echo "╚══════════════════════════════════════════════════╝"
curl -s https://raw.githubusercontent.com/skurbro/NodeRunner/Services/finish.sh | bash
