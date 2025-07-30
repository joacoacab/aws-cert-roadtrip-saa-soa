# 🗓 Semana 05: Bases de Datos Avanzadas – Aurora, RDS, DynamoDB, Caching

📅 **Fecha:** 2-8 Septiembre 2024  
🎯 **Objetivo:** Comprender los servicios de bases de datos avanzadas de AWS y estrategias de alta disponibilidad para datos.

---

## ✅ Temas cubiertos

### 🗄️ Amazon RDS Avanzado
- **Multi-AZ Deployment:** Alta disponibilidad con failover automático
- **Read Replicas:** Escalado de lectura para mejorar rendimiento
- **Backup y Recovery:** Automated backups, manual snapshots, point-in-time recovery
- **Maintenance Windows:** Ventanas de mantenimiento programadas
- **Parameter Groups:** Configuración de parámetros de base de datos
- **Option Groups:** Configuración de opciones específicas del motor

### ⚡ Amazon Aurora
- **Aurora MySQL:** Compatible con MySQL 5.7 y 8.0
- **Aurora PostgreSQL:** Compatible con PostgreSQL 10, 11, 12, 13, 14
- **Aurora Serverless:** Escalado automático sin gestión de capacidad
- **Aurora Global Database:** Replicación multi-región para DR
- **Aurora Multi-Master:** Escritura distribuida en múltiples instancias
- **Aurora Backtrack:** Rollback a punto específico en el tiempo

### 🔄 DynamoDB Avanzado
- **Global Tables:** Replicación automática multi-región
- **DAX (DynamoDB Accelerator):** Caché en memoria para lecturas rápidas
- **Streams:** Captura de cambios en tiempo real
- **Backup y Restore:** On-demand backups y point-in-time recovery
- **TTL (Time To Live):** Expiración automática de elementos
- **Transactions:** Operaciones ACID en DynamoDB

### 🧊 Caching Strategies
- **ElastiCache Redis:** Caché en memoria con persistencia
- **ElastiCache Memcached:** Caché en memoria simple
- **Redis Clustering:** Escalado horizontal automático
- **Redis Multi-AZ:** Alta disponibilidad con failover
- **Redis Replication:** Read replicas para escalado de lectura

### 🔗 Database Connectivity
- **RDS Proxy:** Pool de conexiones administrado
- **Aurora Serverless v2:** Escalado automático de capacidad
- **Connection Pooling:** Gestión eficiente de conexiones
- **SSL/TLS:** Encriptación en tránsito
- **VPC Endpoints:** Acceso privado a servicios de base de datos

---

## 🔗 Recursos útiles

