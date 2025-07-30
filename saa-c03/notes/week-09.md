# 🗓 Semana 09: Monitoreo y Observabilidad – CloudWatch, Logs, CloudTrail, EventBridge

📅 **Fecha:** [Personalizar según tu cronograma]  
🎯 **Objetivo:** Comprender los servicios de monitoreo y observabilidad de AWS para mantener aplicaciones saludables y detectar problemas proactivamente.

---

## ✅ Temas cubiertos

### 📊 Amazon CloudWatch
- **Metrics:** Métricas básicas y personalizadas de servicios AWS
- **Logs:** Centralización y análisis de logs de aplicaciones
- **Alarms:** Alertas basadas en umbrales de métricas
- **Dashboards:** Visualización personalizada de métricas
- **Insights:** Análisis automático de logs con CloudWatch Insights
- **Contributor Insights:** Análisis de contribuyentes a métricas
- **Synthetics:** Monitoreo sintético de endpoints web
- **RUM (Real User Monitoring):** Monitoreo de experiencia de usuario

### 📝 CloudWatch Logs
- **Log Groups:** Agrupación de streams de logs
- **Log Streams:** Flujos individuales de logs
- **Retention Policies:** Políticas de retención de logs
- **Metric Filters:** Filtros para extraer métricas de logs
- **Subscription Filters:** Filtros para enviar logs a otros servicios
- **CloudWatch Logs Insights:** Consultas SQL para análisis de logs
- **Cross-Account Logging:** Logs compartidos entre cuentas
- **Log Encryption:** Encriptación de logs en reposo

### 🛤️ AWS CloudTrail
- **API Activity Logging:** Registro de todas las llamadas a la API de AWS
- **Management Events:** Eventos de gestión de recursos
- **Data Events:** Eventos de acceso a datos (S3, Lambda)
- **Insight Events:** Eventos de insight para detección de anomalías
- **Event History:** Historial de eventos de los últimos 90 días
- **CloudTrail Lake:** Análisis de eventos con SQL
- **Integration:** Integración con CloudWatch Logs
- **Compliance:** Cumplimiento normativo y auditoría

### 🔄 Amazon EventBridge
- **Event Bus:** Bus de eventos para enrutamiento
- **Rules:** Reglas para enrutar eventos
- **Event Patterns:** Patrones para filtrar eventos
- **Targets:** Destinos para eventos (Lambda, SQS, SNS)
- **Custom Events:** Eventos personalizados de aplicaciones
- **Partner Events:** Eventos de partners de AWS
- **Scheduled Events:** Eventos programados
- **Dead Letter Queues:** Colas para eventos fallidos

### 📈 Monitoring Best Practices
- **Proactive Monitoring:** Monitoreo proactivo vs reactivo
- **Alerting Strategy:** Estrategia de alertas y notificaciones
- **Log Aggregation:** Agregación centralizada de logs
- **Performance Baselines:** Líneas base de rendimiento
- **Capacity Planning:** Planificación de capacidad basada en métricas
- **Incident Response:** Respuesta a incidentes con monitoreo

---

## 🔗 Recursos útiles

