# 🧪 Lab 01: CloudWatch Alarms y Métricas Personalizadas

**Semana:** 01 - Introducción a Monitoreo y Logs  
**Duración:** 2 horas  
**Nivel:** Intermedio  

---

## 🎯 Objetivos

- Crear métricas personalizadas en CloudWatch
- Configurar alarmas básicas y avanzadas
- Implementar notificaciones por SNS
- Crear dashboards personalizados
- Probar alarmas con carga simulada
- Configurar acciones automáticas

---

## 📋 Prerequisitos

- Cuenta AWS con permisos para CloudWatch, SNS, EC2
- Instancia EC2 configurada
- Conocimiento básico de AWS CLI

---

## 🛠️ Pasos del Laboratorio

### Paso 1: Crear Tópico SNS para Notificaciones

1. **Navegar a SNS**
   - Ir a https://console.aws.amazon.com/sns
   - Hacer clic en "Topics" en el panel izquierdo

2. **Crear Tópico**
   - Hacer clic en "Create topic"
   - **Type:** Standard
   - **Name:** `cloudwatch-alarms-topic`
   - **Display name:** `CloudWatch Alarms Topic`
   - Hacer clic en "Create topic"

3. **Crear Suscripción**
   - Seleccionar el tópico creado
   - Hacer clic en "Create subscription"
   - **Protocol:** Email
   - **Endpoint:** Tu dirección de email
   - Hacer clic en "Create subscription"
   - Confirmar suscripción en tu email

### Paso 2: Crear Métrica Personalizada

1. **Navegar a CloudWatch**
   - Ir a https://console.aws.amazon.com/cloudwatch
   - Hacer clic en "Metrics" en el panel izquierdo

2. **Crear Métrica Personalizada**
   ```bash
   # Usar AWS CLI para crear métrica personalizada
   aws cloudwatch put-metric-data \
     --namespace "CustomMetrics" \
     --metric-data file://metric-data.json
   ```

3. **Crear Archivo metric-data.json**
   ```json
   [
     {
       "MetricName": "ApplicationRequests",
       "Value": 100,
       "Unit": "Count",
       "Timestamp": "2024-11-04T10:00:00Z"
     },
     {
       "MetricName": "ApplicationErrors",
       "Value": 5,
       "Unit": "Count",
       "Timestamp": "2024-11-04T10:00:00Z"
     },
     {
       "MetricName": "ResponseTime",
       "Value": 250,
       "Unit": "Milliseconds",
       "Timestamp": "2024-11-04T10:00:00Z"
     }
   ]
   ```

### Paso 3: Configurar Alarmas Básicas

1. **Crear Alarma para Requests**
   - Ir a CloudWatch > Alarms
   - Hacer clic en "Create alarm"
   - **Select metric:** CustomMetrics > ApplicationRequests
   - **Statistic:** Sum
   - **Period:** 1 minute
   - **Threshold type:** Static
   - **Define the alarm condition:** Greater than threshold
   - **Define the threshold value:** 50
   - Hacer clic en "Next"

2. **Configurar Acciones**
   - **Alarm state trigger:** In alarm
   - **Select an SNS topic:** Seleccionar el tópico creado
   - Hacer clic en "Next"

3. **Configurar Detalles**
   - **Alarm name:** `HighRequestRate`
   - **Alarm description:** `Alarm when application requests exceed 50 per minute`
   - Hacer clic en "Create alarm"

### Paso 4: Crear Alarma para Errores

1. **Crear Alarma de Errores**
   - Repetir proceso del Paso 3
   - **Metric:** CustomMetrics > ApplicationErrors
   - **Threshold:** Greater than 10
   - **Alarm name:** `HighErrorRate`
   - **Description:** `Alarm when application errors exceed 10 per minute`

### Paso 5: Crear Alarma de Response Time

1. **Crear Alarma de Latencia**
   - Repetir proceso del Paso 3
   - **Metric:** CustomMetrics > ResponseTime
   - **Threshold:** Greater than 500 milliseconds
   - **Alarm name:** `HighResponseTime`
   - **Description:** `Alarm when response time exceeds 500ms`

### Paso 6: Crear Alarma Compuesta

1. **Crear Composite Alarm**
   - Ir a CloudWatch > Alarms
   - Hacer clic en "Create alarm"
   - Seleccionar "Composite alarm"
   - **Alarm name:** `ApplicationHealth`
   - **Alarm description:** `Composite alarm for application health`
   - **Alarm rule:** 
     ```
     ALARM(HighRequestRate) OR ALARM(HighErrorRate) OR ALARM(HighResponseTime)
     ```
   - **Actions:** Seleccionar tópico SNS
   - Hacer clic en "Create alarm"

### Paso 7: Crear Dashboard Personalizado

1. **Crear Dashboard**
   - Ir a CloudWatch > Dashboards
   - Hacer clic en "Create dashboard"
   - **Dashboard name:** `ApplicationMonitoring`
   - **Description:** `Dashboard for application metrics`

2. **Agregar Widgets**
   - **Widget 1:** Line chart para ApplicationRequests
   - **Widget 2:** Line chart para ApplicationErrors
   - **Widget 3:** Line chart para ResponseTime
   - **Widget 4:** Alarm status widget

### Paso 8: Simular Carga y Probar Alarmas

