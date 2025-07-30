# 📚 AWS Cheat Sheets - Recursos de Estudio

## 🎯 Objetivo

Este archivo contiene cheat sheets y recursos rápidos para el estudio de las certificaciones AWS SAA-C03 y SOA-C02.

---

## 🔐 IAM - Identity and Access Management

### Entidades IAM
- **Usuarios:** Personas o aplicaciones que acceden a AWS
- **Grupos:** Colecciones de usuarios para facilitar gestión de permisos
- **Roles:** Permisos temporales para servicios y usuarios
- **Políticas:** Documentos JSON que definen permisos

### Jerarquía de Permisos
```
Explicit DENY > Explicit ALLOW > Implicit DENY
```

### Mejores Prácticas
- ✅ Usar grupos para gestionar permisos
- ✅ Aplicar principio de menor privilegio
- ✅ Habilitar MFA para todos los usuarios
- ✅ Rotar claves de acceso regularmente
- ❌ Nunca usar cuenta root para operaciones diarias
- ❌ No compartir credenciales entre usuarios

---

## 🖥️ EC2 - Elastic Compute Cloud

### Tipos de Instancias
- **General Purpose:** T3, M5, M6g (balance CPU/memoria)
- **Compute Optimized:** C5, C6g (alta CPU)
- **Memory Optimized:** R5, R6g, X1 (alta memoria)
- **Storage Optimized:** I3, D2 (alta IOPS)

### Estados de Instancia
- **Running:** Instancia activa y funcionando
- **Stopped:** Instancia detenida (no se cobra computación)
- **Terminated:** Instancia eliminada permanentemente
- **Pending:** Instancia iniciando

### Pricing Models
- **On-Demand:** Máxima flexibilidad, mayor costo
- **Reserved:** Ahorro hasta 72% para cargas predecibles
- **Spot:** Hasta 90% de ahorro, sin garantía de disponibilidad
- **Savings Plans:** Flexibilidad entre instancias y servicios

---

## 📦 S3 - Simple Storage Service

### Clases de Almacenamiento
- **Standard:** Acceso frecuente, alta durabilidad
- **IA (Infrequent Access):** Acceso menos frecuente, menor costo
- **One Zone-IA:** Una AZ, menor costo, menor durabilidad
- **Glacier:** Archivo a largo plazo, acceso en horas
- **Deep Archive:** Archivo a muy largo plazo, acceso en días

### Características
- **Durabilidad:** 99.999999999% (11 nueves)
- **Disponibilidad:** 99.99% (Standard)
- **Límites:** 5TB por objeto, buckets ilimitados
- **Regiones:** Global, pero buckets son regionales

### Lifecycle Policies
```
Standard → IA → Glacier → Deep Archive
```

---

## 💾 EBS - Elastic Block Store

### Tipos de Volúmenes
- **GP2/GP3:** General Purpose SSD
- **IO1/IO2:** Provisioned IOPS SSD
- **ST1:** Throughput Optimized HDD
- **SC1:** Cold HDD

### Características
- **Tamaño:** 1GB - 16TB
- **IOPS:** Hasta 64,000 (IO1/IO2)
- **Throughput:** Hasta 1,000 MB/s
- **Encryption:** AES-256 por defecto

### Snapshots
- **Incrementales:** Solo bloques cambiados
- **Copia entre regiones:** Para DR
- **Fast Snapshot Restore:** Restauración rápida

---

## 🗄️ RDS - Relational Database Service

### Motores Soportados
- **MySQL:** 5.7, 8.0
- **PostgreSQL:** 10, 11, 12, 13, 14
- **MariaDB:** 10.3, 10.4, 10.5, 10.6
- **Oracle:** 12.2, 19, 21
- **SQL Server:** 2017, 2019

### Deployment Options
- **Single-AZ:** Una instancia, menor costo
- **Multi-AZ:** Alta disponibilidad, failover automático
- **Read Replicas:** Escalado de lectura
- **Aurora:** Compatible con MySQL/PostgreSQL

### Storage Types
- **General Purpose SSD:** Hasta 64TB, 3,000 IOPS
- **Provisioned IOPS SSD:** Hasta 64TB, 64,000 IOPS
- **Magnetic:** Legacy, no recomendado

---

## ⚡ DynamoDB

### Consistency Models
- **Eventually Consistent:** Lectura más rápida, consistencia eventual
- **Strongly Consistent:** Consistencia inmediata, lectura más lenta

### Capacity Modes
- **On-Demand:** Escalado automático, pagar por uso
- **Provisioned:** Capacidad fija, ahorro para cargas predecibles

### Características
- **NoSQL:** Sin esquema fijo
- **Serverless:** Sin gestión de infraestructura
- **Global Tables:** Replicación multi-región
- **DAX:** DynamoDB Accelerator para caché

---

