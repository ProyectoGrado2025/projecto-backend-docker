# Requisitos previos:
Antes de ejecutar el proyecto, asegúrate de tener instalado lo siguiente:
  - Docker Desktop
  - WSL 2 (en Windows, para que Docker funcione correctamente)
  - Git
  - Visual Studio Code (opcional, recomendado para trabajar el código)
  - XAMPP (para gestionar phpMyAdmin y bases de datos)
  - Acceso a phpMyAdmin desde XAMPP

# Paso 1: clonar el repositorio con submódulos
  - Abre una terminal en la carpeta donde se quiera y clona el proyecto ejecutando:
git clone --recurse-submodules https://github.com/ProyectoGrado2025/proyecto-backend-docker
  - Si ya lo habías clonado sin --recurse-submodules, puedes arreglarlo con:
git submodule update --init --recursive
  - Posicionarse sobre la carpeta
cd projecto-backend-docker

# Paso 2: importar las bases de datos (estructura y datos de usuarios)
  - Abre XAMPP y activa MySQL y Apache.
  - Accede a phpMyAdmin.
  - Importa los archivos SQL proporcionados dentro del proyecto
  - Crea dos nuevas bases de datos usando los scripts incluidos (si no existen ya): restaurantv1 y usersv1

# Paso 3: construir y levantar los contenedores
  - Desde la carpeta raíz del proyecto, ejecuta:
docker-compose up --build
  - Esto construirá y levantará los tres servicios:
    * API de Restaurante (localhost:8080)
    * Microservicio de Emails (localhost:8081)
    * Microservicio de Usuarios (localhost:8082)
  - Si se ha hecho todo bien los servicios se ejecutarán
    
# Volver a levantar los servicios
  - Una vez construidos por primera vez, no necesitas volver a usar --build a menos que hayas modificado código o dependencias. Puedes usar:
docker-compose up
  - O también puedes usar Docker Desktop para iniciar o parar los contenedores desde su interfaz gráfica.

# Detener los servicios
  - Esto detendrá y eliminará los contenedores, pero no borra las imágenes ni los volúmenes.
docker-compose down

# Actualizar tu copia local (con submódulos)
  - Si ya tienes una copia del proyecto y quieres traer los últimos cambios:
"git pull origin main"
"git submodule update --init --recursive"

# Comprobaciones y avisos importantes
  - Antes de continuar con la ejecución del proyecto, asegúrate de lo siguiente:
      * MySQL debe estar ejecutándose en el puerto 3306 (puerto por defecto).
      * Puedes comprobarlo desde la configuración de XAMPP.
      * Si lo cambiaste, actualiza también los archivos application.properties de los tres servicios.

      * Docker Desktop debe estar abierto y funcionando correctamente.
      * Si usas Windows, asegúrate de que WSL 2 está habilitado como backend de Docker.

      * No debe haber otros procesos usando los puertos 8080, 8081 o 8082.
      * Si están ocupados, los servicios no podrán iniciar correctamente.

      * No ejecutes docker-compose up como administrador/root innecesariamente, ya que puede generar archivos con permisos incorrectos en el sistema de archivos compartido.

      * Asegúrate de que los submódulos están correctamente descargados. Si dudas, ejecuta:
      * git submodule update --init --recursive
