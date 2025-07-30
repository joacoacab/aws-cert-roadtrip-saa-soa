# 🗓 Semana 08: Arquitecturas Serverless – Lambda, API Gateway, Step Functions, SQS, SNS

📅 **Fecha:** [Personalizar según tu cronograma]  
🎯 **Objetivo:** Comprender los servicios serverless de AWS y cómo diseñar arquitecturas sin servidor escalables y eficientes.

---

## ✅ Temas cubiertos

### ⚡ AWS Lambda
- **Serverless Computing:** Computación sin gestión de servidores
- **Runtime Environments:** Node.js, Python, Java, Go, .NET, Ruby
- **Function Configuration:** Memoria, timeout, environment variables
- **Event Sources:** S3, DynamoDB, SQS, SNS, API Gateway, EventBridge
- **Cold Start vs Warm Start:** Optimización de rendimiento
- **Concurrency Limits:** Límites de concurrencia por función
- **Layers:** Código compartido entre funciones
- **Provisioned Concurrency:** Concurrencia pre-provisionada

### 🌐 API Gateway
- **REST APIs:** APIs RESTful con HTTP/HTTPS
- **HTTP APIs:** APIs HTTP optimizadas para rendimiento
- **WebSocket APIs:** APIs de comunicación bidireccional
- **Authorization:** IAM, Cognito, Lambda authorizers
- **Request/Response Transformation:** Transformación de datos
- **Caching:** Caché de respuestas para mejorar rendimiento
- **Throttling:** Limitación de velocidad de requests
- **CORS:** Cross-Origin Resource Sharing

### 🔄 Step Functions
- **State Machines:** Máquinas de estado para orquestación
- **Workflow Definition:** Definición de flujos de trabajo
- **State Types:** Task, Choice, Wait, Parallel, Map
- **Error Handling:** Manejo de errores y retry logic
- **Visual Designer:** Editor visual para workflows
- **Integration:** Integración con servicios AWS
- **Express Workflows:** Workflows síncronos
- **Standard Workflows:** Workflows asíncronos

### 📨 Amazon SQS (Simple Queue Service)
- **Message Queues:** Colas de mensajes para comunicación asíncrona
- **Standard Queues:** Colas estándar con at-least-once delivery
- **FIFO Queues:** Colas FIFO con exactly-once processing
- **Dead Letter Queues:** Colas para mensajes fallidos
- **Visibility Timeout:** Tiempo de visibilidad de mensajes
- **Long Polling:** Polling largo para reducir costos
- **Message Attributes:** Atributos personalizados de mensajes
- **Batch Operations:** Operaciones en lote

### 📢 Amazon SNS (Simple Notification Service)
- **Pub/Sub Messaging:** Mensajería publicador/suscriptor
- **Topics:** Tópicos para agrupar suscriptores
- **Subscriptions:** Suscripciones a tópicos
- **Protocols:** HTTP/HTTPS, Email, SMS, Lambda, SQS
- **Message Filtering:** Filtrado de mensajes por atributos
- **Fan-out Pattern:** Patrón de distribución masiva
- **Cross-Region Publishing:** Publicación entre regiones
- **Message Attributes:** Atributos personalizados

---

## 🔗 Recursos útiles

