# Sistema de Gestión de Notas

## RF => Requermientos Funcionales


RF1: Registrar los datos básicos de las personas

Descripción: Se requiere capturar la información de las personas que intervienente el proceso del sistema de información de gestión notas. 

Dato de entrada: Tipo Documento, Documento, Nombre, Correo, Dirección, Teléfono.

Precondición: 
    La persona que va a realizar el registro, cuente con las credenciales y la autorización para realizar este proceso. 
    El sistema no permitirá duplicar el número de `Documento`, es decir la persona se puede registrar una única vez.

Flujo Normal: 
    1. Usaurio con acceso, ingresar al permiso de `Registro Persona`
    2. LLenar campos `Tipo Documento, Documento, Nombre, Correo, Dirección, Teléfono`. Dónde `Tipo Documento*, Documento*, Nombre*, Correo *, Dirección, Teléfono`.
   
RF2: Registrar estudiantes
    Precondiciones:
        Dependencia: `RF1`

RF3: Registrar Profesores
    Dependencia: `RF1`