1. **Script de Simulación**
   ```bash
   # Crear script para simular carga
   cat > simulate-load.sh << 'EOF'
   #!/bin/bash
   
   for i in {1..100}; do
     # Simular requests
     aws cloudwatch put-metric-data \
       --namespace "CustomMetrics" \
       --metric-data "[{\"MetricName\":\"ApplicationRequests\",\"Value\":$((RANDOM % 100 + 1)),\"Unit\":\"Count\"}]"
     
     # Simular errores (ocasionalmente)
     if [ $((RANDOM % 10)) -eq 0 ]; then
       aws cloudwatch put-metric-data \
         --namespace "CustomMetrics" \
         --metric-data "[{\"MetricName\":\"ApplicationErrors\",\"Value\":$((RANDOM % 20 + 1)),\"Unit\":\"Count\"}]"
     fi
     
     # Simular response time
     aws cloudwatch put-metric-data \
       --namespace "CustomMetrics" \
       --metric-data "[{\"MetricName\":\"ResponseTime\",\"Value\":$((RANDOM % 1000 + 100)),\"Unit\":\"Milliseconds\"}]"
     
     sleep 30
   done
   EOF
   
   chmod +x simulate-load.sh
   ```

2. **Ejecutar Simulación**
   ```bash
   ./simulate-load.sh
   ```

### Paso 9: Configurar Acciones Automáticas

1. **Crear Auto Scaling Action**
   - Ir a CloudWatch > Alarms
   - Seleccionar alarma "HighRequestRate"
   - Hacer clic en "Actions" > "Modify"
   - **Add actions:** Auto Scaling action
   - Configurar acción de escalado

2. **Crear EC2 Action**
   - Seleccionar alarma "HighErrorRate"
   - **Add actions:** EC2 action
   - Configurar acción de reinicio de instancia

### Paso 10: Configurar Alarmas Avanzadas

1. **Crear Alarma con Anomaly Detection**
   - Ir a CloudWatch > Alarms
   - Hacer clic en "Create alarm"
   - **Select metric:** CustomMetrics > ApplicationRequests
   - **Threshold type:** Anomaly detection
   - **Band:** 2 (standard deviations)
   - **Alarm name:** `AnomalyDetection`
   - Hacer clic en "Create alarm"

2. **Configurar Alarma con Math Expression**
   - Crear alarma con expresión matemática
   - **Expression:** `SUM(ApplicationRequests) / SUM(ApplicationErrors)`
   - **Threshold:** Less than 10 (error rate > 10%)
   - **Alarm name:** `ErrorRateThreshold`

---

## ✅ Verificación

### Checklist de Verificación

- [ ] Tópico SNS creado y suscripción confirmada
- [ ] Métricas personalizadas creadas correctamente
- [ ] Alarmas básicas configuradas (3 alarmas)
- [ ] Alarma compuesta creada
- [ ] Dashboard personalizado creado
- [ ] Simulación de carga ejecutada
- [ ] Notificaciones recibidas por email
- [ ] Acciones automáticas configuradas
- [ ] Alarmas avanzadas implementadas

### Comandos de Verificación

```bash
# Verificar métricas personalizadas
aws cloudwatch list-metrics --namespace "CustomMetrics"

# Verificar alarmas
aws cloudwatch describe-alarms --alarm-names "HighRequestRate" "HighErrorRate" "HighResponseTime"

# Verificar tópico SNS
aws sns list-topics --query 'Topics[?contains(TopicArn, `cloudwatch-alarms-topic`)]'

# Verificar suscripciones
aws sns list-subscriptions-by-topic --topic-arn [TOPIC_ARN]
```

---

## 🧹 Limpieza

### Recursos a Eliminar

1. **Eliminar Alarmas**
   - Ir a CloudWatch > Alarms
   - Seleccionar todas las alarmas creadas
   - Hacer clic en "Delete"

2. **Eliminar Dashboard**
   - Ir a CloudWatch > Dashboards
   - Seleccionar "ApplicationMonitoring"
   - Hacer clic en "Delete"

3. **Eliminar Tópico SNS**
   - Ir a SNS > Topics
   - Seleccionar `cloudwatch-alarms-topic`
   - Hacer clic en "Delete"

4. **Limpiar Métricas Personalizadas**
   ```bash
   # Las métricas personalizadas se eliminan automáticamente después de 15 meses
   # No es necesario eliminarlas manualmente
   ```

---

## 📝 Notas Importantes

### 🔒 Seguridad
- **IAM permissions:** Configurar permisos mínimos para CloudWatch
- **SNS encryption:** Habilitar encriptación para tópicos SNS
- **Access control:** Limitar acceso a alarmas y dashboards
- **Audit logging:** Habilitar CloudTrail para auditoría

### 💡 Mejores Prácticas
- **Naming convention:** Usar nombres descriptivos para alarmas
- **Threshold setting:** Configurar umbrales basados en líneas base
- **Action planning:** Planificar acciones antes de crear alarmas
- **Documentation:** Documentar propósito de cada alarma

### ⚠️ Puntos de Atención
- **Costos:** Las alarmas tienen costos por mes
- **False positives:** Configurar umbrales para evitar falsos positivos
- **Notification fatigue:** No crear demasiadas alarmas
- **Maintenance:** Revisar y ajustar alarmas regularmente

### 🎯 Para el Examen
- **Alarm states:** OK, ALARM, INSUFFICIENT_DATA
- **Alarm evaluation:** Period, evaluation periods, threshold
- **Alarm actions:** SNS, Auto Scaling, EC2 actions
- **Composite alarms:** Combinar múltiples alarmas

---

## 🔗 Recursos Adicionales

- [CloudWatch Alarms User Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html)
- [CloudWatch Metrics User Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html)
- [SNS User Guide](https://docs.aws.amazon.com/sns/latest/dg/welcome.html)
- [CloudWatch Best Practices](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_BestPractices.html) 