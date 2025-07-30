# 🗓 Semana 02: Computación en la Nube – EC2, Auto Scaling, Load Balancers

📅 **Fecha:** [Personalizar según tu cronograma]  
🎯 **Objetivo:** Comprender los servicios de computación de AWS y cómo diseñar aplicaciones escalables.

---

## ✅ Temas cubiertos

### 🖥️ Amazon EC2 (Elastic Compute Cloud)
- **Tipos de instancias:** General Purpose, Compute Optimized, Memory Optimized, Storage Optimized
- **Familias de instancias:** T3, M5, C5, R5, I3, etc.
- **Amazon Machine Images (AMIs):** Imágenes preconfiguradas para lanzar instancias
- **Storage de instancias:** Instance Store vs EBS
- **Estados de instancia:** Running, Stopped, Terminated, etc.

### 🔄 Auto Scaling
- **Auto Scaling Groups (ASG):** Grupos de instancias que se escalan automáticamente
- **Políticas de escalado:** Target Tracking, Step Scaling, Simple Scaling
- **Cooldown periods:** Tiempo de espera entre acciones de escalado
- **Health checks:** Verificación de salud de instancias
- **Launch Templates:** Configuración base para nuevas instancias

### ⚖️ Load Balancers
- **Application Load Balancer (ALB):** Capa 7, routing basado en contenido
- **Network Load Balancer (NLB):** Capa 4, ultra alta disponibilidad
- **Classic Load Balancer (CLB):** Legacy, no recomendado para nuevas implementaciones
- **Target Groups:** Destinos del load balancer
- **Health checks:** Verificación de salud de targets

### 🛠️ Configuración y Gestión
- **User Data:** Scripts de inicialización
- **Metadata Service:** Información de instancia
- **Instance Profiles:** Roles IAM para instancias
- **Placement Groups:** Agrupación de instancias para baja latencia

---

## 🔗 Recursos útiles

### 📖 Documentación Oficial
- [EC2 User Guide](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html)
- [Auto Scaling User Guide](https://docs.aws.amazon.com/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html)
- [Application Load Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/introduction.html)
- [Network Load Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/introduction.html)

### 🎥 Cursos Online
- [AWS Skill Builder: EC2 Deep Dive](https://explore.skillbuilder.aws/learn/course/external/view/elearning/134/aws-certified-solutions-architect-associate)
- [A Cloud Guru: EC2 Masterclass](https://acloudguru.com/course/aws-certified-solutions-architect-associate-saa-c03)
- [Udemy: AWS EC2 Complete Course](https://www.udemy.com/topic/amazon-ec2/)

### 📝 Herramientas
- [AWS Instance Types](https://aws.amazon.com/ec2/instance-types/)
- [AWS Pricing Calculator](https://calculator.aws/)
- [AWS Systems Manager](https://docs.aws.amazon.com/systems-manager/latest/userguide/what-is-systems-manager.html)

---

## 🧪 Lab recomendado

### Lab 1: Despliegue de Aplicación Web Básica
**Objetivo:** Crear una aplicación web con EC2 y ALB

**Pasos:**
1. Crear VPC con subnets públicas y privadas
2. Configurar Security Groups para web y aplicación
3. Lanzar instancia EC2 con Apache/Nginx
4. Crear Application Load Balancer
5. Configurar target group y health checks
6. Probar acceso a través del ALB

### Lab 2: Auto Scaling Group
**Objetivo:** Configurar escalado automático

**Pasos:**
1. Crear Launch Template con configuración base
2. Crear Auto Scaling Group
3. Configurar políticas de escalado (CPU > 70%)
4. Configurar políticas de descenso (CPU < 30%)
5. Simular carga para probar escalado
6. Monitorear con CloudWatch

### Lab 3: Arquitectura de Alta Disponibilidad
**Objetivo:** Desplegar aplicación en múltiples AZs

**Pasos:**
1. Crear VPC con subnets en 2 AZs
2. Configurar NAT Gateway para subnets privadas
3. Desplegar instancias en múltiples AZs
4. Configurar ALB con targets en ambas AZs
5. Probar failover entre AZs
6. Configurar Route 53 para DNS

---

## 📝 Notas personales

### 💡 Conceptos Clave
- **EC2 es el servicio fundamental:** Base para la mayoría de arquitecturas
- **Auto Scaling es clave:** Para aplicaciones de producción
- **Load Balancers distribuyen tráfico:** Mejoran disponibilidad y rendimiento
- **Multi-AZ es obligatorio:** Para alta disponibilidad

### ⚠️ Puntos de Atención
- **Instance types:** Elegir según necesidades de CPU, memoria, almacenamiento
- **Spot instances:** Para cargas de trabajo flexibles y ahorro de costos
- **Reserved instances:** Para cargas predecibles y ahorro a largo plazo
- **Health checks:** Configurar correctamente para evitar problemas

### 🎯 Para el Examen
- Diferencias entre tipos de load balancers
- Cuándo usar cada tipo de instancia
- Configuración de Auto Scaling Groups
- Integración con otros servicios AWS

### 💰 Consideraciones de Costos
- **On-Demand:** Máxima flexibilidad, mayor costo
- **Reserved:** Ahorro hasta 72% para cargas predecibles
- **Spot:** Hasta 90% de ahorro, pero sin garantía de disponibilidad
- **Savings Plans:** Flexibilidad entre instancias y servicios

---

## ✅ Checklist

### 📚 Estudio Teórico
- [x] Leer documentación de EC2
- [x] Estudiar tipos de instancias
- [x] Revisar Auto Scaling concepts
- [x] Entender tipos de load balancers

### 🧪 Práctica
- [x] Crear instancia EC2 básica
- [x] Configurar ALB con target group
- [x] Implementar Auto Scaling Group
- [x] Probar escalado automático

### 📝 Evaluación
- [x] Tomar quiz de computación
- [x] Completar práctica de arquitectura
- [x] Revisar métricas de CloudWatch
- [x] Documentar mejores prácticas

### 🎯 Preparación para Siguiente Semana
- [x] Revisar conceptos de almacenamiento
- [x] Preparar para labs de S3 y EBS
- [x] Instalar herramientas de gestión de almacenamiento
- [x] Configurar permisos para servicios de almacenamiento

---

## 📊 Progreso Semanal

**Tiempo dedicado:** 18 horas  
**Temas dominados:** 85%  
**Labs completados:** 3/3  
**Quizzes aprobados:** 2/2  

**Próximo objetivo:** Almacenamiento y Bases de Datos (S3, EBS, RDS, DynamoDB)
