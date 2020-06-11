erikasv-linux-config
====================
Algunas configuraciones para mi archlinux.

<a href="http://awesome.naquadah.org/" target="_blank">Awesome</a> (posiblemente obsoleto):
-------------------------------------------------------------------
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
- Tema de colores: BusyBee_cats.vim. No recuerdo de donde lo saqué :-/

<a href="https://wiki.archlinux.org/index.php/Zsh" target="_blank">Zsh</a> (posiblemente obsoleto):
---------------------------------------------------------------------------
- .zshrc\_mine: Archivo principal, en donde están las configuraciones hechas con el asistente de configuración de zsh y hace uso de los archivos .zkeybindings y .zshrc_oh-my-zsh.
- .zkeybindings: Tiene el funcionamiento de teclas especiales (como home y end).
- .zshrc\_oh-my-zsh: Contiene las configuraciones echas a partir de <a href="https://github.com/robbyrussell/oh-my-zsh" target="_blank">oh-my-zsh</a>.
- erikasv.zsh-theme: Tema del prompt, tomado de <a href="https://github.com/gurgeh/oh-my-zsh/blob/master/themes/gurgeh.zsh-theme" target="_blank">gurgeh</a> con pequeñas modificaciones.

Firefox:
--------
- Archivo .desktop para incluir el profile manager en las opciones del icono de la barra de tareas

Alias:
------
```
alias dkps='docker ps --format "table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}\t{{.Names}}"'
alias dkpsa='docker ps -a --format "table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}\t{{.Names}}"'
```

Utilidades:
-----------
- Borrar la caché de la RAM
```
sudo sh -c 'echo 3 >/proc/sys/vm/drop_caches'
```
- Ajuste para el brillo en el [lenovo legion Y540](https://www.sentinelstand.com/article/ubuntu-1910-on-lenovo-legion-y540)

  Editar (o crear) `/usr/share/X11/xorg.conf.d/10-nvidia.conf`:
  ```
  Section "OutputClass"
      Identifier "nvidia"
      MatchDriver "nvidia-drm"
      Driver "nvidia"
      Option "AllowEmptyInitialConfiguration"
      Option "RegistryDwords" "EnableBrightnessControl=1;" # Add this
      ModulePath "/usr/lib/x86_64-linux-gnu/nvidia/xorg"
  EndSection
  ```
