# 🗓 Semana 03: Almacenamiento y Bases de Datos – S3, EBS, RDS, DynamoDB

📅 **Fecha:** 19-25 Agosto 2024  
🎯 **Objetivo:** Comprender los servicios de almacenamiento y bases de datos de AWS para diseñar soluciones de datos escalables.

---

## ✅ Temas cubiertos

### 📦 Amazon S3 (Simple Storage Service)
- **Buckets:** Contenedores globales únicos para objetos
- **Objetos:** Archivos con metadata y datos
- **Clases de almacenamiento:** Standard, IA, One Zone-IA, Glacier, Deep Archive
- **Versioning:** Mantener múltiples versiones de objetos
- **Lifecycle policies:** Automatizar transiciones entre clases
- **Cross-Region Replication:** Replicación automática entre regiones

### 💾 Amazon EBS (Elastic Block Store)
- **Tipos de volúmenes:** GP2, GP3, IO1, IO2, ST1, SC1
- **Snapshots:** Copias de seguridad incrementales
- **Encryption:** Cifrado AES-256 por defecto
- **Multi-Attach:** Volúmenes compartidos entre instancias
- **Fast Snapshot Restore:** Restauración rápida de snapshots

### 🗂️ Amazon EFS (Elastic File System)
- **File system compartido:** Acceso concurrente desde múltiples instancias
- **Performance modes:** General Purpose, Max I/O
- **Throughput modes:** Bursting, Provisioned
- **Encryption:** En tránsito y en reposo
- **Lifecycle management:** Transición automática a IA

### 🗄️ Amazon RDS (Relational Database Service)
- **Motores soportados:** MySQL, PostgreSQL, MariaDB, Oracle, SQL Server
- **Deployment options:** Single-AZ, Multi-AZ, Read Replicas
- **Storage types:** General Purpose SSD, Provisioned IOPS SSD, Magnetic
- **Backup:** Automated backups, manual snapshots
- **Maintenance windows:** Ventanas de mantenimiento programadas

### ⚡ Amazon DynamoDB
- **NoSQL database:** Base de datos completamente administrada
- **Consistency models:** Eventually Consistent, Strongly Consistent
- **Capacity modes:** On-Demand, Provisioned
- **Global Tables:** Replicación multi-región
- **DAX:** DynamoDB Accelerator para caché

### 🧊 Amazon ElastiCache
- **Redis:** Cache en memoria con persistencia
- **Memcached:** Cache en memoria simple
- **Clustering:** Escalado horizontal automático
- **Multi-AZ:** Alta disponibilidad

---

## 🔗 Recursos útiles

