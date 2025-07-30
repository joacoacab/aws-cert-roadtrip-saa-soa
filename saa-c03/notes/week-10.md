# 🗓 Semana 10: Optimización de Costos – Cost Explorer, Budgets, Savings Plans

📅 **Fecha:** 7-13 Octubre 2024  
🎯 **Objetivo:** Comprender las herramientas de optimización de costos de AWS y cómo diseñar arquitecturas costos-eficientes.

---

## ✅ Temas cubiertos

### 💰 AWS Cost Explorer
- **Cost Analysis:** Análisis detallado de costos por servicio, región, etiqueta
- **Cost Allocation Tags:** Etiquetas para asignación de costos
- **Cost and Usage Reports:** Reportes detallados de costos y uso
- **Forecasting:** Predicción de costos futuros
- **Reservation Coverage:** Cobertura de reservas y ahorros
- **Unblended vs Blended Costs:** Diferentes tipos de costos
- **Cost Anomaly Detection:** Detección automática de anomalías en costos
- **Cost Optimization Recommendations:** Recomendaciones de optimización

### 📊 AWS Budgets
- **Cost Budgets:** Presupuestos basados en costos
- **Usage Budgets:** Presupuestos basados en uso
- **RI Utilization Budgets:** Presupuestos de utilización de reservas
- **Budget Alerts:** Alertas cuando se alcanzan umbrales
- **Budget Actions:** Acciones automáticas basadas en presupuestos
- **Budget Notifications:** Notificaciones por email, SNS, Slack
- **Budget Filters:** Filtros para presupuestos específicos
- **Budget Reports:** Reportes de presupuestos

### 🎯 Savings Plans
- **Compute Savings Plans:** Ahorros para servicios de computación
- **EC2 Instance Savings Plans:** Ahorros específicos para EC2
- **SageMaker Savings Plans:** Ahorros para SageMaker
- **Lambda Savings Plans:** Ahorros para Lambda
- **Flexibility:** Flexibilidad entre instancias y servicios
- **Commitment Periods:** Períodos de compromiso (1-3 años)
- **Payment Options:** Opciones de pago (All Upfront, Partial Upfront, No Upfront)
- **Savings Plans Recommendations:** Recomendaciones de ahorro

### 🔍 Cost Optimization Strategies
- **Right-sizing:** Dimensionamiento correcto de recursos
- **Reserved Instances:** Instancias reservadas para cargas predecibles
- **Spot Instances:** Instancias spot para cargas flexibles
- **Auto Scaling:** Escalado automático para optimizar costos
- **S3 Lifecycle Policies:** Políticas de ciclo de vida para S3
- **Data Transfer Optimization:** Optimización de transferencia de datos
- **Multi-Region Cost Analysis:** Análisis de costos multi-región
- **Cost Allocation:** Asignación de costos por proyecto/departamento

### 📈 Cost Management Best Practices
- **Tagging Strategy:** Estrategia de etiquetado para costos
- **Cost Monitoring:** Monitoreo continuo de costos
- **Budget Planning:** Planificación de presupuestos
- **Cost Optimization Reviews:** Revisiones periódicas de optimización
- **Team Training:** Capacitación del equipo en costos
- **Cost Governance:** Gobernanza de costos en la organización

---

## 🔗 Recursos útiles

