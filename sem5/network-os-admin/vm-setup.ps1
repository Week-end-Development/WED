######################WEEK#END#DEVELOPMENT######################
# file:        vm-setup.ps1
# autor:       BO$ & Nikolas
# date:        13/10/2023
# version:     0x0001
# copyrights:  All rights reserved (c) 2024 Week-End Development
# ==============================================================
# TOPIC:       CRUD.
######################WEEK#END#DEVELOPMENT######################
Write-Host @'
       All rights reserved (c) 2023 Week-End Development
██╗    ██╗███████╗███████╗██╗  ██╗     ███████╗███╗   ██╗██████╗
██║    ██║██╔════╝██╔════╝██║ ██╔╝     ██╔════╝████╗  ██║██╔══██╗
██║ █╗ ██║█████╗  █████╗  █████╔╝█████╗█████╗  ██╔██╗ ██║██║  ██║
██║███╗██║██╔══╝  ██╔══╝  ██╔═██╗╚════╝██╔══╝  ██║╚██╗██║██║  ██║
╚███╔███╔╝███████╗███████╗██║  ██╗     ███████╗██║ ╚████║██████╔╝
 ╚══╝╚══╝ ╚══════╝╚══════╝╚═╝  ╚═╝     ╚══════╝╚═╝  ╚═══╝╚═════╝
              ██████╗ ███████╗██╗   ██╗███████╗   DATE:
              ██╔══██╗██╔════╝██║   ██║██╔════╝       13/10/2023
              ██║  ██║█████╗  ██║   ██║███████╗   Authors:
              ██║  ██║██╔══╝  ╚██╗ ██╔╝╚════██║    BO$ & Nikolas
              ██████╔╝███████╗ ╚████╔╝ ███████║
              ╚═════╝ ╚══════╝  ╚═══╝  ╚══════╝ present:
              TOPIC:  Configuration System DC1
'@
read-host 'Press ENTER to continue...'

$VMName = 'xx-2022-DC1' # Zmień na inicjały
$Switch = 'NET-1' # NIE ZMIENIAJ
$InstallMedia = 'c:\path-to\windows-server.iso' # zmień
$NetAdapter = 'Ethernet' # zmień na nazwę adaptera sieciowego (standardowo to Ethernet)

# SWITCH NET-1
New-VMSwitch -Name NET-1 -SwitchType Internal
# SWITCH NET-2
New-VMSwitch -Name NET-2 -SwitchType Internal
# SWITCH EXT-1
New-VMSwitch -Name EXT-1 -NetAdapterName $NetAdapter -AllowManagementOS $true

# Create New Virtual Machine
New-VM -Name $VMName -MemoryStartupBytes 2GB -Generation 1 -NewVHDPath "$env:USERPROFILE\Documents\WED-Hyper-VMs\$VMName\$VMName.vhdx" -NewVHDSizeBytes 64GB -Path "C:\ProgramData\Microsoft\Windows\Hyper-V\$VMName" -SwitchName $Switch
# Add iso
Set-VMDvdDrive -VMName $VMName -Path $InstallMedia
Set-VM -Name $VMName -CheckpointType Disabled

Start-VM -Name $VMName
VMConnect.exe localhost $VMName

Write-Host @'
Poczekaj jak system się uruchomi
Skonfiguruj wstępnie Serwer
Administrator
Pa$$w0rd
Przejdź do `C:\Windows\System32\Sysprep\sysprep.exe` \
Ustaw: /generalize /shutdown
'@
read-host 'Press ENTER to continue...'

# Invoke-Command -ComputerName $VMName -Credential (New-Object PSCredential -ArgumentList 'Administrator', (ConvertTo-SecureString -String 'Pa$$w0rd' -AsPlainText -Force)) -ScriptBlock {
#   Start-Process -FilePath 'C:\Windows\System32\Sysprep\sysprep.exe' -ArgumentList '/generalize /shutdown' -NoNewWindow -Wait
# }
Write-Host @'
Upewnij się że nie ma żadnych chekpointów.
Nie powinno ich być.
(Jeśli sa usuń i poczekaj aż maszyna sie scali)
Kopiowanie matrycy
'@
read-host 'Press ENTER to continue...'

New-Item -Path "$env:USERPROFILE\Documents\WED-Hyper-VMs\MATRIX" -ItemType Directory
robocopy "$env:USERPROFILE\Documents\WED-Hyper-VMs\$VMName\" "$env:USERPROFILE\Documents\WED-Hyper-VMs\MATRIX\" ($VMName + ".vhdx") /E /Z /MT:4 /ETA /R:4 /W:30
Rename-Item -Path ("$env:USERPROFILE\Documents\WED-Hyper-VMs\MATRIX\$VMName" + ".vhdx") -NewName "WinS2022sysprep.vhdx"


Start-VM -Name $VMName
VMConnect.exe localhost $VMName

Write-Host @'
Poczekaj jak system się uruchomi
Skonfiguruj ponownie Serwer
Administrator
Pa$$w0rd
'@
read-host 'Press ENTER to continue...'

Write-Host @'
Kontynuuj zgodnie z instrukcją.
Powodzenia...

██╗    ██╗███████╗███████╗██╗  ██╗     ███████╗███╗   ██╗██████╗
██║    ██║██╔════╝██╔════╝██║ ██╔╝     ██╔════╝████╗  ██║██╔══██╗
██║ █╗ ██║█████╗  █████╗  █████╔╝█████╗█████╗  ██╔██╗ ██║██║  ██║
██║███╗██║██╔══╝  ██╔══╝  ██╔═██╗╚════╝██╔══╝  ██║╚██╗██║██║  ██║
╚███╔███╔╝███████╗███████╗██║  ██╗     ███████╗██║ ╚████║██████╔╝
 ╚══╝╚══╝ ╚══════╝╚══════╝╚═╝  ╚═╝     ╚══════╝╚═╝  ╚═══╝╚═════╝
              ██████╗ ███████╗██╗   ██╗███████╗
              ██╔══██╗██╔════╝██║   ██║██╔════╝
              ██║  ██║█████╗  ██║   ██║███████╗
              ██║  ██║██╔══╝  ╚██╗ ██╔╝╚════██║
              ██████╔╝███████╗ ╚████╔╝ ███████║
              ╚═════╝ ╚══════╝  ╚═══╝  ╚══════╝
'@