### 📖 Documentación Oficial
- [S3 User Guide](https://docs.aws.amazon.com/s3/latest/userguide/Welcome.html)
- [EBS User Guide](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AmazonEBS.html)
- [EFS User Guide](https://docs.aws.amazon.com/efs/latest/ug/whatisefs.html)
- [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html)
- [DynamoDB Developer Guide](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Introduction.html)

### 🎥 Cursos Online
- [AWS Skill Builder: Storage Services](https://explore.skillbuilder.aws/learn/course/external/view/elearning/134/aws-certified-solutions-architect-associate)
- [A Cloud Guru: S3 Deep Dive](https://acloudguru.com/course/amazon-s3-deep-dive)
- [Udemy: AWS Database Services](https://www.udemy.com/topic/aws-database/)

### 📝 Herramientas
- [AWS S3 Transfer Acceleration](https://docs.aws.amazon.com/AmazonS3/latest/userguide/transfer-acceleration.html)
- [AWS Database Migration Service](https://aws.amazon.com/dms/)
- [AWS Schema Conversion Tool](https://aws.amazon.com/dms/schema-conversion-tool/)

---

## 🧪 Lab recomendado

### Lab 1: Configuración de S3 y Políticas
**Objetivo:** Crear bucket S3 con configuración avanzada

**Pasos:**
1. Crear bucket S3 con versioning habilitado
2. Configurar lifecycle policy para transición a IA
3. Crear política de bucket para acceso público controlado
4. Configurar Cross-Region Replication
5. Probar subida y descarga de objetos
6. Configurar CloudFront para distribución

### Lab 2: Configuración de EBS y Snapshots
**Objetivo:** Gestionar volúmenes EBS y backups

**Pasos:**
1. Crear instancia EC2 con volumen EBS
2. Crear snapshot del volumen
3. Crear nuevo volumen desde snapshot
4. Configurar snapshot lifecycle policy
5. Probar restauración de volumen
6. Configurar Fast Snapshot Restore

### Lab 3: Despliegue de RDS Multi-AZ
**Objetivo:** Configurar base de datos relacional de alta disponibilidad

**Pasos:**
1. Crear subnet group para RDS
2. Crear instancia RDS MySQL Multi-AZ
3. Configurar security group para RDS
4. Crear read replica en otra AZ
5. Probar failover automático
6. Configurar backup automático

### Lab 4: DynamoDB y DAX
**Objetivo:** Implementar base de datos NoSQL con caché

**Pasos:**
1. Crear tabla DynamoDB con clave primaria
2. Configurar índices globales secundarios
3. Implementar DAX cluster
4. Crear aplicación que use DAX
5. Probar rendimiento con y sin DAX
6. Configurar Global Tables

---

## 📝 Notas personales

### 💡 Conceptos Clave
- **S3 es el servicio fundamental:** Base para almacenamiento de objetos
- **EBS es para instancias EC2:** Almacenamiento de bloques persistente
- **RDS simplifica bases relacionales:** Sin gestión de infraestructura
- **DynamoDB es serverless:** Escalado automático sin gestión

### ⚠️ Puntos de Atención
- **S3 bucket names:** Deben ser únicos globalmente
- **EBS volúmenes:** Están atados a AZs específicas
- **RDS maintenance:** Programar en ventanas de bajo tráfico
- **DynamoDB capacity:** Planificar para evitar throttling

### 🎯 Para el Examen
- Diferencias entre clases de almacenamiento S3
- Cuándo usar RDS vs DynamoDB
- Configuración de Multi-AZ para alta disponibilidad
- Estrategias de backup y recuperación

### 💰 Consideraciones de Costos
- **S3:** Pagar por almacenamiento y transferencias
- **EBS:** Pagar por volumen y IOPS
- **RDS:** Pagar por instancia y almacenamiento
- **DynamoDB:** Pagar por capacidad y almacenamiento

### 🔒 Seguridad
- **Encryption at rest:** Habilitado por defecto en todos los servicios
- **Encryption in transit:** TLS/SSL para todas las conexiones
- **IAM policies:** Control granular de acceso
- **VPC endpoints:** Acceso privado a servicios AWS

---

## ✅ Checklist

### 📚 Estudio Teórico
- [x] Leer documentación de S3
- [x] Estudiar tipos de volúmenes EBS
- [x] Revisar motores RDS disponibles
- [x] Entender DynamoDB consistency models

### 🧪 Práctica
- [x] Crear bucket S3 con versioning
- [x] Configurar lifecycle policies
- [x] Crear instancia RDS Multi-AZ
- [x] Implementar DynamoDB con DAX

### 📝 Evaluación
- [x] Tomar quiz de almacenamiento
- [x] Completar práctica de bases de datos
- [x] Revisar métricas de rendimiento
- [x] Documentar estrategias de backup

### 🎯 Preparación para Siguiente Semana
- [x] Revisar conceptos de redes
- [x] Preparar para labs de VPC
- [x] Instalar herramientas de networking
- [x] Configurar permisos para servicios de red

---

## 📊 Progreso Semanal

**Tiempo dedicado:** 20 horas  
**Temas dominados:** 88%  
**Labs completados:** 4/4  
**Quizzes aprobados:** 3/3  

**Próximo objetivo:** Redes y Seguridad (VPC, Security Groups, NACLs)