### 📖 Documentación Oficial
- [CloudWatch User Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html)
- [CloudWatch Logs User Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/WhatIsCloudWatchLogs.html)
- [CloudTrail User Guide](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html)
- [EventBridge User Guide](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-what-is.html)
- [AWS Well-Architected Framework - Operational Excellence](https://aws.amazon.com/architecture/well-architected/)

### 🎥 Cursos Online
- [AWS Skill Builder: Monitoring](https://explore.skillbuilder.aws/learn/course/external/view/elearning/134/aws-certified-solutions-architect-associate)
- [A Cloud Guru: AWS Monitoring Deep Dive](https://acloudguru.com/course/aws-monitoring-deep-dive)
- [Udemy: AWS CloudWatch](https://www.udemy.com/topic/amazon-cloudwatch/)

### 📝 Herramientas
- [AWS CloudWatch Console](https://console.aws.amazon.com/cloudwatch/)
- [AWS CloudTrail Console](https://console.aws.amazon.com/cloudtrail/)
- [AWS EventBridge Console](https://console.aws.amazon.com/events/)

---

## 🧪 Lab recomendado

### Lab 1: CloudWatch Metrics y Alarmas
**Objetivo:** Configurar métricas y alarmas básicas

**Pasos:**
1. Crear métrica personalizada para aplicación
2. Configurar CloudWatch alarmas
3. Configurar acciones de alarma (SNS, Auto Scaling)
4. Crear dashboard personalizado
5. Probar alarmas con carga simulada
6. Configurar notificaciones por email

### Lab 2: CloudWatch Logs con Insights
**Objetivo:** Configurar logging centralizado y análisis

**Pasos:**
1. Configurar CloudWatch Logs para aplicación
2. Crear log groups y streams
3. Configurar retention policies
4. Crear metric filters
5. Usar CloudWatch Insights para análisis
6. Configurar subscription filters

### Lab 3: CloudTrail con EventBridge
**Objetivo:** Monitorear actividad de AWS con eventos

**Pasos:**
1. Habilitar CloudTrail en cuenta
2. Configurar CloudTrail Lake
3. Crear EventBridge rules
4. Configurar targets para eventos
5. Probar detección de eventos
6. Configurar alertas para eventos críticos

### Lab 4: EventBridge con Lambda
**Objetivo:** Implementar arquitectura event-driven

**Pasos:**
1. Crear event bus personalizado
2. Crear reglas para enrutar eventos
3. Configurar Lambda como target
4. Probar flujo de eventos
5. Configurar dead letter queue
6. Monitorear ejecución de eventos

---

## 📝 Notas personales

### 💡 Conceptos Clave
- **CloudWatch es central:** Para monitoreo de todos los servicios AWS
- **Logs son críticos:** Para debugging y auditoría
- **CloudTrail es obligatorio:** Para cumplimiento y seguridad
- **EventBridge es poderoso:** Para arquitecturas event-driven

### ⚠️ Puntos de Atención
- **Retention costs:** Los logs tienen costos de almacenamiento
- **Alarm thresholds:** Configurar umbrales apropiados
- **Event volume:** CloudTrail puede generar muchos eventos
- **Cross-region:** Configurar monitoreo multi-región

### 🎯 Para el Examen
- Diferencias entre CloudWatch y CloudTrail
- Cuándo usar EventBridge vs SNS
- Configuración de alarmas y notificaciones
- Estrategias de logging y monitoreo

### 💰 Consideraciones de Costos
- **CloudWatch Metrics:** Primeras métricas gratuitas
- **CloudWatch Logs:** Costo por GB almacenado
- **CloudTrail:** Costo por evento procesado
- **EventBridge:** Costo por evento procesado

### 🔒 Seguridad
- **Log encryption:** Habilitar encriptación de logs
- **Access control:** IAM para acceso a métricas y logs
- **Audit trails:** CloudTrail para auditoría
- **Compliance:** Cumplimiento normativo con monitoreo

---

## ✅ Checklist

### 📚 Estudio Teórico
- [x] Leer documentación de CloudWatch
- [x] Estudiar CloudWatch Logs
- [x] Revisar CloudTrail
- [x] Entender EventBridge

### 🧪 Práctica
- [x] Configurar métricas y alarmas
- [x] Implementar logging centralizado
- [x] Configurar CloudTrail
- [x] Crear arquitectura event-driven

### 📝 Evaluación
- [x] Tomar quiz de monitoreo
- [x] Completar práctica de observabilidad
- [x] Revisar dashboards y métricas
- [x] Documentar estrategias de monitoreo

### 🎯 Preparación para Siguiente Semana
- [x] Revisar conceptos de costos
- [x] Preparar para labs de Cost Explorer
- [x] Instalar herramientas de análisis de costos
- [x] Configurar permisos para servicios de costos

---

## 📊 Progreso Semanal

**Tiempo dedicado:** 20 horas  
**Temas dominados:** 88%  
**Labs completados:** 4/4  
**Quizzes aprobados:** 3/3  

**Próximo objetivo:** Optimización de Costos (Cost Explorer, Budgets, Savings Plans) 