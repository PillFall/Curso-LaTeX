# Curso Libre de LaTeX [Universidad Nacional de Colombia]

Este es un curso de 10 clases para la introducción al manejo de LaTeX en la Universidad Nacional de Colombia.

Se intentará siempre mantener una forma muy sencilla de explicar los temas aquí mostrados y dar diversos ejemplos en las carpetas de las presentaciones.


## Para Empezar

Para poder compilar las presentaciones de este repositorio es necesario tener:

- **MiKTeX** o **TeX Live** en Windows o Linux, y **MacTeX** o **TeX Live** en MacOS.
- Instalar, desde el administrador de paquetes, todos los paquetes necesarios para compilar el documento:
  * Beamer
  * Fontspec
  * etc.


### Compilación

Para compilar estas presentaciones se recomienda utilizar `XeLaTeX` o `LuaLaTeX`debido al uso de fuentes personalizadas, así:

```
xelatex <Nombre de la presentación>.tex
```
o
```
lualatex <Nombre de la presentación>.tex
```

También es posible encontrar versiones pre-compiladas de las presentaciones en la sección de **Releases**.


### Estructura

Puede encontrar una estructura del manejo de las clases en el archivo [Clases.md](Clases.md).


## Licencia

Las presentaciones en este repositorio, y por ende sus códigos fuente están licenciados bajo [**Creative Commons Attribution Share Alike 4.0** ![Imagen Licencia](https://mirrors.creativecommons.org/presskit/buttons/80x15/svg/by-sa.svg)](License.md)

La fuente institucional *Ancízar* solo puede ser usada por miembros de la comunidad universitaria, **NO ESTA PERMITIDA SU ALTERACIÓN, DISTRIBUCIÓN O USO PARA CUALQUIER FIN**. © 2013 Universidad Nacional de Colombia. César Puerta Céspedes y Viviana Monsalve. Todos los derechos reservados.

Todas las imágenes (fotos e ilustraciones) son propiedad de sus respectivos autores y se reproducen con su consentimiento mediante las licencias correspondientes que autorizan a ello. *NO* está permitido reproducir las imágenes sin obtener la licencia correspondiente de sus titulares.

Respecto a las marcas, nombres comerciales o cualquier otro signo distintivo de terceros que se utilizan en estas presentaciones, son propiedad de sus respectivos titulares.
