# 📘 Requisitos Funcionales - Sistema de Carrito de Compras

---

## 🛒 RF1: Registro de Datos Básicos de Persona

### 📌 Descripción
Permite a los actores autorizados registrar a una nueva persona en el sistema de información **Tienda Pepito**, mediante el diligenciamiento de un formulario con información personal básica. Este proceso se realiza accediendo a la URL del sistema.

### 🎭 Actores involucrados
- Administrador  
- Cliente  
- Empleado  

### 📥 Datos de entrada requeridos
- Nombre  
- Apellido  
- Fecha de nacimiento  
- Correo electrónico  
- Dirección  
- Teléfono  

### ⚙️ Comportamiento esperado
El actor diligencia todos los campos requeridos en el formulario de registro. El sistema valida si la persona ya existe o si los datos están completos antes de proceder con el registro.

### 📤 Salidas esperadas
1. Si la persona **ya existe en el sistema**, se muestra una advertencia:  
   `1. La persona ya está registrada.`  
2. Si la persona **no existe y ha ingresado todos los datos requeridos**, se confirma el registro exitoso:  
   `2. Persona registrada con éxito.`  
3. Si la persona **no existe pero ha ingresado datos incompletos**, se solicita completar la información:  
   `3. Revisar datos pendientes.`  

### ⚠️ Restricciones o condiciones especiales
- El sistema no permite registrar personas duplicadas.  
- Todos los campos del formulario son obligatorios.  
- La validación de existencia se realiza mediante coincidencia de correo electrónico o documento (si aplica).

---

## 🧩 RF2: Registro de Roles del Sistema

### 📌 Descripción
Permite registrar los diferentes roles que pueden ser asignados a los usuarios del sistema, asegurando que cada persona tenga únicamente un rol asignado.

### 🎭 Actores involucrados
- Administrador

### 📥 Datos de entrada requeridos
- Nombre del rol  
- Descripción del rol  

### ⚙️ Comportamiento esperado
El administrador diligencia el nombre y descripción del nuevo rol. El sistema valida que no exista un rol con el mismo nombre antes de registrarlo.

### 📤 Salidas esperadas
1. Si el nombre del rol ya existe, el sistema muestra una advertencia:  
   `1. El rol ya existe en el sistema.`  
2. Si el nombre del rol es único, se confirma el registro exitoso:  
   `2. Rol registrado con éxito.`  

### ⚠️ Restricciones o condiciones especiales
- Cada rol debe tener un nombre único.  
- Una persona solo puede tener un único rol asignado.  

---

## 👤 RF3: Registro de Usuario del Sistema

### 📌 Descripción
Permite registrar un nuevo usuario del sistema, vinculándolo con una persona registrada (`RF1`) y un rol asignado (`RF2`). Este proceso es fundamental para el inicio de sesión y la asignación de permisos dentro del sistema.

### 🎭 Actores involucrados
- Administrador

### 📥 Datos de entrada requeridos
- Nombre de usuario (user)  
- Contraseña (password)  
- Código de persona (persona_id) `RF1`  
- Código de rol (rol_id) `RF2`  

### ⚙️ Comportamiento esperado
El administrador diligencia los datos del nuevo usuario, asociando los identificadores de persona y rol previamente registrados. El sistema verifica que no exista un usuario asociado a esa persona.

### 📤 Salidas esperadas
1. Si la persona ya tiene un usuario registrado, se muestra una advertencia:  
   `1. La persona ya tiene un usuario asignado.`  
2. Si el nombre de usuario ya existe, se muestra una advertencia:  
   `2. El nombre de usuario ya está en uso.`  
3. Si los datos son válidos, se confirma el registro exitoso:  
   `3. Usuario registrado con éxito.`  

### ⚠️ Restricciones o condiciones especiales
- Cada persona (`RF1`) puede tener solo un usuario en el sistema.  
- El nombre de usuario debe ser único.  
- La contraseña debe cumplir con las políticas de seguridad establecidas.  
- El rol (`RF2`) debe existir previamente y estar activo.
