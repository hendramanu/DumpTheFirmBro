# Set up Git identity
git config --global user.name "Hendra Manudinata"
git config --global user.email "aku.hendramanu@gmail.com"

# Clone Phoenix Firmware Dump
git clone https://github.com/DroidDumps/phoenix_firmware_dumper fwdump && cd fwdump

# Set up required variable
echo ${GH_PAT} > .github_token
echo "HendraFirmDump" > .github_orgname

# Set up environment
sudo ./setup.sh

# Dump
./dumper.sh ${FW_URL}
