# KarateApiTests

## Descripción 

Este proyecto tiene como objetivo implementar pruebas automatizadas sobre servicios REST utilizando Karate Framework.

Se utiliza la API pública JSONPlaceholder para simular operaciones CRUD sobre el recurso "posts".

La solución implementada se encuentra en el feature `api-test-karate.feature`, en el cual se ejecuta un flujo completo de pruebas que valida el comportamiento de los servicios.

Las pruebas incluyen:

- Métodos HTTP: GET, POST, PATCH, PUT y DELETE.
- Validación de códigos de estado HTTP.
- Validación de la estructura de la respuesta en formato JSON.
- Validación de datos específicos dentro de la respuesta.
- Manejo de datos dinámicos, capturando y reutilizando el ID generado en la creación de un recurso.


---

## Instrucciones de ejecución

Para ejecutar este proyecto de pruebas automatizadas, es necesario contar con los siguientes prerrequisitos:

- Java 21.0.11
- Maven instalado y configurado
- IntelliJ IDEA
- 
Una vez se tenga el ambiente configurado, seguir estos pasos:

1. Clonar el repositorio del proyecto desde el sistema de control de versiones:
```bash
   git clone https://github.com/EmilyMartinezA/KarateApiTests
```
2. Ingresar al directorio del proyecto:
```bash
   cd KarateApiTests
```
3. Ejecutar las pruebas automatizadas utilizando Maven:
```bash
   mvn test
```
El proyecto permite ejecutar las pruebas en diferentes ambientes mediante la variable `karate.env`. Por ejemplo:

mvn test -Dkarate.env=dev

Durante la ejecución, Karate generará reportes automáticos con el detalle de cada escenario, incluyendo las solicitudes (request), respuestas (response) y validaciones realizadas.

Los reportes se pueden encontrar en la siguiente ruta dentro del proyecto:
```bash
target/karate-reports
```
Se recomienda abrir el archivo HTML generado para visualizar los resultados de manera detallada.

---

