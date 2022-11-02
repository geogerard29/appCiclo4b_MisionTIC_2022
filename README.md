NOMBRE DEL PROYECTO: touristapp.

ESTADO: Sprint 3 terminado.

DESCRIPCION: Desarrollo del Sprint 3 del Ciclo 4b.

ARCHIVOS: Para el Sprint 3 se desarrollaron los siguientes archivos:

    1. images del directorio assets: 
         Se insertó dentro de la carpeta images las imágenes de todos los sitios turísticos a mostrar.

    2. "subdirectorios" models, pages y repository de lib y archivos main.dart y firebase_options.dart
        Dentro de lib se realizó lo siguiente:

            * En models: Se creó el archivo site.dart y se modificó el archivo user.dart

                      + site.dart: Con este se modeló el identificador del sitio (UID), foto del sitio 
                                   (photo), nombre del sitio (nameSite), descripción general del sitio
                                   (generalDescription), puntuación (rating), ciudad (town), departamento
                                   (department), descripción detallada del sitio (detaileddescription) e 
                                   información extra sobre el sitio turístico (moreInformation). También se
                                   creó el método fromJson, toJson y los respectivos getters y setters.

                      + user.dart: La modificación consistió en agregar el atributo UID, el cual se refiere 
                                   al identificador del usuario, así como su getter, setter e incorporación
                                   dentro de los métodos fromJson y toJson.

            * En pages: Dentro de pages se creó el archivo poidetails_page.dart y se modificó los
                        archivos login_page, register_page y home_page.

                     + poidetails_page.dart: Este archivo contiene una interfaz que muestra el nombre,
                                             foto ampliada, ciudad, departamento, descripción detallada e
                                             información extra sobre el sitio(POI) turístico; está interfaz
                                             se ejecuta una vez se haya oprimido el POI en la interfaz 
                                             de HomePage.

                     + login_page.dart: La modificación consistió en agregar código referente a las 
                                        excepciones más comunes cuando el proceso de login no es exitoso.
                                        Estas son: coreo y contraseña sin digitar, correo mal escrito 
                                        (invalid-email), correo no registrado (user-not-found), contraseña
                                        incorrecta (wrong-password) y conexión no exitosa a internet
                                        (network-request-failed).

                     + register_page.dart: La modificación consistió en agregar código referente a las 
                                        excepciones más comunes cuando el proceso de Registro no es exitoso.
                                        Estas son: correo mal escrito (invalid-email), contraseña con menos
                                        de 6 caracteres (weak-password), correo ya registrado (email-already-
                                        in-use) y conexión no exitosa a internet (network-request-failed).

                     + home_page.dart: En este archivo se desarrolló código para una interfaz que muestre
                                      un listado de los POI a visitar de la ciudad. Cada POI tendrá una foto
                                      pequeña, el nombre del POI, una descripción corta o general y una
                                      puntuación. Con esta interfaz se asegura que al oprimir un POI se 
                                      muestre en otra pantalla (PoiDetailsPage) información detallada.

            * Creación de repository: Se creó un "subdrirectorio" denominado repository y contiene un archivo
                                      con nombre firebase_api.dart.

                    + firebase_api.dart: En este archivo se creó métodos para el proceso de registro y login
                                         en firebase authentication y el método para crear un usuario en
                                         firestore database (es decir para almacenar los datos que ingresa el
                                         usuario en el registro).
            
            * main.dart: Para el Sprint 3 aquí se pegó líneas de código que provee la página de firebase para
                         terminar de configurar firebase en el proyecto.

            * firebase_options.dart: Es un archivo que automáticamente se creó después de que el proceso de 
                                     configuración de firebase fue exitoso. Aquí no se hace ninguna modificación.
    
    3. pubspec.yaml: Dentro de este se escribieron las dependencias para que Firebase funcione en el proyecto.

    4. Archivo build.gradle:
        A) Ruta relativa: touristapp\android\app\build.gradle
        B)¿Archivo preexistente?: SI.
        C) Modificación: Se agregó en la línea 50 lo siguiente: minSdkVersion 19; y en la línea 54:
                         multiDexEnabled true