### 📖 Documentación Oficial
- [AWS Cost Management User Guide](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/)
- [Cost Explorer User Guide](https://docs.aws.amazon.com/ce/)
- [AWS Budgets User Guide](https://docs.aws.amazon.com/cost-management/latest/userguide/budgets-managing-costs.html)
- [Savings Plans User Guide](https://docs.aws.amazon.com/savingsplans/latest/userguide/)
- [AWS Pricing Calculator](https://calculator.aws/)

### 🎥 Cursos Online
- [AWS Skill Builder: Cost Optimization](https://explore.skillbuilder.aws/learn/course/external/view/elearning/134/aws-certified-solutions-architect-associate)
- [A Cloud Guru: AWS Cost Optimization](https://acloudguru.com/course/aws-cost-optimization)
- [Udemy: AWS Cost Management](https://www.udemy.com/topic/aws-cost-management/)

### 📝 Herramientas
- [AWS Cost Explorer Console](https://console.aws.amazon.com/costexplorer/)
- [AWS Budgets Console](https://console.aws.amazon.com/billing/)
- [AWS Pricing Calculator](https://calculator.aws/)
- [AWS Cost and Usage Reports](https://docs.aws.amazon.com/cur/)

---

## 🧪 Lab recomendado

### Lab 1: Cost Explorer y Análisis
**Objetivo:** Analizar costos y crear reportes

**Pasos:**
1. Habilitar Cost Explorer en cuenta
2. Crear cost allocation tags
3. Analizar costos por servicio y región
4. Crear reportes personalizados
5. Configurar cost anomaly detection
6. Revisar recomendaciones de optimización

### Lab 2: AWS Budgets y Alertas
**Objetivo:** Configurar presupuestos y alertas

**Pasos:**
1. Crear cost budget mensual
2. Configurar alertas en 80%, 100%, 120%
3. Crear usage budget para EC2
4. Configurar notificaciones por email
5. Probar alertas con carga simulada
6. Configurar budget actions

### Lab 3: Savings Plans
**Objetivo:** Implementar estrategia de ahorro

**Pasos:**
1. Analizar uso actual de servicios
2. Revisar recomendaciones de Savings Plans
3. Crear Compute Savings Plan
4. Configurar commitment de 1 año
5. Monitorear ahorros realizados
6. Ajustar estrategia según resultados

### Lab 4: Cost Optimization Review
**Objetivo:** Revisar y optimizar costos existentes

**Pasos:**
1. Identificar recursos subutilizados
2. Revisar instancias EC2 para right-sizing
3. Configurar S3 lifecycle policies
4. Implementar auto scaling
5. Optimizar data transfer
6. Documentar ahorros realizados

---

## 📝 Notas personales

### 💡 Conceptos Clave
- **Cost Explorer es fundamental:** Para entender dónde van los costos
- **Budgets previenen sorpresas:** Alertas tempranas de costos
- **Savings Plans son flexibles:** Más flexibles que Reserved Instances
- **Tagging es crítico:** Para asignación de costos

### ⚠️ Puntos de Atención
- **Cost allocation tags:** Implementar desde el inicio
- **Budget thresholds:** Configurar alertas apropiadas
- **Savings Plans commitment:** Planificar cuidadosamente
- **Cost monitoring:** Revisar regularmente

### 🎯 Para el Examen
- Diferencias entre Savings Plans y Reserved Instances
- Cuándo usar Spot vs On-Demand instances
- Configuración de cost allocation tags
- Estrategias de optimización de costos

### 💰 Consideraciones de Costos
- **Cost Explorer:** Primeros 12 meses gratuitos
- **Budgets:** Sin costo adicional
- **Savings Plans:** Ahorro hasta 72%
- **Cost and Usage Reports:** Costo por reporte

### 🔒 Seguridad
- **Cost data access:** IAM para acceso a datos de costos
- **Budget notifications:** Configurar canales seguros
- **Cost allocation:** Proteger información de costos
- **Compliance:** Cumplimiento con políticas de gasto

---

## ✅ Checklist

### 📚 Estudio Teórico
- [x] Leer documentación de Cost Explorer
- [x] Estudiar AWS Budgets
- [x] Revisar Savings Plans
- [x] Entender estrategias de optimización

### 🧪 Práctica
- [x] Configurar Cost Explorer y análisis
- [x] Crear presupuestos y alertas
- [x] Implementar Savings Plans
- [x] Realizar revisión de optimización

### 📝 Evaluación
- [x] Tomar quiz de optimización de costos
- [x] Completar práctica de análisis de costos
- [x] Revisar reportes de ahorro
- [x] Documentar estrategias de optimización

### 🎯 Preparación para Siguiente Semana
- [x] Revisar conceptos de arquitecturas
- [x] Preparar para labs de Well-Architected
- [x] Instalar herramientas de diseño
- [x] Configurar permisos para servicios de arquitectura

---

## 📊 Progreso Semanal

**Tiempo dedicado:** 16 horas  
**Temas dominados:** 85%  
**Labs completados:** 4/4  
**Quizzes aprobados:** 3/3  

**Próximo objetivo:** Arquitecturas de Referencia (Well-Architected Framework) 