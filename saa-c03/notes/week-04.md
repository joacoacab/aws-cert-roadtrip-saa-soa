# 🗓 Semana 04: Redes y Seguridad – VPC, Security Groups, NACLs

📅 **Fecha:** [Personalizar según tu cronograma]  
🎯 **Objetivo:** Comprender la red privada virtual (VPC) y los mecanismos de seguridad de red en AWS.

---

## ✅ Temas cubiertos

### 🌐 Amazon VPC (Virtual Private Cloud)
- **VPC:** Red privada virtual aislada en AWS
- **CIDR blocks:** Rangos de direcciones IP privadas
- **Subnets:** Segmentos de red dentro de la VPC
- **Route Tables:** Tablas de enrutamiento para subnets
- **Internet Gateway (IGW):** Conectividad a internet
- **NAT Gateway:** Acceso saliente a internet para subnets privadas

### 🛡️ Security Groups
- **Stateful firewalls:** Reglas que mantienen estado de conexión
- **Inbound rules:** Tráfico entrante permitido
- **Outbound rules:** Tráfico saliente permitido
- **Default rules:** Todo el tráfico saliente permitido por defecto
- **Multiple SGs:** Una instancia puede tener múltiples security groups

### 🔒 Network ACLs (NACLs)
- **Stateless firewalls:** Reglas que no mantienen estado
- **Subnet-level:** Aplicadas a nivel de subnet
- **Numbered rules:** Reglas con números de prioridad
- **Default NACL:** Permite todo el tráfico por defecto
- **Custom NACL:** Deniega todo el tráfico por defecto

### 🔗 VPC Connectivity
- **VPC Peering:** Conexión entre VPCs
- **VPC Endpoints:** Acceso privado a servicios AWS
- **Transit Gateway:** Hub central para múltiples VPCs
- **VPN Connection:** Conexión segura a redes on-premises
- **Direct Connect:** Conexión dedicada de alta velocidad

### 🏗️ Network Architecture
- **Public subnets:** Con acceso directo a internet
- **Private subnets:** Sin acceso directo a internet
- **Database subnets:** Subnets privadas para bases de datos
- **Multi-AZ deployment:** Distribución en múltiples zonas de disponibilidad

---

## 🔗 Recursos útiles

### 📖 Documentación Oficial
- [VPC User Guide](https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html)
- [Security Groups](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html)
- [Network ACLs](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html)
- [VPC Peering](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html)

### 🎥 Cursos Online
- [AWS Skill Builder: VPC Deep Dive](https://explore.skillbuilder.aws/learn/course/external/view/elearning/134/aws-certified-solutions-architect-associate)
- [A Cloud Guru: AWS Networking](https://acloudguru.com/course/aws-networking-deep-dive)
- [Udemy: AWS VPC Complete Course](https://www.udemy.com/topic/amazon-vpc/)

### 📝 Herramientas
- [AWS VPC Calculator](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html)
- [AWS Network Manager](https://docs.aws.amazon.com/vpc/latest/tgw/what-is-network-manager.html)
- [AWS Reachability Analyzer](https://docs.aws.amazon.com/vpc/latest/reachability/what-is-reachability-analyzer.html)

---

## 🧪 Lab recomendado

### Lab 1: Configuración de VPC Básica
**Objetivo:** Crear VPC con subnets públicas y privadas

**Pasos:**
1. Crear VPC con CIDR 10.0.0.0/16
2. Crear subnets públicas en 2 AZs (10.0.1.0/24, 10.0.2.0/24)
3. Crear subnets privadas en 2 AZs (10.0.3.0/24, 10.0.4.0/24)
4. Crear Internet Gateway y asociar a VPC
5. Crear NAT Gateway en subnet pública
6. Configurar route tables para subnets públicas y privadas

### Lab 2: Security Groups y NACLs
**Objetivo:** Configurar seguridad de red granular

**Pasos:**
1. Crear Security Group para web servers (puertos 80, 443)
2. Crear Security Group para application servers (puerto 8080)
3. Crear Security Group para database (puerto 3306)
4. Crear NACL para subnets públicas (permitir 80, 443, 22)
5. Crear NACL para subnets privadas (permitir tráfico interno)
6. Probar conectividad entre capas

### Lab 3: VPC Peering y Endpoints
**Objetivo:** Configurar conectividad entre VPCs y servicios

**Pasos:**
1. Crear segunda VPC con subnets
2. Configurar VPC Peering entre VPCs
3. Crear VPC Endpoint para S3
4. Crear VPC Endpoint para DynamoDB
5. Probar acceso privado a servicios AWS
6. Configurar route tables para peering

### Lab 4: Arquitectura de Alta Disponibilidad
**Objetivo:** Desplegar aplicación en múltiples AZs

**Pasos:**
1. Crear VPC con subnets en 3 AZs
2. Configurar Application Load Balancer en subnets públicas
3. Desplegar instancias EC2 en subnets privadas
4. Configurar RDS en subnets privadas
5. Probar failover entre AZs
6. Configurar monitoring y alerting

---

## 📝 Notas personales

### 💡 Conceptos Clave
- **VPC es el fundamento:** Toda la infraestructura se construye sobre VPC
- **Security Groups son stateful:** Solo necesitas reglas de entrada
- **NACLs son stateless:** Necesitas reglas de entrada y salida
- **Multi-AZ es crítico:** Para alta disponibilidad

### ⚠️ Puntos de Atención
- **CIDR blocks:** Planificar cuidadosamente para evitar conflictos
- **Security Groups:** Una regla de deny explícita tiene prioridad
- **NACLs:** Las reglas se evalúan en orden numérico
- **VPC limits:** Máximo 5 VPCs por región por defecto

### 🎯 Para el Examen
- Diferencias entre Security Groups y NACLs
- Configuración de VPC para alta disponibilidad
- Cuándo usar VPC Peering vs Transit Gateway
- Integración con servicios AWS a través de endpoints

### 🔒 Seguridad
- **Defense in depth:** Múltiples capas de seguridad
- **Principle of least privilege:** Solo los permisos necesarios
- **Network segmentation:** Separar cargas de trabajo
- **Monitoring:** CloudWatch y VPC Flow Logs

### 💰 Consideraciones de Costos
- **NAT Gateway:** Costo por hora y por GB procesado
- **VPC Peering:** Sin costo adicional
- **VPC Endpoints:** Costo por VPC endpoint por hora
- **Transit Gateway:** Costo por hora y por GB procesado

---

## ✅ Checklist

### 📚 Estudio Teórico
- [x] Leer documentación de VPC
- [x] Estudiar Security Groups vs NACLs
- [x] Revisar VPC Peering concepts
- [x] Entender VPC Endpoints

### 🧪 Práctica
- [x] Crear VPC con subnets públicas y privadas
- [x] Configurar Security Groups para web, app, db
- [x] Implementar NACLs para control granular
- [x] Configurar VPC Peering

### 📝 Evaluación
- [x] Tomar quiz de redes
- [x] Completar práctica de arquitectura
- [x] Revisar VPC Flow Logs
- [x] Documentar mejores prácticas

### 🎯 Preparación para Siguiente Semana
- [x] Revisar conceptos de monitoreo
- [x] Preparar para labs de CloudWatch
- [x] Instalar herramientas de monitoreo
- [x] Configurar permisos para servicios de observabilidad

---

## 📊 Progreso Semanal

**Tiempo dedicado:** 16 horas  
**Temas dominados:** 92%  
**Labs completados:** 4/4  
**Quizzes aprobados:** 3/3  

**Próximo objetivo:** Monitoreo y Logging (CloudWatch, CloudTrail, X-Ray)
