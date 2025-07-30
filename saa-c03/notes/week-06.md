# 🗓 Semana 06: Alta Disponibilidad y Tolerancia a Fallos – Route 53, ALB, Auto Scaling, AZs

📅 **Fecha:** [Personalizar según tu cronograma]  
🎯 **Objetivo:** Comprender las estrategias de alta disponibilidad y tolerancia a fallos en AWS para diseñar arquitecturas resilientes.

---

## ✅ Temas cubiertos

### 🌐 Route 53 - DNS y Health Checks
- **DNS Fundamentals:** Domain Name System y resolución de nombres
- **Hosted Zones:** Zonas DNS públicas y privadas
- **Record Types:** A, AAAA, CNAME, MX, TXT, NS, SOA
- **Health Checks:** Verificación de salud de endpoints
- **Failover Routing:** Enrutamiento automático en caso de fallo
- **Geolocation Routing:** Enrutamiento basado en ubicación geográfica
- **Latency-based Routing:** Enrutamiento basado en latencia
- **Weighted Routing:** Enrutamiento con pesos personalizados

### ⚖️ Load Balancers Avanzados
- **Application Load Balancer (ALB):** Capa 7, routing basado en contenido
- **Network Load Balancer (NLB):** Capa 4, ultra alta disponibilidad
- **Classic Load Balancer (CLB):** Legacy, no recomendado para nuevas implementaciones
- **Target Groups:** Destinos del load balancer con health checks
- **SSL/TLS Termination:** Terminación de certificados en el load balancer
- **Sticky Sessions:** Persistencia de sesión para aplicaciones stateful
- **Cross-Zone Load Balancing:** Distribución de tráfico entre AZs

### 🔄 Auto Scaling Avanzado
- **Auto Scaling Groups (ASG):** Grupos de instancias que se escalan automáticamente
- **Launch Templates:** Configuración base para nuevas instancias
- **Scaling Policies:** Target Tracking, Step Scaling, Simple Scaling
- **Cooldown Periods:** Tiempo de espera entre acciones de escalado
- **Health Checks:** Verificación de salud de instancias
- **Mixed Instances Policy:** Combinación de tipos de instancias
- **Scheduled Scaling:** Escalado programado basado en tiempo

### 🏗️ Multi-AZ Architecture
- **Availability Zones:** Centros de datos físicamente separados
- **Cross-AZ Deployment:** Distribución de recursos en múltiples AZs
- **Failover Strategies:** Estrategias de conmutación por fallo
- **Data Replication:** Replicación de datos entre AZs
- **Network Redundancy:** Redundancia de red para alta disponibilidad
- **Disaster Recovery:** Recuperación ante desastres

### 🔗 Service Integration
- **Route 53 + ALB:** DNS con load balancer
- **ALB + Auto Scaling:** Load balancer con escalado automático
- **Multi-Region Setup:** Configuración multi-región
- **Health Check Integration:** Integración de health checks
- **Monitoring and Alerting:** Monitoreo y alertas para alta disponibilidad

---

## 🔗 Recursos útiles

