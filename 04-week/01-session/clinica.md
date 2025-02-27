RF1: Registro de datos básicos de los usuarios del sistema.

Descripción: Se requiere registrar los datos básicos de los futuros usuarios del sistema, para ello se debe tener en cuenta los siguientes campos de entrada

- nombre
- fecha nacimiento
- correo
- tipo documento
- numero de documento
- telefono

Flujo: 
    2. Ingresar al formulario `Registro de Personas`
    3. Diligenciar datos solicitados
    4. Realizar confirmación del reggistro

Precondición:
    1. Usuario administrador debe estar autenticado

Postcondición:
    1. Que la persona no este previamente registrada

RF Ref: N/A



RF2 - Registro de historia clínica de los pacientes

Descripción:
Se requiere registrar la historia clínica de los pacientes en el sistema. Este requerimiento tiene como referencia el registro de personas (RF1) y se enfoca exclusivamente en el campo adicional de historia clínica.

Campos de entrada:
    Historia clínica

Flujo:
  1. Ingresar al formulario Registro de Historia Clínica.
  2. Diligenciar la historia clínica del paciente.
  3. Realizar la confirmación del registro.
     
Precondición:
    El usuario administrador debe estar autenticado.
    El paciente debe estar previamente registrado como persona en el sistema.
Postcondición:
    La historia clínica queda asociada al paciente registrado.
    RF Referencia:
    RF1: Registro de datos básicos de los usuarios del sistema.