NOMBRE DEL PROYECTO: touristapp

ESTADO: Sprint 2 completado.

DESCRIPCION: Código implementado para el desarrollo del Sprint 2 del Ciclo 4b.

ARCHIVOS: Para el Sprint 2 se desarrollaron los siguientes archivos:

    1. assets: 
        A) Ruta relativa: touristapp\assets
        B) ¿Archivo preexistente?: NO. Para ello se creó manualmente, así como sus "subdirectorios".
        C) Característica: Este directorio contiene todo lo referente a imágenes, música, videos, etc.
        D) "Subdirectorios" de interés:
            * images: Contiene las imágenes usadas en el Home_Page y Logo.

    2. lib:
        A) Ruta relativa: touristapp\lib
        B) ¿Archivo preexistente?: SI. Solo se creó dentro de este los "subdirectorios" de models y pages.
        C) Característica: Contiene los models, pages (archivos .dart importantes para las interfaces) 
                           y el main.dart
        D) "Subdirectorios" de interés:

            * models: Se utilizó para modelación de atributos, constructores, getters, setters y métodos
                      de conversión a tipo json. A continuación se muestran los modelos utilizados:

                      + user.dart: Con este se modelò el nombre (name), correo (email), contraseña (password), 
                                   genero(genre) del usuario y fecha de nacimiento (birthdate).

            * pages: Contiene las diferentes interfaces de usuarios (Son las diferentes "pantallas de visión" 
                     que se mostrarán en el celular.

                     + splash_page.dart: Primer interfaz que el usuario ve en la app. El objetivo con el 
                                         código aquí fue mostrar el logo ampliado de la app durante 2-3 seg 
                                         antes de mostrar la pantalla del login.

                     + login_page.dart: Segunda interfaz que ve el usuario. El propósito con el código aquí 
                                        fue mostrar los campos para diligenciar correo y contraseña para
                                        navegar a la siguiente pantalla: home_page.dart. Aquí también contiene
                                        la opción Sign up para registrarse (Es decir si el usuario usa la app por
                                        primera vez).

                     + register_page.dart: Tercera interfaz que ve el usuario. La función con el código aquí, 
                                          es que después de dar click en la opción de "Sign up" de la 
                                          pantalla del login se mostrara una pantalla con los campos 
                                          necesarios para poder registrarse: name, email, password, genre, 
                                          y birthdate. Después de registrado se redirigirá a la pantalla
                                          del Login.

                    + home_page.dart: Cuarta interfaz que ve el usuario. La meta con el código de esta 
                                      interfaz es que después de que el login sea exitoso se lograra mostrar 
                                      una pantalla con datos de un punto de interés turístico de la ciudad 
                                      elegida.
            
            * main.dart: Es el archivo predeterminado que trae Flutter. Aquí solo se agregó código 
                         referente a la configuración de la fecha y de inicio de la app en el splash.
    
    3.pubspec.yaml:
        A) Ruta relativa: touristapp\pubspec.yaml
        B)¿Archivo preexistente?: SI.
        C) Característica: Contiene las dependencias y configuraciones necesarias para que funcione la app.

    4. Archivos mipmap
        A) Ruta relativa: touristapp\android\app\src\main\res
        B) ¿Archivo preexistente?: SI, pero con la imagen de flutter. Para cambio de imagen fue necesario 
            crear los mipmaps en https://icon.kitchen.
        C) Característica: Son archivos que contienen la imagen del icono de la app.


