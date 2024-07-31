# Recovery Device Tree for Samsung Galaxy A34 (SM-A346B | a34x)

## Device spefication (briefly)
|Basic               |Spec Sheet                                                         |
|--                  |--                                                                 |
|CPU                 |Octa-core (2x 2.6 GHz ARM Cortex-A78 & 6x 2.0 GHz ARM Cortex-A55)  |
|Chipset             |MediaTek Dimensity 1080 (MT6877V/TTZA)                             |
|GPU                 |Mali-G68 MC4                                                       |
|Codename            |a34x                                                               |
|Memory              |8GB RAM                                                            |
|Android Version     |13                                                                 |
|Storage             |128/256GB

## Situation
- [X] Correct screen/recovery size
- [X] Working Touch, screen
- [X] Backup to internal/microSD
- [X] Restore from internal/microSD
- [X] Reboot to system
- [X] ADB

Medium checks
- [X] Update.zip sideload
- [X] UI colors (red/blue inversions)
- [X] Screen goes off and on
- [X] F2FS/EXT4 Support, exFAT/NTFS where supported
- [X] All important partitions listed in mount/backup lists
- [X] Backup/restore to/from external (USB-OTG) storage
- [X] Backup/restore to/from adb (https://gerrit.omnirom.org/#/c/15943/)
- [X] Decrypt /data (with automated multidisabler)
- [X] Correct date

Minor checks
- [X] MTP export
- [X] Reboot to bootloader (is a samsung device)
- [X] Reboot to recovery
- [X] Poweroff
- [ ] Battery level
- [X] Temperature
- [X] Encrypted backups
- [X] Input devices via USB (USB-OTG) - keyboard, mouse and disks
- [X] USB mass storage export
- [X] Set brightness
- [X] Vibrate
- [X] Screenshot
- [X] Partition SD card

### Device Picture

![Samsung Galaxy A34](https://fdn.gsmarena.com/imgroot/reviews/23/samsung-galaxy-a34/lifestyle/-1024w2/gsmarena_001.jpg)