## 🌐 VPC - Virtual Private Cloud

### Componentes
- **VPC:** Red privada virtual aislada
- **Subnets:** Segmentos de red dentro de la VPC
- **Route Tables:** Tablas de enrutamiento
- **Internet Gateway:** Conectividad a internet
- **NAT Gateway:** Acceso saliente para subnets privadas

### Tipos de Subnets
- **Públicas:** Con acceso directo a internet
- **Privadas:** Sin acceso directo a internet
- **Database:** Subnets privadas para bases de datos

### Security Groups vs NACLs
| Aspecto | Security Groups | NACLs |
|---------|----------------|-------|
| Nivel | Instancia | Subnet |
| Estado | Stateful | Stateless |
| Reglas | Solo entrada | Entrada y salida |
| Evaluación | Todas las reglas | Orden numérico |

---

## ⚖️ Load Balancers

### Tipos
- **Application Load Balancer (ALB):** Capa 7, routing basado en contenido
- **Network Load Balancer (NLB):** Capa 4, ultra alta disponibilidad
- **Classic Load Balancer (CLB):** Legacy, no recomendado

### Características
- **Health Checks:** Verificación de salud de targets
- **Target Groups:** Destinos del load balancer
- **SSL/TLS Termination:** Terminación de certificados
- **Sticky Sessions:** Persistencia de sesión

---

## 🔄 Auto Scaling

### Tipos de Políticas
- **Target Tracking:** Basado en métricas (CPU, memoria)
- **Step Scaling:** Escalado por pasos
- **Simple Scaling:** Escalado simple

### Componentes
- **Launch Template:** Configuración base para nuevas instancias
- **Auto Scaling Group:** Grupo de instancias que se escalan
- **Cooldown Period:** Tiempo de espera entre acciones
- **Health Check:** Verificación de salud de instancias

---

## 📊 CloudWatch

### Métricas
- **Métricas básicas:** CPU, memoria, red, disco
- **Métricas personalizadas:** Métricas específicas de aplicación
- **Logs:** Centralización de logs
- **Dashboards:** Visualización de métricas

### Alarmas
- **Threshold:** Umbral para activar alarma
- **Actions:** Acciones automáticas (SNS, Auto Scaling)
- **Period:** Período de evaluación
- **Evaluation Periods:** Número de períodos para activar

---

## 🔒 Security

### Encryption
- **At Rest:** AES-256 por defecto en la mayoría de servicios
- **In Transit:** TLS/SSL para todas las conexiones
- **KMS:** AWS Key Management Service para gestión de claves

### Compliance
- **SOC:** Service Organization Control
- **PCI DSS:** Payment Card Industry Data Security Standard
- **HIPAA:** Health Insurance Portability and Accountability Act
- **FedRAMP:** Federal Risk and Authorization Management Program

---

## 💰 Costos

### Factores de Costo
- **Compute:** Instancias EC2, Lambda
- **Storage:** S3, EBS, RDS
- **Data Transfer:** Transferencia entre servicios
- **API Calls:** Llamadas a APIs de AWS

### Optimización
- **Reserved Instances:** Ahorro para cargas predecibles
- **Spot Instances:** Ahorro para cargas flexibles
- **Savings Plans:** Flexibilidad entre servicios
- **S3 Lifecycle:** Transición automática entre clases

---

## 🎯 Para el Examen

### Conceptos Clave
- **High Availability:** Multi-AZ deployment
- **Fault Tolerance:** Capacidad de continuar operando con fallos
- **Scalability:** Capacidad de manejar cambios en carga
- **Security:** Defense in depth, principio de menor privilegio

### Patrones de Arquitectura
- **Web Tier:** Load balancer + Auto Scaling Group
- **Application Tier:** Instancias en subnets privadas
- **Database Tier:** RDS Multi-AZ o DynamoDB
- **Storage Tier:** S3 para objetos, EBS para bloques

---

## 📚 Recursos Adicionales

### Documentación Oficial
- [AWS Documentation](https://docs.aws.amazon.com/)
- [AWS Well-Architected Framework](https://aws.amazon.com/architecture/well-architected/)
- [AWS Solutions Architect Associate Exam Guide](https://aws.amazon.com/certification/certified-solutions-architect-associate/)

### Herramientas
- [AWS Pricing Calculator](https://calculator.aws/)
- [AWS Policy Generator](https://awspolicygen.s3.amazonaws.com/policygen.html)
- [AWS Policy Simulator](https://policysim.aws.amazon.com/)

### Comunidad
- [AWS Community](https://aws.amazon.com/community/)
- [Reddit r/AWSCertifications](https://www.reddit.com/r/AWSCertifications/)
- [AWS User Groups](https://aws.amazon.com/events/usergroups/)

---

**¡Mantén estos cheat sheets a mano durante tu estudio! 📖** 