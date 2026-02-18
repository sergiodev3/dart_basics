# 🎯 Dart Básico - Ejemplos Educativos

Este repositorio contiene ejemplos refactorizados y mejorados de la sintaxis básica de **Dart**, diseñados para ser una introducción completa al lenguaje moderno de Dart.

**Destinado para:** Alumnos de sexto semestre del CBTIS #258

---

## 📚 Contenido del Repositorio

### 1. 📦 Variables (`01_variables/`)
Conceptos fundamentales sobre tipos de datos y variables en Dart.

- **1_helloworld.dart** - Programa básico "Hola Mundo"
- **2_variables.dart** - Tipos de variables básicas (String, int, double, List, Map)
- **2.1_variables.dart** - Variables con tipos explícitos
- **3_var_late.dart** - Palabra clave `late` (inicialización diferida)
- **4_var_late2.dart** - `late` con operaciones asíncronas
- **5_var_final.dart** - Palabra clave `final` (asignación única en runtime)
- **5.1_var_final.dart** - `final` en clases y objetos
- **6_var_const.dart** - Palabra clave `const` (constantes en tiempo de compilación)
- **7_ejercicios_var.dart** - Ejercicio: Perfil personal con variables
- **8_ejercicios_varmod.dart** - Ejercicio: Uso de var, late, final y const
- **09_var.dart** - Ejercicio: Conversor de temperatura

**Conceptos clave:** `var`, `late`, `final`, `const`, inferencia de tipos, null safety

---

### 2. ➕ Operadores (`02_operadores/`)
Todos los operadores disponibles en Dart con ejemplos prácticos.

- **1_operadores_arit.dart** - Operadores aritméticos (+, -, *, /, ~/, %)
- **2_operadores_increment.dart** - Incremento y decremento (++, --)
- **03_operador_igualdre.dart** - Operadores de igualdad y relacionales (==, !=, >, <, >=, <=)
- **04_operador_pruebatipo.dart** - Operadores de tipo (is, is!, as)
- **05_operadores_asigna.dart** - Operadores de asignación (=, +=, -=, *=, /=)
- **06_operadores_logicos.dart** - Operadores lógicos (!, ||, &&)
- **07_ejercicios_opera.dart** - Ejercicios: IMC, áreas, descuentos

**Conceptos clave:** Operaciones matemáticas, comparaciones, validación de tipos, lógica booleana

---

### 3. 🔄 Control de Flujo (`03_controlflujo/`)
Estructuras de control para dirigir el flujo de ejecución.

- **1_for.dart** - Bucle `for` tradicional
- **1.2_foreach.dart** - Método `forEach` para colecciones
- **2_while.dart** - Bucle `while` (evalúa antes)
- **3_do_while.dart** - Bucle `do-while` (evalúa después)
- **4_if_branches.dart** - Condicionales `if-else` y operador ternario
- **5_ejem_if.dart** - Ejemplo: Sistema de aprobación de crédito
- **6_switch.dart** - Sentencia `switch` básica
- **7_switch2.dart** - Sistema de inventario con switch interactivo

**Conceptos clave:** Bucles, iteración, condicionales, switch, control de flujo

---

### 4. ⚠️ Manejo de Errores (`04_error_handling/`)
Técnicas para manejar excepciones y errores de forma robusta.

- **01_try_catch.dart** - Try-catch básico y bloque finally
- **01_trow.dart** - Lanzar excepciones con `throw`
- **02_trow_exception_perso.dart** - Excepciones personalizadas
- **03_error.dart** - Manejo de `ArgumentError`
- **04_try_catch.dart** - Try-catch con múltiples tipos de errores
- **05_catch_on.dart** - Capturar tipos específicos con `on`
- **06_catch_practico.dart** - Simulación de errores de red/HTTP

**Conceptos clave:** try-catch-finally, throw, excepciones personalizadas, manejo de errores

---

### 5. 🔧 Funciones (`05_funciones/`)
Creación y uso de funciones en Dart.

- **01_funciones.dart** - Funciones básicas (con/sin parámetros, con/sin retorno)
- **02_ejerciciofunciones.dart** - Ejercicio: Sistema de crédito con funciones
- **03_funciones.dart** - Funciones variadas (pagos, días de la semana)
- **03_funcionesflecha.dart** - Funciones flecha (arrow functions)
- **04_ejerciciofunciones.dart** - Ejercicio: Validación de crédito simplificada
- **05_ejercicio2funciones.dart** - Ejercicio: Funciones combinadas

**Conceptos clave:** Parámetros, retorno de valores, funciones flecha, nomenclatura camelCase

---

### 6. ⌨️ Entrada de Usuario (`06_inputs_cli/`)
Interacción con el usuario a través de la consola.

- **01_saludo.dart** - Lectura básica de entrada con `stdin`
- **02_mayoredad.dart** - Validación de edad con manejo de errores
- **03_tablamulti.dart** - Generador de tablas de multiplicar
- **04_calculadora.dart** - Calculadora básica interactiva
- **05_faltas.dart** - Sistema de verificación de asistencias