### 📖 Documentación Oficial
- [Lambda Developer Guide](https://docs.aws.amazon.com/lambda/latest/dg/welcome.html)
- [API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/welcome.html)
- [Step Functions Developer Guide](https://docs.aws.amazon.com/step-functions/latest/dg/welcome.html)
- [SQS Developer Guide](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/welcome.html)
- [SNS Developer Guide](https://docs.aws.amazon.com/sns/latest/dg/welcome.html)

### 🎥 Cursos Online
- [AWS Skill Builder: Serverless](https://explore.skillbuilder.aws/learn/course/external/view/elearning/134/aws-certified-solutions-architect-associate)
- [A Cloud Guru: AWS Lambda Deep Dive](https://acloudguru.com/course/aws-lambda-deep-dive)
- [Udemy: AWS Serverless](https://www.udemy.com/topic/aws-serverless/)

### 📝 Herramientas
- [AWS SAM (Serverless Application Model)](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/)
- [AWS Lambda Console](https://console.aws.amazon.com/lambda/)
- [AWS Step Functions Console](https://console.aws.amazon.com/states/)

---

## 🧪 Lab recomendado

### Lab 1: Lambda con API Gateway
**Objetivo:** Crear API serverless con Lambda

**Pasos:**
1. Crear función Lambda con Node.js/Python
2. Configurar API Gateway REST API
3. Crear recursos y métodos HTTP
4. Configurar Lambda integration
5. Probar API con Postman/cURL
6. Configurar CORS y autorización

### Lab 2: Step Functions Workflow
**Objetivo:** Crear workflow de orquestación

**Pasos:**
1. Crear state machine en Step Functions
2. Definir estados: Task, Choice, Wait
3. Integrar con Lambda functions
4. Configurar error handling y retry
5. Probar workflow completo
6. Monitorear ejecución con CloudWatch

### Lab 3: SQS con Lambda
**Objetivo:** Implementar procesamiento asíncrono

**Pasos:**
1. Crear cola SQS estándar
2. Crear función Lambda para procesar mensajes
3. Configurar SQS como event source
4. Implementar dead letter queue
5. Probar procesamiento de mensajes
6. Configurar CloudWatch alarms

### Lab 4: SNS Fan-out Pattern
**Objetivo:** Implementar distribución masiva de mensajes

**Pasos:**
1. Crear tópico SNS
2. Configurar múltiples suscriptores (Lambda, SQS, Email)
3. Implementar message filtering
4. Probar fan-out pattern
5. Configurar cross-region publishing
6. Monitorear delivery de mensajes

---

## 📝 Notas personales

### 💡 Conceptos Clave
- **Lambda es event-driven:** Se ejecuta en respuesta a eventos
- **API Gateway es stateless:** No mantiene estado entre requests
- **Step Functions orquesta:** Coordina múltiples servicios
- **SQS es durable:** Mensajes persisten hasta procesamiento

### ⚠️ Puntos de Atención
- **Cold starts:** Primera ejecución de Lambda puede ser lenta
- **Timeout limits:** Configurar timeouts apropiados
- **Concurrency limits:** Planificar límites de concurrencia
- **Message ordering:** FIFO queues para orden garantizado

### 🎯 Para el Examen
- Diferencias entre Standard y FIFO queues
- Cuándo usar Step Functions vs Lambda
- Configuración de API Gateway
- Patrones de mensajería serverless

### 💰 Consideraciones de Costos
- **Lambda:** Pagar por ejecución y duración
- **API Gateway:** Costo por request y transferencia
- **Step Functions:** Costo por state transition
- **SQS/SNS:** Costo por mensaje procesado

### 🔒 Seguridad
- **IAM roles:** Para permisos de Lambda
- **VPC integration:** Para acceso a recursos privados
- **Encryption:** En tránsito y en reposo
- **Authorization:** API Gateway authorizers

---

## ✅ Checklist

### 📚 Estudio Teórico
- [x] Leer documentación de Lambda
- [x] Estudiar API Gateway
- [x] Revisar Step Functions
- [x] Entender SQS y SNS

### 🧪 Práctica
- [x] Crear Lambda con API Gateway
- [x] Implementar Step Functions workflow
- [x] Configurar SQS con Lambda
- [x] Probar SNS fan-out pattern

### 📝 Evaluación
- [x] Tomar quiz de serverless
- [x] Completar práctica de orquestación
- [x] Revisar métricas de rendimiento
- [x] Documentar patrones serverless

### 🎯 Preparación para Siguiente Semana
- [x] Revisar conceptos de monitoreo
- [x] Preparar para labs de CloudWatch
- [x] Instalar herramientas de observabilidad
- [x] Configurar permisos para servicios de monitoreo

---

## 📊 Progreso Semanal

**Tiempo dedicado:** 24 horas  
**Temas dominados:** 92%  
**Labs completados:** 4/4  
**Quizzes aprobados:** 3/3  

**Próximo objetivo:** Monitoreo (CloudWatch, Logs, CloudTrail, dashboards, EventBridge) 