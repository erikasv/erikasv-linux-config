erikasv-linux-config
====================

Algunas configuraciones para mi archlinux.

<a href="http://awesome.naquadah.org/" target="_blank">Awesome</a>:
-------------------------------------------------------------------
> Archivos:

- rc.lua: Tiene toda la configuración.

> Para hacerlo funcionar:

1. Ubicar el archivo rc.lua ```~/.config/awesome/```

> Atajos del teclado:

- Alt+Tab y Alt+Shift+Tab para cambiar entre ventanas
- Alt+F2 para ejecutar un comando
- Control+Alt+l para ejecutar xlock
- Consola por defecto:sakura

> Teclas de función (Fn) probadas (Samsung series 5):

Requiere tener instalado xorg-xbackligh.
- Teclas de sonido
- Teclas del brillo
- Bloqueo del touchpad

> Widgets:

Requieren instalar <a href="http://awesome.naquadah.org/wiki/Vicious" target="_blank">vicious</a>.
- Widget de bateria
- Widget de sonido

Vim:
----
> Archivos:

- BusyBee_cats.vim: Tema de colores. No recuerdo de donde lo saqué :-/

> Para hacerlo funcionar:

1. Ubicar el archivo BusyBee_cats.vim en ```~/.vim/colors/```

<a href="https://wiki.archlinux.org/index.php/Zsh" target="_blank">Zsh</a>:
---------------------------------------------------------------------------
> Archivos:

- .zshrc\_mine: Archivo principal, en donde están las configuraciones hechas con el asistente de configuración de zsh y hace uso de los archivos .zkeybindings y .zshrc_oh-my-zsh.
- .zkeybindings: Tiene el funcionamiento de teclas especiales (como home y end).
- .zshrc\_oh-my-zsh: Contiene las configuraciones echas a partir de <a href="https://github.com/robbyrussell/oh-my-zsh" target="_blank">oh-my-zsh</a>.
- erikasv.zsh-theme: Tema del prompt, tomado de <a href="https://github.com/gurgeh/oh-my-zsh/blob/master/themes/gurgeh.zsh-theme" target="_blank">gurgeh</a> con pequeñas modificaciones.

> Para hacerlo funcionar:

1. Clonar oh-my-zsh: ```git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh```
2. Ubicar el archivo erikasv.zsh-theme en ```oh-my-zsh/themes/.```
3. Ubicar el archivo .zshrc\_mine en ```~/.``` con el nombre ```.zshrc```
4. Ubicar el archivo .zkeybindings en ```~/.```
5. Ubicar el archivo .zshrc\_oh-my-zsh en ```~/.```

