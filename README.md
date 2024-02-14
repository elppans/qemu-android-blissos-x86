# qemu-android-blissos-x86 no Archlinux

## Configurando [BlissOS](https://blissos.org/) com [qemu-android-cm-x86](https://aur.archlinux.org/packages/qemu-android-cm-x86):

### Dependências

Esta configuração depende do pacote [qemu-android-cm-x86](https://aur.archlinux.org/packages/qemu-android-cm-x86)  
Será baixado o arquivo ISO do site oficial e será descompactado em uma pasta específica.  
Para descompactar um arquivo ISO sem ter que montá-lo, deve ter o pacote [p7zip](https://archlinux.org/packages/extra/x86_64/p7zip/) instalado.  
Foi utilizado o [QEMU versão 7.2.0-3](https://archlinux.org/packages/?sort=&q=qemu-system-x86) para a execução e testes do Android OS.  

### Versões do BlissOS:  

* Stock - Normalmente, os barebones, aplicativos mínimos adicionado. Perfeito para testes de produtos  
* FOSS - Inclui código aberto e gratuito soluções de aplicativos e lojas de aplicativos ( Aurora Droid para aplicativos de código aberto de repos de F-Droid e Aurora Store para acessar o Google Jogar biblioteca de aplicativos )  
* Gapps/GMS - Inclui o Google Play Services ( Conjunto mínimo de aplicativos, comparável a Pico / Nano )  
Para mais informações, acesse o [site oficial, Downloads](https://blissos.org/index.html#download)  

### Links, BlissOS versão 14 (Android 11) e 15 (Android 12):  

> https://sourceforge.net/projects/blissos-dev/files/Beta/Bliss-v14.10-x86_64-OFFICIAL-opengapps-20230201.iso  
https://sourceforge.net/projects/blissos-dev/files/Beta/Bliss-v14.10-x86_64-OFFICIAL-foss-20230201.iso  
https://sourceforge.net/projects/blissos-dev/files/Beta/Bliss-v15.8.4-x86_64-OFFICIAL-gapps-20230201.iso  
https://sourceforge.net/projects/blissos-dev/files/Beta/Bliss-v15.8.4-x86_64-OFFICIAL-foss-20230201.iso  

## Baixando e configurando BlissOS:  

Nesta configuração, será usado o BlissOS versão 14, mas pode fazer o mesmo procedimento para a versão 15.  
* Por algum motivo, o BlissOS 14 na versão de **11.03.2023** está com `BOOT INFINITO`, então por enquanto é melhor usar a versão de **01.02.2023**.
* BlissOS 15, da versão de **08.03.2023** (**15.8.5**), funcionou normalmente e na minha opinião, é melhor que a versão 14.
* Para usar o BlissOS 15 e quiser usar o aplicativo `Taskbar for BlissOS`, deve editar o arquivo `config`, ativar e configurar a variável RAM para usar no mínimo 3 GB RAM (Em MB):  

> RAM=3072  

O arquivo `config` que será baixado, já está com a variável RAM configurado para usar 3 GB RAM na Máquina Virtual.  
O Script e o arquivo **config** estão configurados para usar a pasta `~/.config/android-x86/blissos`, então deverá criar esta pasta antes de tudo.  
Assim como toda **ISO Android OS versão 11** o **BlissOS** NÃO tem o arquivo `ramdisk.img`, então **DEVE** criar, ou o boot não funcionará.  
Neste mesmo arquivo, também está ativo a variável `DATASIZE` para para que o Script crie um arquivo com o nome `data.img` com um tamanho de 64,4 GB. Nesta variável, antes de executar o Script pela 1ª vez, se quiser pode modificar o tamanho do arquivo a ser usado adicionando um outro número (em MB) para usar um arquivo maior ou menor.  
Um exemplo, se quer um arquivo menor, como 20 GB, deve fazer um calculo (1024 \* 20). Então a variável deve ser modificada para ficar desta forma:  

> DATASIZE=20480  

Se não quiser que seu Android use um arquivo **data.img**, crie uma pasta com o nome `data` e crie a variável:  

> DATA="$HOME/.config/android-x86/blissos/data"  

Se for configurado a pasta `data` para ser usado no lugar de `data.img`, será usado o parâmetro `9p mode` para montar esta pasta como um dispositivo no Android, com isso o QEMU será executado com sudo ao iniciar o Script.  
Se não quiser digitar a senha do sudo toda vez que executar o qemu-android, edite o arquivo `/etc/sudoers` e adicione esta linha:  

> %wheel ALL=(ALL) NOPASSWD: /usr/bin/qemu-system-x86_64  

* PS.: Diferente do [PrimeOS](https://www.primeos.in/) o BlissOS, NÃO funcionou bem com a variável em diretório, ficou com o `BOOT INFINITO`.
Mas fiz uma atualização no Script para usar o arquivo data.img de forma comprimida. Quando terminar os testes e organizar, irei upar a atualização do Script.

Faça estes comandos para configurar o necessário para executar o BlissOS no QEMU:  

```
mkdir -p ~/.config/android-x86/blissos
cd ~/Downloads
wget -c https://sourceforge.net/projects/blissos-dev/files/Beta/Bliss-v14.10-x86_64-OFFICIAL-foss-20230201.iso
7z x Bliss-v14.10-x86_64-OFFICIAL-foss-20230201.iso -o$HOME/.config/android-x86/blissos initrd.img kernel system.sfs
cd ~/.config/android-x86/blissos
wget -c https://raw.githubusercontent.com/elppans/qemu-android-blissos-x86/main/config
wget -c https://raw.githubusercontent.com/elppans/qemu-android-blissos-x86/main/qemu-android-blissos
chmod +x qemu-android-blissos
truncate -s 2048K ramdisk.img
```


Para testar, faça o comando:  

```
$HOME/.config/android-x86/blissos/qemu-android-blissos gui
```

Se quiser criar um atalho .desktop para o comando, crie um arquivo em `~/.local/share/applications` com o nome `qemu-android-blissos.desktop` com o seguinte conteúdo:  

```
[Desktop Entry]
Name=qemu-android-blissos
Comment=Android-x86 environment via QEMU and VirGL
Exec=/usr/bin/qemu-android-blissos gui
Terminal=false
Icon=qemu-android.png
Type=Application
Categories=Development;
```

Crie um link OU copie o Script para /usr/bin, para que seja executado (Eu prefiro fazer o link):  

```
ln -sf $HOME/.config/android-x86/PrimeOS/qemu-android-blissos /usr/bin/qemu-android-blissos
```

Após a configuração, basta clicar no ícone que aparecerá em seu menú.  

