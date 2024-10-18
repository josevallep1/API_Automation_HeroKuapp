# RETO TECNICO: QA AUTOMATION para API

Este repositorio fue creado con el proposito de presentar un reto tecnico para
una posision de QA automation.

Se realiza las pruebas a la **API**: https://restful-booker.herokuapp.com/apidoc/index.html

**Condiciones**: Usar para la automatización de estas pruebas KarateDSL. Subir a repo en github con su
respecto ReadMe explicando todo lo necesario.

**Escenarios**: Pruebas para: GetBooking, CreateBooking, UpdateBooking, DeleteBooking.

## Anotaciones:
1. Se crea un aqueotipo basado en las peticiones creando un directorio para cada una.
2. Para las peticiones POST de Creacion y actualizacion de reserva se crean archivos Json con los valores que que van en el encabezado de las peticiones.
3. Se crea un config, que contiene la url base.
4. Se genera la autenticacion, un test que consume el servicio y este se llama desde la aejecucion de los demas test que lo requieren.
5. Se crea un Runner que peude ejecutar 4 pruebas en paralelo.

### Prerrequisitos

* [Oracle Java 21 SDK](https://java.oracle.com)
* [Gradle](https://gradle.org/)
* [Intellij IDE](http://www.jetbrains.com)
