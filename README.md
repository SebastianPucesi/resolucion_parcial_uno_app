# galeano_pucesi

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


# Proyecto Flutter - Consumo de API REST

## Librerías para Consumir API REST en Flutter

### 1. `http` Package

- **Descripción**: Este es el paquete HTTP estándar de Dart y Flutter. Simple y fácil de usar, pero puede carecer de algunas características avanzadas.
- **Ejemplo Básico**:
  ```dart
  import 'package:http/http.dart' as http;

  Future<void> fetchData() async {
    final response = await http.get('https://api.example.com/data');
    // Procesar la respuesta
  }
  
### 2. `dio` Package

- **Descripción**: Es una biblioteca poderosa para solicitudes HTTP en Dart, con funciones avanzadas como manejo de solicitudes en segundo plano y capacidades de intercepción.
- **Ejemplo Básico**:
  ```dart
  import 'package:dio/dio.dart';

Future<void> fetchData() async {
  try {
    final dio = Dio();
    final response = await dio.get('https://api.example.com/data');
    // Procesar la respuesta
  } catch (error) {
    // Manejar errores
  }
}

### 3. `chopper` Package

- **Descripción**:  Es una biblioteca que genera código Dart para consumir APIs REST. Proporciona una abstracción completa y facilita la definición de servicios.
- **Ejemplo Básico**:
  ```dart
  import 'package:chopper/chopper.dart';

Future<void> fetchData() async {
  final chopper = ChopperClient(
    baseUrl: 'https://api.example.com',
    services: [
      // Definir servicios
    ],
  );
  // Realizar solicitudes usando servicios
}

### Elección de la Librería
La elección depende de las necesidades específicas del proyecto. Para proyectos simples, http puede ser suficiente. Para funcionalidades avanzadas y mayor control, dio es una opción sólida. chopper es ideal para proyectos grandes con una arquitectura más compleja.

### Protocolo API REST
¿Qué es el Protocolo API REST?
REST (Representational State Transfer) es un estilo arquitectónico para diseñar sistemas de red. Elementos clave incluyen:

Recursos: Representan entidades o datos, accesibles a través de URI.
Operaciones CRUD: Utilizan métodos HTTP (GET, POST, PUT, DELETE) para realizar operaciones CRUD en los recursos.
Representación: Los recursos pueden tener múltiples representaciones (JSON, XML), y el cliente y el servidor pueden negociar el formato.
Estado Stateless: Cada solicitud del cliente al servidor debe contener toda la información necesaria.
Ventajas de API REST:
Simplicidad: Fácil de entender y usar.
Escalabilidad: Puede escalar horizontalmente para manejar cargas crecientes.
Flexibilidad: Puede trabajar con diferentes formatos de datos y es independiente del lenguaje.
Desventajas de API REST:
Over-fetching y Under-fetching: Puede traer más o menos datos de los necesarios.
Estado Stateless: Puede requerir más datos en cada solicitud.