### 📖 Documentación Oficial
- [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html)
- [Aurora User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
- [DynamoDB Developer Guide](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Introduction.html)
- [ElastiCache User Guide](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Welcome.html)
- [RDS Proxy User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-proxy.html)

### 🎥 Cursos Online
- [AWS Skill Builder: Database Services](https://explore.skillbuilder.aws/learn/course/external/view/elearning/134/aws-certified-solutions-architect-associate)
- [A Cloud Guru: Aurora Deep Dive](https://acloudguru.com/course/amazon-aurora-deep-dive)
- [Udemy: AWS Database Services](https://www.udemy.com/topic/aws-database/)

### 📝 Herramientas
- [AWS Database Migration Service](https://aws.amazon.com/dms/)
- [AWS Schema Conversion Tool](https://aws.amazon.com/dms/schema-conversion-tool/)
- [AWS Database Migration Hub](https://aws.amazon.com/dms/migration-hub/)

---

## 🧪 Lab recomendado

### Lab 1: Configuración de RDS Multi-AZ
**Objetivo:** Crear base de datos RDS con alta disponibilidad

**Pasos:**
1. Crear subnet group para RDS en múltiples AZs
2. Crear instancia RDS MySQL Multi-AZ
3. Configurar security group para RDS
4. Crear read replica en otra AZ
5. Probar failover automático
6. Configurar backup automático y snapshots

### Lab 2: Aurora Serverless v2
**Objetivo:** Implementar Aurora Serverless con escalado automático

**Pasos:**
1. Crear cluster Aurora MySQL Serverless v2
2. Configurar ACU mínimo y máximo
3. Crear instancia writer y reader
4. Probar escalado automático bajo carga
5. Configurar Aurora Global Database
6. Probar failover entre regiones

### Lab 3: DynamoDB con DAX
**Objetivo:** Optimizar DynamoDB con caché en memoria

**Pasos:**
1. Crear tabla DynamoDB con clave primaria
2. Configurar índices globales secundarios
3. Implementar cluster DAX
4. Crear aplicación que use DAX
5. Probar rendimiento con y sin DAX
6. Configurar DynamoDB Streams

### Lab 4: ElastiCache Redis Cluster
**Objetivo:** Configurar caché distribuido con Redis

**Pasos:**
1. Crear subnet group para ElastiCache
2. Configurar cluster Redis con Multi-AZ
3. Crear parameter group personalizado
4. Configurar security group para ElastiCache
5. Probar conectividad desde aplicación
6. Configurar backup y snapshots

---

## 📝 Notas personales

### 💡 Conceptos Clave
- **Multi-AZ es crítico:** Para bases de datos de producción
- **Read Replicas escalan lectura:** No escritura
- **Aurora es más rápido:** Hasta 5x mejor rendimiento que MySQL
- **DAX reduce latencia:** Hasta 10x más rápido que DynamoDB directo

### ⚠️ Puntos de Atención
- **RDS Multi-AZ:** Solo una instancia activa, la otra es standby
- **Aurora storage:** Se escala automáticamente hasta 128TB
- **DynamoDB capacity:** Planificar para evitar throttling
- **ElastiCache encryption:** Habilitar en tránsito y en reposo

### 🎯 Para el Examen
- Diferencias entre RDS y Aurora
- Cuándo usar read replicas vs Multi-AZ
- Configuración de DynamoDB para alta disponibilidad
- Estrategias de caching para mejorar rendimiento

### 💰 Consideraciones de Costos
- **RDS Multi-AZ:** Costo adicional por instancia standby
- **Aurora:** Sin costo de storage, solo por I/O
- **DynamoDB On-Demand:** Pagar por uso, sin capacidad fija
- **ElastiCache:** Costo por nodo y almacenamiento

### 🔒 Seguridad
- **Encryption at rest:** Habilitado por defecto en todos los servicios
- **Encryption in transit:** TLS/SSL para todas las conexiones
- **IAM authentication:** Para RDS y Aurora
- **VPC isolation:** Bases de datos en subnets privadas

---

## ✅ Checklist

### 📚 Estudio Teórico
- [x] Leer documentación de RDS Multi-AZ
- [x] Estudiar Aurora Serverless v2
- [x] Revisar DynamoDB Global Tables
- [x] Entender ElastiCache clustering

### 🧪 Práctica
- [x] Crear RDS Multi-AZ con read replica
- [x] Configurar Aurora Serverless v2
- [x] Implementar DynamoDB con DAX
- [x] Configurar ElastiCache Redis cluster

### 📝 Evaluación
- [x] Tomar quiz de bases de datos
- [x] Completar práctica de alta disponibilidad
- [x] Revisar métricas de rendimiento
- [x] Documentar estrategias de backup

### 🎯 Preparación para Siguiente Semana
- [x] Revisar conceptos de alta disponibilidad
- [x] Preparar para labs de Route 53
- [x] Instalar herramientas de networking
- [x] Configurar permisos para servicios de DNS

---

## 📊 Progreso Semanal

**Tiempo dedicado:** 22 horas  
**Temas dominados:** 90%  
**Labs completados:** 4/4  
**Quizzes aprobados:** 3/3  

**Próximo objetivo:** Alta Disponibilidad y Tolerancia a Fallos (Route 53, ALB, Auto Scaling, AZs) 