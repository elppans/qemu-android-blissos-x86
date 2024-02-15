# qemu-android-blissos-x86 no Archlinux

### Configurando [BlissOS](https://blissos.org/) com [qemu-android-cm-x86](https://aur.archlinux.org/packages/qemu-android-cm-x86):

### Dependências

Esta configuração depende do pacote [qemu-android-cm-x86](https://aur.archlinux.org/packages/qemu-android-cm-x86)  
Será baixado o arquivo ISO do site oficial e será descompactado em uma pasta específica.  
Para descompactar um arquivo ISO sem ter que montá-lo, deve ter o pacote [p7zip](https://archlinux.org/packages/extra/x86_64/p7zip/) instalado.  
Foi utilizado o [QEMU versão 7.2.0-3](https://archlinux.org/packages/?sort=&q=qemu-system-x86) para a execução e testes do Android OS.  

## Versões do BlissOS:  

* Stock ou Vanilla - Normalmente, os barebones, aplicativos mínimos adicionado. Perfeito para testes de produtos  
* FOSS - Inclui código aberto e gratuito soluções de aplicativos e lojas de aplicativos ( Aurora Droid para aplicativos de código aberto de repos de F-Droid e Aurora Store para acessar o Google Jogar biblioteca de aplicativos )  
* Gapps/GMS - Inclui o Google Play Services ( Conjunto mínimo de aplicativos, comparável a Pico / Nano )  
Para mais informações, acesse o [site oficial, Downloads](https://blissos.org/index.html#download)  

## [BlissOS (LANÇAMENTOS)](https://blissos.org/index.html#download)  

### Bliss OS 14.x (Android 11):  

As compilações do Bliss OS 14.x são baseadas no Android 11, essas compilações são estáveis e podem ser usadas como driver diário.  

>[Bliss OS 14.x (FOSS)](https://sourceforge.net/projects/blissos-x86/files/Official/BlissOS14/FOSS/Generic/)  
[Bliss OS 14.x (OpenGApps)](https://sourceforge.net/projects/blissos-x86/files/Official/BlissOS14/OpenGApps/Generic/)  

As compilações Go têm como alvo dispositivos x86_64-v2 de baixo custo.  

>[Bliss OS 14.x (GO, FOSS)](https://sourceforge.net/projects/blissos-x86/files/Official/BlissOS14/FOSS/Go/)  
[Bliss OS 14.x (GO, OpenGApps)](https://sourceforge.net/projects/blissos-x86/files/Official/BlissOS14/OpenGApps/Go/)  

### Bliss OS 15.x (Android 12L):  

As compilações do Bliss OS 15.x são baseadas no Android 12L, essas compilações são estáveis e podem ser usadas como driver diário.  

>[Bliss OS 15.x (FOSS)](https://sourceforge.net/projects/blissos-x86/files/Official/BlissOS15/FOSS/Generic/)  
[Bliss OS 15.x (GAPPS)](https://sourceforge.net/projects/blissos-x86/files/Official/BlissOS15/Gapps/Generic/)  

As compilações Go têm como alvo dispositivos x86_64-v2 de baixo custo.  

>[Bliss OS 15.x (GO, FOSS)](https://sourceforge.net/projects/blissos-x86/files/Official/BlissOS15/FOSS/Go/)  
[Bliss OS 15.x (GO, GAPPS)](https://sourceforge.net/projects/blissos-x86/files/Official/BlissOS15/Gapps/Go/)  

### Bliss OS 16.x (Android 13):  

As compilações do Bliss OS 16.x são baseadas no Android 13. Essas compilações são beta, mas podem ser usadas como driver diário em muitos casos.  

>[Bliss OS 16.x (FOSS)](https://sourceforge.net/projects/blissos-x86/files/Official/BlissOS16/FOSS/Generic/)  
[Bliss OS 16.x (GAPPS)](https://sourceforge.net/projects/blissos-x86/files/Official/BlissOS16/Gapps/Generic/)  

As compilações Go têm como alvo dispositivos x86_64-v2 de baixo custo.  

>[Bliss OS 16.x (GO, FOSS)](https://sourceforge.net/projects/blissos-x86/files/Official/BlissOS16/FOSS/Go/)  
[Bliss OS 16.x (GO, GAPPS)](https://sourceforge.net/projects/blissos-x86/files/Official/BlissOS16/Gapps/Go/)  

### Bliss OS Zenith (Android 13):  

As compilações do Bliss OS Zenith são baseadas no Android 13 com o Linux Stable Kernel mais recente. Essas compilações são inovadoras e não são recomendadas para uso diário.  

>[Bliss OS Zenith (FOSS)](https://sourceforge.net/projects/blissos-x86/files/Official/BlissOSZenith/FOSS/Generic/)  
[Bliss OS Zenith (GAPPS)](https://sourceforge.net/projects/blissos-x86/files/Official/BlissOSZenith/Gapps/Generic/)  

## [BlissOS BETA](https://sourceforge.net/projects/blissos-dev/files/Beta/)

Lista dos Links das **últimas** versões **BETA** do BlissOS testadas que funcionam no qemu-android-cm-x86:  

- Bliss OS 14.x (Android 11):  

>https://sourceforge.net/projects/blissos-dev/files/Beta/Bliss-v14.10-x86_64-OFFICIAL-opengapps-20230201.iso  
https://sourceforge.net/projects/blissos-dev/files/Beta/Bliss-v14.10-x86_64-OFFICIAL-foss-20230310.iso  
https://sourceforge.net/projects/blissos-dev/files/Beta/Bliss-v14.10-x86_64-OFFICIAL-opengapps-20230311.iso  
https://sourceforge.net/projects/blissos-dev/files/Beta/Bliss-v14.10-x86_64-OFFICIAL-foss-20230624.iso  

- Bliss OS 15.x (Android 12L):  

>https://sourceforge.net/projects/blissos-dev/files/Beta/Bliss-v15.8.5-x86_64-OFFICIAL-gapps-20230308.iso  
https://sourceforge.net/projects/blissos-dev/files/Beta/Bliss-v15.8.5-x86_64-OFFICIAL-foss-20230331.iso  

Todas as versões de ISO maiores do que estes testados **NÃO** funcionaram.  
O Bliss OS 16.x (Android 13) **NÃO** funcionou, nenhuma das versões.  
Todas as versões que não funcionam ficam com BOOT INFINITO ou não reconhecem o arquivo data.  

>Para usar a ÚLTIMA VERSÃO lançada do BlissOS 14 ou 15, atualize apenas os arquivos **`kernel`** e **`system.sfs`**

## Sobre a configuracão do BlissOS:  

Nesta configuração, será usado o BlissOS versão 14, mas pode fazer o mesmo procedimento para outras versões do BlissOS.  
O Script já é configurado para usar 4 GB RAM por padrão, para usar mais memória deve editar o arquivo `config` e configurar a variável RAM.  
Um exemplo para usar no 8 GB RAM (Em MB):  

> RAM=8192


O Script e o arquivo **config** estão configurados para usar a pasta `~/.config/android-x86/blissos`, então deverá criar esta pasta antes de tudo.  
Está configurado para usar por padrão, o arquivo `data.img` com um tamanho de 11,8 GB. Antes de executar o Script pela 1ª vez, pode modificar o tamanho do arquivo a ser usado adicionando um outro número (em MB) para usar um arquivo maior ou menor.  
Um exemplo, para usar um arquivo com o tamanho de 20 GB, então a variável deve ser modificada para ficar desta forma:  

> DATASIZE=20480  

Se não quiser que seu Android use um arquivo **data.img**, crie uma pasta com o nome `data` e crie a variável (Funciona apenas em sistema de arquivos EXT4):  

> DATA="$HOME/.config/android-x86/blissos/data"  

Se for configurado a pasta `data` para ser usado no lugar de `data.img`, será usado o parâmetro `9p mode` para montar esta pasta como um dispositivo no Android, com isso o QEMU será executado com sudo ao iniciar o Script.  
Se não quiser digitar a senha do sudo toda vez que executar o qemu-android, edite o arquivo `/etc/sudoers` e adicione esta linha:  

> %wheel ALL=(ALL) NOPASSWD: /usr/bin/qemu-system-x86_64  

## Baixando e instalando o BlissOS

Faça estes comandos para configurar o BlissOS no qemu-android:  

```
mkdir -p ~/.config/android-x86/blissos
cd ~/Downloads
curl -JOLk https://sourceforge.net/projects/blissos-dev/files/Beta/Bliss-v14.10-x86_64-OFFICIAL-foss-20230310.iso
7z x Bliss-v14.10-x86_64-OFFICIAL-foss-20230310.iso initrd.img kernel system.sfs
mv initrd.img kernel system.sfs ~/.config/android-x86/blissos
cd ~/.config/android-x86/blissos
curl -JOLk https://raw.githubusercontent.com/elppans/qemu-android-blissos-x86/main/config
curl -JOLk https://raw.githubusercontent.com/elppans/qemu-android-blissos-x86/main/qemu-android-blissos
sudo ln -sf qemu-android-blissos /usr/bin/qemu-android-blissos
sudo cp qemu-android-blissos /usr/share/applications
chmod +x qemu-android-blissos
```

Para usar, basta clicar no ícone que aparecerá em seu menú.  

