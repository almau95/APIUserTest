# Karate API Tests

Este proyecto contiene pruebas automatizadas para la API pública de GoRest usando el framework Karate.

## Requisitos
- Java 8 o superior
- Maven
- Git
- Yarn

## Ejecución de pruebas localmente
1. Clona el repositorio.
	 git clone https://github.com/almau95/APIUserTest.git

2. Accede al directorio del proyecto
3. Instalar las dependencias de Maven
	mvn clean install

4. Ejecuta `mvn test` para correr las pruebas.

## Flujo de CI
El flujo de integración continua está configurado en GitHub Actions para ejecutar las pruebas automáticamente cuando se realicen *push* a la rama `main`.