# 🗓 Semana 01: Introducción a Monitoreo y Logs – CloudWatch, Métricas, Alarmas, Filtros

📅 **Fecha:** 4-10 Noviembre 2024  
🎯 **Objetivo:** Comprender los fundamentos de monitoreo y observabilidad en AWS, con enfoque en CloudWatch y gestión de logs.

---

## ✅ Temas cubiertos

### 📊 Amazon CloudWatch Fundamentals
- **CloudWatch Metrics:** Métricas básicas y personalizadas de servicios AWS
- **CloudWatch Logs:** Centralización y análisis de logs de aplicaciones
- **CloudWatch Alarms:** Alertas basadas en umbrales de métricas
- **CloudWatch Dashboards:** Visualización personalizada de métricas
- **CloudWatch Insights:** Análisis automático de logs con CloudWatch Insights
- **Contributor Insights:** Análisis de contribuyentes a métricas
- **Synthetics:** Monitoreo sintético de endpoints web
- **RUM (Real User Monitoring):** Monitoreo de experiencia de usuario

### 📝 CloudWatch Logs Deep Dive
- **Log Groups:** Agrupación de streams de logs
- **Log Streams:** Flujos individuales de logs
- **Retention Policies:** Políticas de retención de logs
- **Metric Filters:** Filtros para extraer métricas de logs
- **Subscription Filters:** Filtros para enviar logs a otros servicios
- **CloudWatch Logs Insights:** Consultas SQL para análisis de logs
- **Cross-Account Logging:** Logs compartidos entre cuentas
- **Log Encryption:** Encriptación de logs en reposo

### 🔔 CloudWatch Alarms Advanced
- **Alarm Types:** Metric alarms, composite alarms, anomaly detection
- **Alarm Actions:** SNS notifications, Auto Scaling actions, EC2 actions
- **Alarm States:** OK, ALARM, INSUFFICIENT_DATA
- **Alarm Evaluation:** Period, evaluation periods, threshold
- **Alarm History:** Historical alarm state changes
- **Alarm Suppression:** Temporarily suppress alarms
- **Alarm Snooze:** Snooze alarms for maintenance

### 🔍 Log Analysis and Filtering
- **Log Filtering:** Filter logs by time, content, or source
- **Log Parsing:** Parse structured and unstructured logs
- **Log Aggregation:** Aggregate logs from multiple sources
- **Log Correlation:** Correlate logs with metrics
- **Log Visualization:** Visualize log patterns and trends
- **Log Export:** Export logs to S3 or other destinations

---

## 🔗 Recursos útiles

### 📖 Documentación Oficial
- [CloudWatch User Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html)
- [CloudWatch Logs User Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/WhatIsCloudWatchLogs.html)
- [CloudWatch Alarms User Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html)
- [AWS Well-Architected Framework - Operational Excellence](https://aws.amazon.com/architecture/well-architected/)

### 🎥 Cursos Online
- [AWS Skill Builder: CloudWatch Deep Dive](https://explore.skillbuilder.aws/learn/course/external/view/elearning/135/aws-certified-sysops-administrator-associate)
- [A Cloud Guru: AWS Monitoring Deep Dive](https://acloudguru.com/course/aws-monitoring-deep-dive)
- [Udemy: AWS CloudWatch](https://www.udemy.com/topic/amazon-cloudwatch/)

### 📝 Herramientas
- [AWS CloudWatch Console](https://console.aws.amazon.com/cloudwatch/)
- [AWS CloudWatch CLI](https://docs.aws.amazon.com/cli/latest/reference/cloudwatch/)
- [AWS CloudWatch API](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/)

---

## 🧪 Lab recomendado

### Lab 1: CloudWatch Metrics y Alarmas Básicas
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

### Lab 3: Log Analysis y Filtros Avanzados
**Objetivo:** Implementar análisis avanzado de logs

**Pasos:**
1. Configurar múltiples fuentes de logs
2. Crear filtros personalizados
3. Implementar log correlation
4. Configurar log export a S3
5. Crear visualizaciones de logs
6. Configurar alertas basadas en logs

### Lab 4: CloudWatch Alarms Avanzadas
**Objetivo:** Configurar alarmas complejas y acciones

**Pasos:**
1. Crear composite alarms
2. Configurar anomaly detection
3. Implementar alarm actions
4. Configurar alarm suppression
5. Probar alarm snooze
6. Configurar alarm history

---

## 📝 Notas personales

### 💡 Conceptos Clave
- **CloudWatch es central:** Para monitoreo de todos los servicios AWS
- **Logs son críticos:** Para debugging y auditoría
- **Alarmas son reactivas:** Responden a cambios en métricas
- **Insights son poderosos:** Para análisis de logs complejos

### ⚠️ Puntos de Atención
- **Retention costs:** Los logs tienen costos de almacenamiento
- **Alarm thresholds:** Configurar umbrales apropiados
- **Log volume:** Grandes volúmenes de logs pueden ser costosos
- **Cross-region:** Configurar monitoreo multi-región

### 🎯 Para el Examen
- Diferencias entre métricas y logs
- Cuándo usar Insights vs filtros
- Configuración de alarmas y notificaciones
- Estrategias de logging y monitoreo

### 💰 Consideraciones de Costos
- **CloudWatch Metrics:** Primeras métricas gratuitas
- **CloudWatch Logs:** Costo por GB almacenado
- **CloudWatch Alarms:** Costo por alarma por mes
- **CloudWatch Insights:** Costo por consulta

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
- [x] Revisar CloudWatch Alarms
- [x] Entender CloudWatch Insights

### 🧪 Práctica
- [x] Configurar métricas y alarmas
- [x] Implementar logging centralizado
- [x] Configurar análisis de logs
- [x] Crear alarmas avanzadas

### 📝 Evaluación
- [x] Tomar quiz de monitoreo
- [x] Completar práctica de observabilidad
- [x] Revisar dashboards y métricas
- [x] Documentar estrategias de monitoreo

### 🎯 Preparación para Siguiente Semana
- [x] Revisar conceptos de automatización
- [x] Preparar para labs de Systems Manager
- [x] Instalar herramientas de automatización
- [x] Configurar permisos para servicios de automatización

---

## 📊 Progreso Semanal

**Tiempo dedicado:** 18 horas  
**Temas dominados:** 85%  
**Labs completados:** 4/4  
**Quizzes aprobados:** 3/3  

**Próximo objetivo:** Automatización y DevOps (Systems Manager, CloudFormation, CodeDeploy) 