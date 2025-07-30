# 🗓 Semana 01: Fundamentos de AWS – IAM, cuentas, regiones y zonas

📅 **Fecha:** [Personalizar según tu cronograma]  
🎯 **Objetivo:** Comprender la base de la infraestructura global de AWS y cómo se gestiona el acceso con IAM.

---

## ✅ Temas cubiertos

### 🌍 Infraestructura Global de AWS
- **Regiones AWS:** Ubicaciones geográficas con múltiples centros de datos
- **Zonas de Disponibilidad (AZs):** Centros de datos físicamente separados dentro de una región
- **Edge Locations:** Puntos de presencia para CloudFront y otros servicios
- **Local Zones:** Extensiones de regiones para aplicaciones de baja latencia

### 🔐 Identity and Access Management (IAM)
- **Usuarios IAM:** Entidades que representan personas o aplicaciones
- **Grupos IAM:** Colecciones de usuarios para facilitar la gestión de permisos
- **Roles IAM:** Permisos temporales para servicios y usuarios
- **Políticas IAM:** Documentos JSON que definen permisos específicos

### 🛡️ Seguridad y Acceso
- **Política de seguridad por defecto:** Denegar todo por defecto
- **Acceso programático:** Claves de acceso para APIs
- **Acceso a consola:** Contraseñas para interfaz web
- **Multi-Factor Authentication (MFA):** Segunda capa de seguridad

### 📋 Prácticas Recomendadas
- Principio de menor privilegio
- Rotación regular de claves de acceso
- Uso de roles en lugar de claves de acceso para aplicaciones
- Monitoreo de actividad con CloudTrail

---

## 🔗 Recursos útiles

### 📖 Documentación Oficial
- [AWS Global Infrastructure](https://aws.amazon.com/about-aws/global-infrastructure/)
- [IAM User Guide](https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html)
- [IAM Best Practices](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html)

### 🎥 Cursos Online
- [AWS Skill Builder: Cloud Practitioner Essentials](https://explore.skillbuilder.aws/learn/course/external/view/elearning/132/aws-cloud-practitioner-essentials)
- [AWS Skill Builder: Solutions Architect Associate](https://explore.skillbuilder.aws/learn/course/external/view/elearning/134/aws-certified-solutions-architect-associate)
- [A Cloud Guru: AWS IAM Deep Dive](https://acloudguru.com/course/aws-iam-deep-dive)

### 📝 Herramientas
- [AWS Policy Generator](https://awspolicygen.s3.amazonaws.com/policygen.html)
- [AWS Policy Simulator](https://policysim.aws.amazon.com/)
- [IAM Access Analyzer](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer.html)

---

## 🧪 Lab recomendado

### Lab 1: Configuración Básica de IAM
**Objetivo:** Crear usuarios, grupos y políticas básicas

**Pasos:**
1. Crear un usuario IAM con acceso a consola
2. Configurar MFA para el usuario
3. Crear un grupo "Developers"
4. Crear política personalizada para acceso a S3
5. Asociar política al grupo
6. Agregar usuario al grupo

### Lab 2: Roles y Permisos Temporales
**Objetivo:** Configurar roles para servicios AWS

**Pasos:**
1. Crear rol para EC2 con permisos de S3
2. Crear rol para Lambda con permisos de DynamoDB
3. Configurar trust policy para servicios
4. Probar acceso temporal

### Lab 3: Monitoreo de Acceso
**Objetivo:** Configurar CloudTrail y monitoreo

**Pasos:**
1. Habilitar CloudTrail en la cuenta
2. Configurar alertas de CloudWatch
3. Revisar logs de actividad
4. Configurar notificaciones de eventos críticos

---

## 📝 Notas personales

### 💡 Conceptos Clave
- **IAM es global:** No está atado a regiones específicas
- **AZs son físicamente separadas:** Mínimo 2 por región, máximo 6
- **Edge Locations:** Más de 400 ubicaciones globales
- **Principio de menor privilegio:** Solo los permisos necesarios

### ⚠️ Puntos de Atención
- **Nunca usar root:** Crear usuarios IAM para operaciones diarias
- **Rotar claves:** Cambiar claves de acceso regularmente
- **MFA obligatorio:** Para todos los usuarios con acceso a consola
- **Políticas específicas:** Evitar políticas demasiado permisivas

### 🎯 Para el Examen
- Diferencias entre usuarios, grupos y roles
- Sintaxis de políticas IAM (JSON)
- Jerarquía de permisos (explicit deny > explicit allow > implicit deny)
- Servicios que pueden asumir roles

---

## ✅ Checklist

### 📚 Estudio Teórico
- [x] Leer módulo IAM en Skill Builder
- [x] Ver video de introducción a AWS
- [x] Revisar documentación de IAM
- [x] Estudiar políticas de seguridad por defecto

### 🧪 Práctica
- [x] Hacer lab IAM básico
- [x] Configurar MFA en cuenta personal
- [x] Crear políticas personalizadas
- [x] Configurar roles para servicios

### 📝 Evaluación
- [x] Tomar quiz rápido de IAM
- [x] Completar práctica de políticas
- [x] Revisar CloudTrail logs
- [x] Documentar mejores prácticas

### 🎯 Preparación para Siguiente Semana
- [x] Revisar conceptos de EC2
- [x] Preparar cuenta para labs de computación
- [x] Instalar AWS CLI
- [x] Configurar credenciales de acceso

---

## 📊 Progreso Semanal

**Tiempo dedicado:** 15 horas  
**Temas dominados:** 90%  
**Labs completados:** 3/3  
**Quizzes aprobados:** 2/2  

**Próximo objetivo:** Computación en la Nube (EC2, Auto Scaling, Load Balancers)
