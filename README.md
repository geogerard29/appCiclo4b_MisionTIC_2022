NOMBRE DEL PROYECTO: touristapp.

ESTADO: Sprint 4 terminado.

DESCRIPCION: Desarrollo del Sprint 4 del Ciclo 4b

ARCHIVOS: Para el Sprint 4 se desarrollaron los siguientes archivos:

    1. "subdirectorios" models y pages de lib y archivos main.dart y boxes.dart 
        Dentro de lib se realizò lo siguiente:

            * En models: Se creó el archivo local_site.dart y el archivo local_site.g.dart

                      + local_site.dart: Con este se modeló los atributos que se van a almacenar con hive: 
                                         identificador del sitio (id), foto del sitio (photo), nombre del sitio 
                                         (nameSite), descripción general del sitio (generalDescription), 
                                         puntuación (rating), ciudad (town), departamento (department), 
                                         descripción detallada del sitio (detaileddescription), información extra 
                                         sobre el sitio turístico (moreInformation), latidud (latitude) y
                                         longitud (longitude).

                      + local_site.g.dart: Este archivo se refiere al adaptador que va a necesitar local_site.dart
                                           para almacenamiento con Hive.

            * En pages: Dentro de pages se creó el archivo poidetailsfavorites_page.dart, favorites_page.dart,
                        location.dart y location_favorites.dart. Se agregó código al archivo poidetails_page.dart
                        y se modificaron los estilos de los archivos login_page y register_page. 

                     + poidetailsfavorites_page.dart: Este archivo corresponde a información de detalle de los
                                                      sitios turísticos marcados como favoritos. Desde la parte
                                                      visual es lo mismo que el archivo poidetails_page.dart
                                                      porque muestra el nombre, la foto, ciudad, departamento,
                                                      información detallada e información extra; pero su 
                                                      diferencia es que aquí el código se realiza para mostrar
                                                      información almacenada con Hive y no la almacenada con
                                                      firebase. También contiene código para navegar a la
                                                      interfaz del archivo location_favorites_Page.dart.

                     + favorites_page.dart: Este archivo se refiere a la interfaz que tiene la app móvil y cuyo
                                            propósito es mostrar en pantalla una lista de los sitios
                                            marcados como favoritos. Esta interfaz muestra la foto, nombre
                                            del sitio, pequeña descripción y puntuación.

                     + location.dart: Este archivo corresponde a la interfaz que muestra la localización en la
                                      API de Google Maps del sitio turístico de la interfaz de poiDetailsPage
                                      (la que contiene información a detalle de cualquiera de los sitios de
                                      la lista principal del HomePage y que está almacenada en Firebase.

                     + location_favorites.dart: Interfaz que muestra la localización en la API de Google Maps
                                                del sitio turístico de la interfaz de poiDetailsFavoritesPage.
                                                (la que contiene información a detalle de cualquiera de los 
                                                sitios de la lista FavoritesPage y que está almacenada con Hive).                                                
                                                En otras palabras, desde lo visual es lo mismo que location.dart 
                                                pero con código que maneja información con Hive.

                     + poidetails_page.dart: Es en este archivo donde se implementó código que permite capturar
                                             la información almacenada en Firebase para almacenarla con Hive
                                             justo cuando se oprime el icono del corazon. También se agregó
                                             código para navegación a la interfaz del archivo location_page.dart.

                     + login_page: Los cambios a los estilos que se realizaron son: color, tipo y grosor de 
                                   borde de los campos de correo y contraseña; se colocaron iconos de correo y 
                                   contraseña; y se implementó la parte de ocultar y revelar contraseña.

                     + register_page: Los cambios a los estilos que se realizaron son: color, tipo y grosor de 
                                      borde de todos los campos a diligenciar; se colocaron iconos de nombre, 
                                      correo y contraseña; y se implementó la parte de ocultar y revelar 
                                      contraseña.

            * main.dart: Para el Sprint 4 aquí se escribieron líneas de código relacionadas con Hive.

            * boxes.dart: Son como una especie de cajas en donde se va a almacenar la información con hive.
    
    3. pubspec.yaml: Dentro de este se implementaron las dependencias de google_maps_flutter: 2.2.1 y
                     hive: ^2.2.3, y la dependencia de desarrollo hive_generator: ^2.0.0

    4. Archivo build.gradle:
        A) Ruta relativa: touristapp\android\app\build.gradle
        B) ¿Archivo preexistente?: SI.
        C) Modificación: Se cambió en la línea 50 el minSdkVersion 19 por minSdkVersion 20.

    5. Archivo AndroidManifest.xml:
        A) Ruta relativa: touristapp\android\app\src\main\AndroidManifest.xml
        B) ¿Archivo preexistente?: SI.
        C) Modificación: Se configuró en la línea 7 y 8 la API key de Google Maps.
