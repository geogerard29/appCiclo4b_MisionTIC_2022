OMBRE DEL PROYECTO: touristapp

DESCRIPCION: Proyecto del Sprint 2 del Ciclo 4b: Desarrollo móvil.

ARCHIVOS DE INTERES: Para el desarrollo del Sprint 2 se hace énfasis en los siguientes archivos:

    1. assets: 
        A) Ruta relativa: p4_mis_libros\assets
        B) ¿Archivo preexistente?: NO. Para ello se deberá crearlo manualmente, así como sus "subdirectorios".
        C) Característica: Este directorio contiene todo lo referente a imágenes, música, videos, etc.
        D) "Subdirectorios" de interés:
            * images: Contiene las imágenes a ser usadas en el Home_Page y Logo.

    2. lib:
        A) Ruta relativa: p4_mis_libros\lib
        B) ¿Archivo preexistente?: SI. Solo se crea dentro de este los "subdirectorios" de models y pages.
        C) Característica: Contiene los models, pages (archivos .dart importantes para las interfaces) 
                           y el main.dart
        D) "Subdirectorios" de interés:

            * models: Es utilizada para modelación de atributos, constructores, getters, setters y métodos
                      de conversión a tipo json. A continuación se muestran los modelos utilizados:

                      + user.dart: Con este se modela el nombre (name), correo (email), contraseña (password), 
                                   genero(genre) del usuario, así como su género literario favorito
                                   (favoriteBooktype) y fecha de nacimiento (birthdate).
            
            * pages: Contiene las diferentes interfaces de usuarios (Son las diferentes "pantallas de vision" 
                     que se mostrarán en el celular.

                     + splash_page.dart: Primer interfaz que el usuario ve en la app. El objetivo con el 
                                         código aquì es mostrar el logo ampliado de la app durante 2-3 seg 
                                         antes de mostrar la pantalla del login.

                     + login_page.dart: Segunda interfaz que ve el usuario. El propósito con el código aquí 
                                        es mostrar los campos para diligenciar correo y contraseña que 
                                        permitan entrar a la siguiente pantalla: home_page.dart. Aquì 
                                        tambien contiene la opción Sign up para registrarse (Es decir si 
                                        el usuario usa la app por primera vez).

                     + register_page.dart: Tercera interfaz que ve el usuario. La función con el código aquí, 
                                          es que después de dar click en la opción de "Sign up" de la 
                                          pantalla del login pueda mostrar una pantalla con los campos 
                                          necesarios para poder registrarse: name, email, password, genre, 
                                          favorite booktypes y birthdate. Después de registrado se 
                                          redirigirá a la pantalla del Login.

                    + home_page.dart: Cuarta interfaz que ve el usuario. La meta con el código de esta 
                                      interfaz es que después de que el login sea exitoso se logre mostrar 
                                      una pantalla con datos de un punto de interés turístico de la ciudad 
                                      elegida.
            
            * main.dart: Es el archivo predeterminado que trae Flutter. Aquí solo se agrega código 
                         referente a la configuración de la fecha y de inicio de la app en el splash.
    
    3.pubspec.yaml:
        A) Ruta relativa: p4_mis_libros\pubspec.yaml
        B)¿Archivo preexistente?: SI.
        C) Característica: Contiene las dependencias y configuraciones necesarias para que funcione la app.

    4. Archivos mipmap
        A) Ruta relativa: p4_mis_libros\android\app\src\main\res
        B) ¿Archivo preexistente?: SI, pero con la imagen de flutter. Para cambio de imagen es necesario 
            crear los mipmaps en https://icon.kitchen.
        C) Característica: Son archivos que contienen la imagen del icono de la app.
