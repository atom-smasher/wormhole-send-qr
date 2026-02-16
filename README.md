# wormhole-send-qr
zsh script to send files/strings via Magic Wormhole and display a QR code in the terminal

<img width="505" height="411" alt="image" src="https://github.com/user-attachments/assets/8cde1202-3082-44f4-8fb6-b47c0361cfd0" />


This script relies on `qrencode` to generate a QR-code in the terminal.

#### To send a file:
```
wormhole-send-qr.zsh [options] file.data
```
#### To send a string, use a pipe or other redirection:
```
wormhole-send-qr.zsh [options] < /proc/sys/kernel/random/uuid
```



`wormhole send` options can be specified on the command line as usual. Run `wormhole send --help` to see available options.
