# 🗓 Semana 07: Seguridad Avanzada – KMS, Secrets Manager, Organizations, SCPs, MFA

📅 **Fecha:** 16-22 Septiembre 2024  
🎯 **Objetivo:** Comprender los servicios de seguridad avanzada de AWS y las mejores prácticas para proteger infraestructuras en la nube.

---

## ✅ Temas cubiertos

### 🔐 AWS KMS (Key Management Service)
- **Customer Master Keys (CMK):** Claves maestras para encriptación
- **Symmetric Keys:** Claves simétricas AES-256
- **Asymmetric Keys:** Claves asimétricas RSA y ECC
- **Key Rotation:** Rotación automática de claves
- **Key Policies:** Políticas de acceso a claves
- **Cross-Account Access:** Acceso a claves entre cuentas
- **CloudHSM:** Hardware Security Module para claves

### 🗝️ AWS Secrets Manager
- **Secret Storage:** Almacenamiento seguro de secretos
- **Automatic Rotation:** Rotación automática de credenciales
- **Database Credentials:** Credenciales de bases de datos
- **API Keys:** Claves de API de terceros
- **Integration:** Integración con RDS, Aurora, DocumentDB
- **Cross-Region Replication:** Replicación de secretos entre regiones

### 🏢 AWS Organizations
- **Multi-Account Management:** Gestión centralizada de múltiples cuentas
- **Organizational Units (OUs):** Unidades organizacionales
- **Account Hierarchy:** Jerarquía de cuentas
- **Consolidated Billing:** Facturación consolidada
- **Cross-Account Access:** Acceso entre cuentas
- **Service Control Policies (SCPs):** Políticas de control de servicios

### 📋 Service Control Policies (SCPs)
- **Policy Structure:** Estructura JSON de políticas SCP
- **Deny vs Allow:** Políticas de denegación y permitir
- **Service Restrictions:** Restricciones de servicios AWS
- **Action Restrictions:** Restricciones de acciones específicas
- **Resource Restrictions:** Restricciones de recursos
- **Condition Keys:** Claves de condición para políticas

### 🔒 Multi-Factor Authentication (MFA)
- **Virtual MFA:** Aplicaciones de autenticación
- **Hardware MFA:** Dispositivos físicos de autenticación
- **SMS MFA:** Autenticación por mensaje de texto
- **MFA Enforcement:** Aplicación obligatoria de MFA
- **Conditional Access:** Acceso condicional basado en MFA

### 🛡️ Security Best Practices
- **Principle of Least Privilege:** Principio de menor privilegio
- **Defense in Depth:** Defensa en profundidad
- **Security Monitoring:** Monitoreo de seguridad
- **Incident Response:** Respuesta a incidentes
- **Compliance:** Cumplimiento normativo

---

## 🔗 Recursos útiles

