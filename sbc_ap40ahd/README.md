# Single Board Computer AP-40AHD 
 
## Vorwort
Erstmal alles in Deutsch oder Misch-Masch. Dokumentation nimmt viel 
Zeit in anspruch und auf Deutsch geht's einfach erstmal schneller... 
 
Hier habe ich eine kleine Linux-Distribution erstellt, die ich auf
einem 486-class Board laufen lasse. 

Ich baue diese Distribution zwar für einen bestimmten SingleBoardComputer, 
aber sie sollte genauso auf anderen 486er Maschinen laufen. Ich teste
jedes "Release" (jedesmal wenn ich ein Image uploade) in einer qemu-VM,
dem SBC und anderen PCs. Die Testergebnisse sind unter "Kompatiblität"
aufgeführt. 
 
Eckdaten: 
 - Kernel 4.13.11
 - 
 

## AP-40AHD 
Ein SBC mit (bei mir) Am5x86. 
<technische daten> 
 
## QuickStart 
Die Verbreitung der Distribution erfolgt mit einem komplett 
installierten Festplattenimage. Dieses Image ist zur Zeit 128MB gross. 
Dieses Image wird einfach auf eine reale Festplatte geschrieben,
angeschlossen und fertig. 
 
Das Image hat drei Paritionen, einen Bootloader, DOS und die Linuxdistribution installiert.


## Kernel
Es gibt zur Zeit zwei Kernel: 
* Standard-Kernel (4.13.11-stecdose-i486), ISA only
* PCI-Kernel (4.13.11-stecdose-pci-i486), PCI, USB, PCI-Grafik, Netzwerk, ...

Der Standard-Kernel ist für ISA-only Systeme gedacht, oder wenn z.B. eine 
PCI-VGA-Karte im VGA-only Modus betrieben wird und keine PCI-LAN-Karte gebraucht wird. 
 
Der PCI-Kernel ist nötig sobald irgend ein PCI-Gerät, USB oder ähnliches gebraucht wird. 
AGP-Support ist auch mit drin, Framebuffer, ...
