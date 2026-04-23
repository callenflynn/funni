#!/bin/bash

# Color Definitions
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

clear

# PHASE 1: The Hook
echo -e "${RED}ERROR: KERNEL PANIC - MEMORY SEGMENTATION FAULT${NC}"
sleep 1
echo -e "${YELLOW}Attempting to recover encrypted volume...${NC}"
sleep 2
echo -e "${RED}CRITICAL SYSTEM ACCESS GRANTED TO: [EXTERNAL_IP_REDACTED]${NC}"
echo -e "${RED}CAUTION: Unauthorized administrative override in progress.${NC}"
sleep 2

# PHASE 2: The "Spam" - Random terms and paths
# This loop mimics a high-speed data dump or deletion process
for i in {1..80}
do
    # Randomly select a "scary" term or path
    PATHS=("/root/.ssh/keys" "/etc/shadow" "/home/cal/Documents/finances" "/dev/sda1" "/sys/kernel/debug" "/usr/bin/sudo" "/etc/passwd")
    TERMS=("DECRYPTING..." "UPLOADING..." "ERASING..." "EXFILTRATING..." "BYPASSING FIREWALL...")
    
    SELECTED_PATH=${PATHS[$RANDOM % ${#PATHS[@]}]}
    SELECTED_TERM=${TERMS[$RANDOM % ${#TERMS[@]}]}
    
    echo -e "${BLUE}${SELECTED_TERM}${NC} -> ${SELECTED_PATH}_${RANDOM}"
    
    # Speed up as it goes to increase panic
    sleep 0.05
done

echo -e "\n${RED}--------------------------------------------------${NC}"
echo -e "${RED}   REMOTE WIPE COMMAND RECEIVED FROM OPERATOR     ${NC}"
echo -e "${RED}--------------------------------------------------${NC}"
sleep 2

# PHASE 3: The Heavy Countdown
# 1.5 seconds per count, ooo spoookyy
for i in {20..1}
do
    if [ $i -le 5 ]; then
        # Last 5 seconds are bright red and blink-ish
        echo -e "${RED}PERMANENT DATA LOSS IN: $i...${NC}"
    else
        echo -e "${YELLOW}SYSTEM TERMINATION IN: $i...${NC}"
    fi
    sleep 1.2
done

# THE REVEAL
clear
echo -e "${GREEN}"
echo "##################################################"
echo "#                                                #"
echo "#        PRANKED! YOUR FILES ARE SAFE.           #"
echo "#     (But seriously, lock your screen!)         #"
echo "#                                                #"
echo "##################################################"
echo -e "${NC}"