### 📖 Documentación Oficial
- [Route 53 Developer Guide](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/Welcome.html)
- [Application Load Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/introduction.html)
- [Network Load Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/introduction.html)
- [Auto Scaling User Guide](https://docs.aws.amazon.com/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html)
- [AWS Well-Architected Framework](https://aws.amazon.com/architecture/well-architected/)

### 🎥 Cursos Online
- [AWS Skill Builder: High Availability](https://explore.skillbuilder.aws/learn/course/external/view/elearning/134/aws-certified-solutions-architect-associate)
- [A Cloud Guru: Route 53 Deep Dive](https://acloudguru.com/course/aws-route-53-deep-dive)
- [Udemy: AWS High Availability](https://www.udemy.com/topic/aws-high-availability/)

### 📝 Herramientas
- [AWS Route 53 Health Check](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-configuring.html)
- [AWS Load Balancer Controller](https://kubernetes-sigs.github.io/aws-load-balancer-controller/)
- [AWS Auto Scaling Console](https://console.aws.amazon.com/autoscaling/)

---

## 🧪 Lab recomendado

### Lab 1: Route 53 con Health Checks
**Objetivo:** Configurar DNS con health checks y failover

**Pasos:**
1. Crear hosted zone pública en Route 53
2. Registrar dominio personalizado
3. Crear health checks para endpoints
4. Configurar failover routing policy
5. Probar failover automático
6. Configurar geolocation routing

### Lab 2: ALB con Auto Scaling
**Objetivo:** Implementar load balancer con escalado automático

**Pasos:**
1. Crear Application Load Balancer
2. Configurar target groups con health checks
3. Crear Auto Scaling Group
4. Configurar scaling policies (CPU > 70%)
5. Probar escalado bajo carga
6. Configurar SSL/TLS termination

### Lab 3: Multi-AZ Architecture
**Objetivo:** Crear arquitectura de alta disponibilidad

**Pasos:**
1. Crear VPC con subnets en 3 AZs
2. Configurar ALB en subnets públicas
3. Desplegar instancias en subnets privadas
4. Configurar RDS Multi-AZ
5. Probar failover entre AZs
6. Configurar Route 53 con health checks

### Lab 4: Disaster Recovery Setup
**Objetivo:** Implementar estrategia de DR multi-región

**Pasos:**
1. Crear recursos en región primaria
2. Configurar replicación a región secundaria
3. Configurar Route 53 con failover
4. Probar conmutación por fallo
5. Medir RTO y RPO
6. Documentar procedimientos de DR

---

## 📝 Notas personales

### 💡 Conceptos Clave
- **Route 53 es global:** DNS distribuido globalmente
- **ALB es stateful:** Mantiene estado de conexiones
- **Auto Scaling es reactivo:** Responde a métricas en tiempo real
- **Multi-AZ es obligatorio:** Para aplicaciones de producción

### ⚠️ Puntos de Atención
- **Health checks críticos:** Configurar correctamente para evitar falsos positivos
- **Cooldown periods:** Evitar escalado excesivo
- **SSL certificates:** Renovar antes de expirar
- **DNS propagation:** Puede tomar hasta 48 horas

### 🎯 Para el Examen
- Diferencias entre tipos de load balancers
- Cuándo usar cada routing policy de Route 53
- Configuración de Auto Scaling Groups
- Estrategias de alta disponibilidad

### 💰 Consideraciones de Costos
- **Route 53:** Costo por hosted zone y queries
- **Load Balancers:** Costo por hora y por GB procesado
- **Auto Scaling:** Sin costo adicional, solo por instancias
- **Health Checks:** Costo por health check por mes

### 🔒 Seguridad
- **SSL/TLS:** Terminación en load balancer
- **Security Groups:** Control granular de acceso
- **WAF:** Web Application Firewall para ALB
- **IAM:** Roles para servicios AWS

---

## ✅ Checklist

### 📚 Estudio Teórico
- [x] Leer documentación de Route 53
- [x] Estudiar tipos de load balancers
- [x] Revisar Auto Scaling policies
- [x] Entender estrategias de alta disponibilidad

### 🧪 Práctica
- [x] Configurar Route 53 con health checks
- [x] Crear ALB con Auto Scaling
- [x] Implementar arquitectura Multi-AZ
- [x] Configurar disaster recovery

### 📝 Evaluación
- [x] Tomar quiz de alta disponibilidad
- [x] Completar práctica de failover
- [x] Revisar métricas de rendimiento
- [x] Documentar estrategias de DR

### 🎯 Preparación para Siguiente Semana
- [x] Revisar conceptos de seguridad
- [x] Preparar para labs de KMS
- [x] Instalar herramientas de seguridad
- [x] Configurar permisos para servicios de seguridad

---

## 📊 Progreso Semanal

**Tiempo dedicado:** 20 horas  
**Temas dominados:** 88%  
**Labs completados:** 4/4  
**Quizzes aprobados:** 3/3  

**Próximo objetivo:** Seguridad Avanzada (KMS, Secrets Manager, Organizations, SCPs, MFA) 