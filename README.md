## PCRemote Controller

![visitors](https://visitor-badge.glitch.me/badge?page_id=pcremotecontroller)

<div align="center">

![pcontroller](https://raw.githubusercontent.com/Shihara-Dilshan/BringMeLK-Android-FireBase/master/WhatsApp%20Image%202021-03-23%20at%2009.34.13.jpeg)
![pcontrollera](https://raw.githubusercontent.com/Shihara-Dilshan/BringMeLK-Android-FireBase/master/Screenshot_2021-03-23_07-13-50.png)

</div>

## Install

First, clone the repo via git:

```bash
git clone https://github.com/Shihara-Dilshan/PCRemoteController.git
```

## !!!!IMPORTANT!!!!

1.ONLY WORKS IN LINUX BASED OS WITH ROOT PRIVILADGES.
2.This project was build with help some linux packages. Without those packages are installed. This application does not work.
  a.amixer - ```bash apt-get install alsa-utils```
  b.playerctl - ```bash wget http://ftp.nl.debian.org/debian/pool/main/p/playerctl/libplayerctl2_2.0.1-1_amd64.deb```
  		```bash wget http://ftp.nl.debian.org/debian/pool/main/p/playerctl/playerctl_2.0.1-1_amd64.deb```
		```bash sudo dpkg -i libplayerctl2_2.0.1-1_amd64.deb playerctl_2.0.1-1_amd64.deb```
3.Need flutter SDK and Node Js pre Installed		

After cloning, 
	1.Go to the App folder and hit ```bash flutter pub get``` then ```bash flutter run```
	2.Go to the Server folder and hit ```bash Npm install``` then ```npm start```


## Controlling the PC

1.Controll PC and the mobile app should belong to the same local area network
2.Add your pc ip address in mobile app's settings menu.
 
## Maintainers

- [Shihara-Dilshan](https://github.com/Shihara-Dilshan)

## License

MIT © DilTerm 2020

