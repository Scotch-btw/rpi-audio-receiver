# Raspberry Pi Bluetooth-box

Eine einfacher bluetooth player (eine light version von [nicokaiser/rpi-audio-receiver](https://github.com/nicokaiser/rpi-audio-receiver))

## Features

1. Einfache Installation in zwei schritten.
1. Mit jedem Bluetoothgerät compatibel.
2. Poweroff knopf
3. Lautsärke knöpfe

## Voraussetzungen

- [Raspberry Pi mit Bluetooth](https://www.amazon.de/Raspberry-Pi-ARM-Cortex-A72-Bluetooth-Micro-HDMI/dp/B07TC2BK1X/ref=sr_1_3?adgrpid=69761139783&dchild=1&gclid=EAIaIQobChMIiPjThOue7wIV0QWiAx0YhQkGEAAYASAAEgLWaPD_BwE&hvadid=391640769758&hvdev=c&hvlocphy=1004054&hvnetw=g&hvqmt=b&hvrand=3107567109491450440&hvtargid=kwd-24776539960&hydadcr=16224_1988312&keywords=raspberry+pi&qid=1615142599&sr=8-3)     
- [Raspberry Pi OS](https://www.raspberrypi.org/software/)
- [Lautsprecher](https://www.amazon.de/Visaton-VS-FR7-Lautsprecher-Universal-130-20-000%C2%B0Hz/dp/B004GA0LFY/ref=sr_1_21?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=lautsprecher+raspberry+pi&qid=1615143122&sr=8-21) [(per aux)](https://www.amazon.de/1-5m-3-5mm-mono-Stecker-auf/dp/B000L0Z9Y6/ref=sr_1_3?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=9GLDSG0XFVNV&dchild=1&keywords=mono+aux+kabel&qid=1615143192&sprefix=mono+aux%2Caps%2C189&sr=8-3)

## Installation
1. ``` sudo git clone https://github.com/FinnPL/rpi-audio-receiver.git ```
2. ```  sudo ./install.sh  ```

##### Für einen Benutzerdefinierte Installation

1. ``` sudo git clone https://github.com/FinnPL/rpi-audio-receiver.git ```
2. ```  sudo ./install.sh --Benutzerdefiniert  ```

##Poweroff knopf
Wenn man einen Poweroff knopf installiert hat kann man den pi jederzeit beim drücken des knopfes herunterfahren. 
Das Program welches dies macht wird beim Starten des pi automatisch ausgeführt.

##Lautsärke knöpfe
Wenn man einen Lautsärke knöpfe installiert hat kann man jederzeit die Lautstärke des pi mit dem + Knopf um 5% erhöhen oder mit dem - knopf um -5% veringern.


### Bluetooth

Bluetooth wird eingerichet und jede Kopplungsanfrage automatisch genemigt, und es wird Bluetooth audio playback aktiviert ( mit der hife von  [BlueALSA](https://github.com/Arkq/bluez-alsa)). 
Ein script wird installiert welches den pi wärend er mit einem Gerät  verbunden ist für andere Bluetoothgeräte unsichtbar macht.

##### Bluetooth-Anzeige  Name ändern
Um den Anzeigename zu änder einfach ```  sudo ./name.sh  ``` ausführen und einen neuen Namen eingeben.


### UPnP

Installiert [gmrender-resurrect](http://github.com/hzeller/gmrender-resurrect) UPnP Renderer.

### Snapcast

Installiert [snapclient](https://github.com/badaix/snapcast), the client component of the Snapcast Synchronous multi-room audio player.

## Einschränkungen

- Es kann nur ein bluetoothgerät gleichzeitig verbunden sein.
- Jeder kann sich mit dem Bluetooth player verbinden.

## Genutzte Projekte

- [BlueALSA: Bluetooth Audio ALSA Backend](https://github.com/Arkq/bluez-alsa)
- [gmrender-resurrect: Headless UPnP Renderer](http://github.com/hzeller/gmrender-resurrect)
- [Snapcast: Synchronous audio player](https://github.com/badaix/snapcast)
- [pivumeter: ALSA plugin for displaying VU meters on various Raspberry Pi add-ons](https://github.com/pimoroni/pivumeter)
