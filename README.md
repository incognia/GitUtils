# GitUtils

Este repositorio contiene utilidades para simplificar el uso de Git y GitHub.

## Scripts

### install.sh

Este script realiza las siguientes operaciones:

1. **Verifica si Git está instalado**. Si no está instalado, el script lo instala automáticamente.
2. **Verifica si el directorio ~/bin existe**. Si no existe, el script lo crea.
3. **Copia los scripts autogit.sh y fastgit.sh** al directorio ~/bin.
4. **Agrega ~/bin al PATH** en los archivos de configuración de la shell (.bashrc, .zshrc, .kshrc, .tcshrc) si existen.

### autogit.sh

Este script realiza las siguientes operaciones:

1. **Agrega todos los archivos** al área de preparación de Git.
2. **Crea un commit** con un mensaje que incluye la fecha y hora actuales.
3. **Empuja los cambios** al repositorio remoto.
4. **Reinicia la terminal**.

### fastgit.sh

Este script realiza las siguientes operaciones:

1. **Solicita un mensaje de commit al usuario**.
2. **Agrega todos los archivos** al área de preparación de Git.
3. **Crea un commit** con el mensaje proporcionado por el usuario.
4. **Empuja los cambios** al repositorio remoto.
5. **Reinicia la terminal**.

## Uso

Para utilizar estos scripts, primero debes clonar este repositorio y ejecutar el script install.sh. Esto instalará Git (si no está instalado) y copiará los scripts autogit.sh y fastgit.sh al directorio ~/bin.

Una vez hecho esto, puedes utilizar los comandos `autogit` y `fastgit` en cualquier directorio que sea un repositorio de Git.

## Licencia

Este proyecto está licenciado bajo la **GNU General Public License v3.0**. Puedes encontrar el texto completo de la licencia en el archivo LICENSE en este repositorio.

## Contribuciones

Las contribuciones son bienvenidas. Por favor, abre un issue o un pull request si tienes alguna mejora o corrección.