### 📖 Documentación Oficial
- [KMS Developer Guide](https://docs.aws.amazon.com/kms/latest/developerguide/)
- [Secrets Manager User Guide](https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html)
- [Organizations User Guide](https://docs.aws.amazon.com/organizations/latest/userguide/)
- [IAM Best Practices](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html)
- [AWS Security Best Practices](https://aws.amazon.com/architecture/security-identity-compliance/)

### 🎥 Cursos Online
- [AWS Skill Builder: Security Services](https://explore.skillbuilder.aws/learn/course/external/view/elearning/134/aws-certified-solutions-architect-associate)
- [A Cloud Guru: AWS Security Deep Dive](https://acloudguru.com/course/aws-security-deep-dive)
- [Udemy: AWS Security Fundamentals](https://www.udemy.com/topic/aws-security/)

### 📝 Herramientas
- [AWS Policy Generator](https://awspolicygen.s3.amazonaws.com/policygen.html)
- [AWS Policy Simulator](https://policysim.aws.amazon.com/)
- [AWS CloudTrail](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html)

---

## 🧪 Lab recomendado

### Lab 1: Configuración de KMS
**Objetivo:** Crear y gestionar claves de encriptación

**Pasos:**
1. Crear Customer Master Key (CMK)
2. Configurar key policy con permisos mínimos
3. Habilitar key rotation automática
4. Encriptar/desencriptar datos con KMS
5. Configurar cross-account access
6. Probar encriptación de S3 buckets

### Lab 2: Secrets Manager con RDS
**Objetivo:** Gestionar credenciales de base de datos de forma segura

**Pasos:**
1. Crear secreto para credenciales de RDS
2. Configurar rotación automática
3. Integrar con instancia RDS
4. Probar rotación de credenciales
5. Configurar cross-region replication
6. Monitorear acceso a secretos

### Lab 3: AWS Organizations
**Objetivo:** Configurar estructura multi-cuenta

**Pasos:**
1. Crear organización AWS
2. Crear Organizational Units (OUs)
3. Crear cuentas miembro
4. Configurar consolidated billing
5. Implementar SCPs restrictivos
6. Probar acceso entre cuentas

### Lab 4: Service Control Policies
**Objetivo:** Implementar restricciones de servicios

**Pasos:**
1. Crear SCP para restringir servicios
2. Aplicar SCP a OU específica
3. Probar restricciones en cuenta miembro
4. Configurar SCP para costos
5. Implementar SCP para seguridad
6. Monitorear efectividad de políticas

---

## 📝 Notas personales

### 💡 Conceptos Clave
- **KMS es fundamental:** Para encriptación en AWS
- **Secrets Manager es automático:** Rotación sin intervención manual
- **Organizations escala seguridad:** Para empresas grandes
- **SCPs son poderosos:** Pueden bloquear servicios completamente

### ⚠️ Puntos de Atención
- **Key policies críticas:** Configurar correctamente para evitar bloqueos
- **SCP inheritance:** Las políticas se heredan en la jerarquía
- **MFA obligatorio:** Para cuentas root y usuarios privilegiados
- **Secret rotation:** Planificar para evitar interrupciones

### 🎯 Para el Examen
- Diferencias entre KMS y Secrets Manager
- Cuándo usar Organizations vs cuentas separadas
- Configuración de SCPs para restricciones
- Estrategias de encriptación en AWS

### 💰 Consideraciones de Costos
- **KMS:** Costo por clave y por operación de encriptación
- **Secrets Manager:** Costo por secreto por mes
- **Organizations:** Sin costo adicional
- **CloudHSM:** Costo por hora por HSM

### 🔒 Seguridad
- **Encryption at rest:** Habilitado por defecto con KMS
- **Encryption in transit:** TLS/SSL para todas las conexiones
- **Access logging:** CloudTrail para auditoría
- **Compliance:** SOC, PCI DSS, HIPAA, FedRAMP

---

## ✅ Checklist

### 📚 Estudio Teórico
- [x] Leer documentación de KMS
- [x] Estudiar Secrets Manager
- [x] Revisar AWS Organizations
- [x] Entender Service Control Policies

### 🧪 Práctica
- [x] Configurar KMS con key rotation
- [x] Implementar Secrets Manager con RDS
- [x] Crear estructura de Organizations
- [x] Configurar SCPs restrictivos

### 📝 Evaluación
- [x] Tomar quiz de seguridad
- [x] Completar práctica de encriptación
- [x] Revisar logs de auditoría
- [x] Documentar políticas de seguridad

### 🎯 Preparación para Siguiente Semana
- [x] Revisar conceptos de serverless
- [x] Preparar para labs de Lambda
- [x] Instalar herramientas de desarrollo
- [x] Configurar permisos para servicios serverless

---

## 📊 Progreso Semanal

**Tiempo dedicado:** 18 horas  
**Temas dominados:** 85%  
**Labs completados:** 4/4  
**Quizzes aprobados:** 3/3  

**Próximo objetivo:** Arquitecturas Serverless (Lambda, API Gateway, Step Functions, SQS, SNS) 