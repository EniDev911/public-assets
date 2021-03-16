## Cómo configurar ST3 para la edición de Markdown 

Recien instalado, Sublime Text no ofrece ningún soporte específico de Markdown, *sin resaltado de sintaxis*, sin formato especial en cursiva o negrita, sin atajos de teclado y sin vista previa de salida HTML.  
Para agregar estas características debemos instalar algunos complementos y configurar algunas preferencias.  

1. Abrimos package control (CTRL+SHIFT+P)
2. Escribimos install y seleccionamos (Install Package)
3. Escribir el nombre del package (**MarkdownEditing**)
4. Reinicie ST3 

Si esta utilizando ST2 posiblemente al instalarlo te encuentres con una ventana emergente como esta o tasmbién en ST3.  

<p align="center">
  <img src="img/ErrorLoading.png" alt="Error Loading"/>
</p>

Esto se debe que cuando descargas el package te cargará automaticamente el README.MD del mismo, por lo que de manera inmediata te arrojará este error, por otro lado, para poder evitar este mensaje de error, debemos deshabilitar el paquete nativo manualmente. Para hacer eso, quitamos Markdown de la lista en **"ignored_packages"**:

```JSON
// Preferences.sublime-settings -- User
{
/*...
....
.....
*/
"ignored_packages":
  [
    "Markdown",
    "Vintage"
  ],
	"theme": "Gravity One.sublime-theme",
 }
```


