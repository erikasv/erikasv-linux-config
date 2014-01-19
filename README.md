erikasv-linux-config
====================

Algunas configuraciones para mi archlinux (Probadas en un samsung series 5).

<a href="http://awesome.naquadah.org/" target="_blank">Awesome</a>:
--------
> Teclas:

- Alt+Tab y Alt+Shift+Tab para cambiar entre ventanas
- Alt+F2 para ejecutar un comando
- Control+Alt+l para ejecutar xlock
- Consola por defecto:sakura
 
> Para que las teclas de brillo funcionen es necesario tener instalado xorg-xbackligh

- Teclas de sonido (Fn) funcionando
- Teclas del brillo (Fn) funcionando

> Para los widgets es necesario instalar <a href="http://awesome.naquadah.org/wiki/Vicious" target="_blank">vicious</a>:

- Widget de bateria
- Widget de sonido

<a href="https://wiki.archlinux.org/index.php/Zsh" target="_blank">Zsh</a>:
----
> Archivos:

- .zshrc\_mine: Archivo principal, en donde están las configuraciones hechas con el asistente de configuración de zsh y hace uso de los archivos .zkeybindings y .zshrc_oh-my-zsh.
- .zkeybindings: Tiene el funcionamiento de teclas especiales (como home y end).
- .zshrc\_oh-my-zsh: Contiene las configuraciones echas a partir de <a href="https://github.com/robbyrussell/oh-my-zsh" target="_blank">oh-my-zsh</a>.
- erikasv.zsh-theme: Tema del prompt, tomado de <a href="https://github.com/gurgeh/oh-my-zsh/blob/master/themes/gurgeh.zsh-theme" target="_blank">gurgeh</a> con pequeñas modificaciones.

> Para hacerlo funcionar:

1. Clonar oh-my-zsh

 ```git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh)```

2. Hacer un enlace simbólico del tema en la carpeta de temas de oh-my-zsh (o copiar el archivo también servirá)

 ```ln -s ~/erikasv-linux-config/zsh/erikasv.zsh-theme ~/.oh-my-zsh/themes/.```

3. Hacer enlaces simbólicos para los archivos .zshrc_mine .zkeybindings .zshrc_oh-my-zsh al home (o copiarlos)

 ```
 ln -s ~/erikasv-linux-config/zsh/.zshrc_mine ~/.zshrc
 ln -s ~/erikasv-linux-config/zsh/.zkeybindings ~/.
 ln -s ~/erikasv-linux-config/zsh/.zshrc_oh-my-zsh ~/
 ```

