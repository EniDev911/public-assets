##  SideBarEnhancements  

Proporciona mejoras a las operaciones en la barra lateral de archivos y carpeta
En particular, proporciona eliminar como "mover a la papelera", abrir con .. y un portapapeles.

<p align="center">
  <img src="img/install_sbe.png" alt="install package"/>
</p>

## MarkDownEditing  

Complemento de Markdown para ST3, resaltado de sintaxys y temas. 

<p align="center">
  <img src="img/install_mde.png" alt="install package"/>
</p>

## MarkdownPreview  

Este complemento nos ayuda a obtener una vista previa en el navegador de nuestros archivos markdown

<p align="center">
  <img src="img/install_mdp.png" alt="install package"/>
</p>

Para aprovechar su capacidad podemos configurar un atajo de teclado de la siguiente manera:  

- Vamos a **Preferences ->Key Bindings - User** y añadimos entre los corchetes lo siguiente.  

```json
{ "keys": ["alt+m"], "command": "markdown_preview", "args": {"target": "browser", "parser":"markdown"} }

```

Salvamos los cambios
