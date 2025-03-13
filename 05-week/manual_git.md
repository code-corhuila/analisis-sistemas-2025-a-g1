# Manual de Uso de Git  

Este manual proporciona una guía paso a paso para el manejo de Git siguiendo buenas prácticas, incluyendo la creación de ramas y la convención de commits.  

## 📥 Clonar un repositorio  
Para obtener una copia local de un repositorio remoto, usa el siguiente comando:  
```bash
git clone <URL_DEL_REPOSITORIO>
```
Ejemplo:  
```bash
git clone https://github.com/user/repository.git
```

## 🔍 Ver el estado del repositorio  
Para conocer el estado actual del repositorio, archivos modificados o no rastreados, ejecuta:  
```bash
git status
```

## 🌿 Ver ramas disponibles  
Para listar las ramas existentes en el repositorio:  
```bash
git branch
```

## 🔄 Cambiar de rama  
Para moverte entre ramas existentes:  
```bash
git checkout <nombre_rama>
```

## 🆕 Crear una nueva rama  
Para crear una nueva rama de trabajo, primero asegúrate de estar en una rama limpia, generalmente `main`:  
```bash
git checkout main
git pull origin main  # Asegurar que la rama esté actualizada
git checkout -b feature/<nombre_de_la_rama>
```
Ejemplo:  
```bash
git checkout -b feature/user-login
```

## 📌 Buenas prácticas con Conventional Commits  
El formato recomendado para los commits es [Conventional Commits](https://www.conventionalcommits.org/), el cual sigue esta estructura:  
```bash
git commit -m "<tipo>(<área>): <mensaje corto y claro>"
```
Algunos tipos recomendados:  
- ✨ `feat`: Nueva funcionalidad  
- 🐛 `fix`: Corrección de errores  
- 📝 `docs`: Cambios en documentación  
- 🎨 `style`: Cambios de formato (sin afectar código)  
- 🔨 `refactor`: Reestructuración del código sin cambiar su funcionalidad  
- 🚀 `perf`: Mejoras de rendimiento  
- 🧪 `test`: Agregar o modificar pruebas  

Ejemplo de commit:  
```bash
git commit -m "feat(auth): add user login with JWT"
```

## ⬆️ Subir cambios al repositorio remoto  
Para enviar los cambios al repositorio remoto en la rama actual:  
```bash
git push origin feature/<nombre_de_la_rama>
```
Ejemplo:  
```bash
git push origin feature/user-login
```

## 🔄 Obtener los cambios más recientes  
Si necesitas actualizar tu rama con la última versión del repositorio remoto:  
```bash
git pull origin <nombre_de_la_rama>
```
Ejemplo:  
```bash
git pull origin main
```

## ⚠️ Reglas para crear nuevas ramas  
- **Siempre crea nuevas ramas desde `main`**, a menos que necesites heredar cambios de otra rama.  
- **Mantén las ramas limpias** para evitar conflictos innecesarios.  
- **Sigue una convención clara de nombres**, como `feature/`, `fix/`, `hotfix/`.  

Siguiendo estos pasos y buenas prácticas, tu flujo de trabajo con Git será más ordenado y eficiente. 🚀  