**Conceptos clave:** stdin, readLineSync, validación de entrada, conversión de tipos

---

## 🚀 Cómo Usar Este Repositorio

### Requisitos Previos
- Dart SDK instalado (versión 2.12 o superior)
- Editor de código (VS Code recomendado con extensión de Dart)

### Ejecutar un Archivo

bash
# Navegar a la carpeta del proyecto
cd dart

# Ejecutar cualquier archivo
dart run 01_variables/1_helloworld.dart

# O navegar a una carpeta específica
cd 02_operadores
dart run 1_operadores_arit.dart


---

## ✨ Características de Este Código

### ✅ Mejoras Implementadas (2026)

1. **Nomenclatura Estándar**
   - ✓ camelCase para funciones y variables
   - ✓ PascalCase para clases
   - ✓ Nombres descriptivos en español

2. **Documentación Completa**
   - ✓ Comentarios `///` en todas las funciones principales
   - ✓ Explicaciones de parámetros y retornos
   - ✓ Ejemplos de uso claros

3. **Código Limpio**
   - ✓ Sin variables redundantes
   - ✓ Sin código inalcanzable (dead code)
   - ✓ Validación apropiada de entradas
   - ✓ Manejo de errores robusto

4. **Presentación Mejorada**
   - ✓ Formato visual atractivo con Unicode
   - ✓ Emojis para mejor legibilidad
   - ✓ Mensajes descriptivos de salida

5. **Null Safety**
   - ✓ Manejo apropiado de valores nulos
   - ✓ Uso de operadores `?`, `!`, `??`

---

## 📖 Recursos Adicionales

### Documentación Oficial
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)
- [Effective Dart](https://dart.dev/guides/language/effective-dart)
- [Dart API Reference](https://api.dart.dev/)

### Temas Cubiertos por Módulo

| Módulo | Conceptos | Dificultad |
|--------|-----------|------------|
| Variables | var, late, final, const, tipos básicos | ⭐ Básico |
| Operadores | Aritméticos, lógicos, relacionales, tipo | ⭐ Básico |
| Control de Flujo | for, while, if-else, switch | ⭐⭐ Intermedio |
| Errores | try-catch, throw, excepciones | ⭐⭐ Intermedio |
| Funciones | Declaración, parámetros, retornos | ⭐⭐ Intermedio |
| Entrada CLI | stdin, validación, conversión | ⭐⭐⭐ Avanzado |

---

## 🎓 Recomendaciones de Estudio

### Para Principiantes
1. Comienza con `01_variables/` - Entiende los tipos de datos
2. Continúa con `02_operadores/` - Aprende a manipular datos
3. Practica con `03_controlflujo/` - Controla el flujo del programa

### Para Estudiantes Intermedios
4. Domina `04_error_handling/` - Manejo robusto de errores
5. Explora `05_funciones/` - Organiza tu código
6. Practica con `06_inputs_cli/` - Crea programas interactivos

### Consejos
- 💡 Ejecuta cada archivo y observa la salida
- ✏️ Modifica los valores y experimenta
- 🔍 Lee los comentarios con atención
- 🏋️ Intenta resolver los ejercicios sin mirar la solución primero

---

## 🐛 Solución de Problemas

### Error: "Dart SDK no encontrado"
bash
# Verificar instalación
dart --version

# Instalar desde: https://dart.dev/get-dart


### Error: "No such file or directory"
bash
# Asegúrate de estar en la carpeta correcta
pwd
cd /ruta/al/proyecto/dart


### Advertencias del Analizador
- ⚠️ "Dead code" - Código inalcanzable (ya corregido en v2026)
- ⚠️ "Unused import" - Importación no utilizada
- ℹ️ Estas advertencias no impiden la ejecución

---

## 📝 Historial de Versiones

### Versión 2.0 (Febrero 2026)
- ✅ Refactorización completa de 39 archivos
- ✅ Corrección de código inalcanzable
- ✅ Mejora de nomenclatura y documentación
- ✅ Validación robusta de entradas
- ✅ Manejo de errores mejorado

### Versión 1.0 (2023-2024)
- Código original para aprendizaje básico

---

## 👨‍🏫 Autor y Contacto

**CBTIS #258**  
Sexto Semestre - Programación en Dart

---

## 📄 Licencia

Este proyecto es material educativo de uso libre para estudiantes del CBTIS #258.

---

## 🌟 Próximos Temas

Temas que se pueden agregar en el futuro:
- Programación Orientada a Objetos (Clases, Herencia, Polimorfismo)
- Programación Asíncrona (Future, async/await, Stream)
- Colecciones Avanzadas (Set, Iterables, operadores)
- Genéricos y Tipos Avanzados
- Paquetes y Dependencias

---

**¡Feliz aprendizaje! 🎉**
