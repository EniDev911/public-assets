## Como configurar paquetes 
 
 La forma que ST3 maneja las preferencias (incluida la configuración del paquete) es única y poderosa.  
 
 Todas las preferencias de ST3 están escritas en archivos **JSON** que se abren en el propio editor. Los archivos **JSON** son más fáciles de leer.  
 
 No solo hay muchos lugares diferentes para la configuración, también hay dos archivos para cada tipo de configuración. hay un archivo de configuración "Predeterminado" y un archivo de configuración de "Usuario"que anula el predeterminado. Solo debe realizar cambios en los archivos de configuración de "usuario", porque los archivos de configuración predeterminados pueden sobrescribirse, se sobrescribirán si actualiza ST3 o sus plugin. Tienes que aprender a buscar la preferencia que deseas en el archivo de configuración "predeterminado" luego ingresar tus preferencias en el archivo de configuración de "usuario" correspondientes. Si no lo hace, perderá la configuración cuando el complemento se actualice automáticamente.  
 
 Las preferencias se aplican en cascada, con las preferencias generales (como la configuración global de SublimeText) anuladas por configuraciones más específicas (como la configuración del proyecto, luego la configuración específica de sintaxys), y la configuración del "usuario" siempre anula la configuración "predeterminada". Lo que termina con configuraciones extraídas de una multitud de archivos (proncipalmente de los rchivos predeterminados que vienen con el editor o los paquetes que instala, con algunas anulaciones clave provenientes de los archivos de configuración del usuario), según el documento que está trabajando.  
 
 
 
 
