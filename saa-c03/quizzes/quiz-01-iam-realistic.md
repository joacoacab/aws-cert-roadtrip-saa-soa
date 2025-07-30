# 📝 Quiz 01: IAM Fundamentals (Versión Realista)

**Semana:** 01 - Fundamentos de AWS  
**Duración:** 30 minutos  
**Preguntas:** 20  
**Puntuación mínima:** 70%  

---

## 📋 Instrucciones

- Lee cada pregunta cuidadosamente
- Selecciona la mejor respuesta
- **NO mires las respuestas hasta completar todo el quiz**
- Al final, revisa tus respuestas con las correctas
- Calcula tu puntuación

---

## ❓ Preguntas

### 1. ¿Cuál es la diferencia entre un IAM User y un IAM Role?

**A)** Los Users tienen credenciales permanentes, los Roles son temporales  
**B)** Los Users son para personas, los Roles son para servicios  
**C)** Los Users pueden tener políticas inline, los Roles no  
**D)** Los Users pueden acceder a la consola, los Roles no  

### 2. ¿Qué tipo de política tiene mayor prioridad cuando hay conflictos?

**A)** Inline Policy  
**B)** Managed Policy  
**C)** Service Control Policy (SCP)  
**D)** Organization Policy  

### 3. ¿Cuál es el propósito de un Trust Policy en un IAM Role?

**A)** Definir qué entidades pueden asumir el rol  
**B)** Definir qué recursos puede acceder el rol  
**C)** Definir qué acciones puede realizar el rol  
**D)** Definir cuándo expira el rol  

### 4. ¿Qué servicio de AWS puede generar automáticamente credenciales temporales?

**A)** AWS STS (Security Token Service)  
**B)** AWS IAM  
**C)** AWS Cognito  
**D)** AWS Secrets Manager  

### 5. ¿Cuál es la diferencia entre un IAM Group y un IAM Role?

**A)** Los Groups son para usuarios, los Roles son para servicios  
**B)** Los Groups pueden tener políticas, los Roles no  
**C)** Los Groups son permanentes, los Roles son temporales  
**D)** Los Groups son para acceso programático, los Roles para consola  

### 6. ¿Qué significa que un Security Group sea "stateful"?

**A)** Mantiene el estado de las conexiones automáticamente  
**B)** Requiere configuración manual de reglas  
**C)** Solo permite tráfico saliente  
**D)** Solo permite tráfico entrante  

### 7. ¿Cuál es el formato correcto de una IAM Policy?

**A)** JSON con elementos Version, Statement, Effect, Action, Resource  
**B)** XML con elementos Policy, Statement, Effect, Action, Resource  
**C)** YAML con elementos version, statement, effect, action, resource  
**D)** CSV con columnas Effect, Action, Resource, Condition  

### 8. ¿Qué es un IAM Instance Profile?

**A)** Un rol que se asigna a una instancia EC2 para acceso a servicios AWS  
**B)** Un perfil de usuario que se asigna a una instancia  
**C)** Un grupo de políticas para instancias  
**D)** Un documento de configuración para instancias  

### 9. ¿Cuál es la diferencia entre Access Keys y Session Tokens?

**A)** Access Keys son permanentes, Session Tokens son temporales  
**B)** Access Keys son para consola, Session Tokens para API  
**C)** Access Keys son para usuarios, Session Tokens para roles  
**D)** Access Keys son para servicios, Session Tokens para aplicaciones  

### 10. ¿Qué es Cross-Account Access en IAM?

**A)** Permitir que un usuario de una cuenta acceda a recursos de otra cuenta  
**B)** Permitir que un servicio acceda a recursos de otra cuenta  
**C)** Permitir que una región acceda a recursos de otra región  
**D)** Permitir que una VPC acceda a recursos de otra VPC  

### 11. ¿Cuál es el propósito de IAM Access Analyzer?

**A)** Identificar recursos que no se utilizan y permisos innecesarios  
**B)** Analizar el uso de credenciales de usuarios  
**C)** Monitorear el acceso a recursos AWS  
**D)** Generar reportes de costos de IAM  

### 12. ¿Qué es un IAM Service-Linked Role?

**A)** Un rol creado automáticamente por un servicio AWS específico  
**B)** Un rol que conecta múltiples servicios AWS  
**C)** Un rol que permite acceso entre cuentas  
**D)** Un rol temporal para operaciones específicas  

### 13. ¿Cuál es la diferencia entre una Managed Policy y una Inline Policy?

**A)** Las Managed Policies se pueden reutilizar, las Inline son específicas  
**B)** Las Managed Policies son más seguras que las Inline  
**C)** Las Inline Policies tienen mayor prioridad que las Managed  
**D)** Las Managed Policies son temporales, las Inline son permanentes  

### 14. ¿Qué es el principio de "Least Privilege" en IAM?

**A)** Dar solo los permisos mínimos necesarios para realizar una tarea  
**B)** Dar todos los permisos posibles para evitar problemas  
**C)** No dar ningún permiso por defecto  
**D)** Dar permisos temporales que expiran automáticamente  

### 15. ¿Cuál es el propósito de MFA en IAM?

**A)** Agregar una capa adicional de seguridad a la autenticación  
**B)** Permitir acceso desde múltiples dispositivos  
**C)** Reducir el costo de las credenciales  
**D)** Mejorar el rendimiento del acceso  

### 16. ¿Qué es CloudTrail en relación con IAM?

**A)** Un servicio que registra todas las llamadas a la API de AWS  
**B)** Un servicio que gestiona las políticas de IAM  
**C)** Un servicio que monitorea el uso de credenciales  
**D)** Un servicio que genera reportes de seguridad  

### 17. ¿Cuál es la diferencia entre un IAM User y el Root User?

**A)** El Root User tiene acceso completo, los Users tienen permisos limitados  
**B)** El Root User es temporal, los Users son permanentes  
**C)** El Root User es para servicios, los Users son para personas  
**D)** El Root User no puede usar MFA, los Users sí  

### 18. ¿Qué es un IAM Credentials Report?

**A)** Un reporte que muestra el estado de todas las credenciales de usuarios  
**B)** Un reporte de costos asociados a IAM  
**C)** Un reporte de uso de servicios AWS  
**D)** Un reporte de políticas de seguridad  

### 19. ¿Cuál es el propósito de un Trust Policy en un IAM Role?

**A)** Definir qué entidades pueden asumir el rol y bajo qué condiciones  
**B)** Definir qué recursos puede acceder el rol  
**C)** Definir qué acciones puede realizar el rol  
**D)** Definir cuándo expira el rol  

### 20. ¿Qué es la diferencia entre un IAM Role y un IAM Group?

**A)** Los Roles son para servicios y aplicaciones, los Groups son para usuarios  
**B)** Los Roles son temporales, los Groups son permanentes  
**C)** Los Roles pueden tener políticas inline, los Groups no  
**D)** Los Roles son para acceso programático, los Groups para consola  

---

## 📝 Tus Respuestas

**Escribe tus respuestas aquí (A, B, C o D):**

1. ____  2. ____  3. ____  4. ____  5. ____  
6. ____  7. ____  8. ____  9. ____  10. ____  
11. ____  12. ____  13. ____  14. ____  15. ____  
16. ____  17. ____  18. ____  19. ____  20. ____  

---

## ✅ Respuestas Correctas

**NO mires estas respuestas hasta completar el quiz:**

1. **A** - Los Users tienen credenciales permanentes, los Roles son temporales
2. **A** - Inline Policy
3. **A** - Definir qué entidades pueden asumir el rol
4. **A** - AWS STS (Security Token Service)
5. **A** - Los Groups son para usuarios, los Roles son para servicios
6. **A** - Mantiene el estado de las conexiones automáticamente
7. **A** - JSON con elementos Version, Statement, Effect, Action, Resource
8. **A** - Un rol que se asigna a una instancia EC2 para acceso a servicios AWS
9. **A** - Access Keys son permanentes, Session Tokens son temporales
10. **A** - Permitir que un usuario de una cuenta acceda a recursos de otra cuenta
11. **A** - Identificar recursos que no se utilizan y permisos innecesarios
12. **A** - Un rol creado automáticamente por un servicio AWS específico
13. **A** - Las Managed Policies se pueden reutilizar, las Inline son específicas
14. **A** - Dar solo los permisos mínimos necesarios para realizar una tarea
15. **A** - Agregar una capa adicional de seguridad a la autenticación
16. **A** - Un servicio que registra todas las llamadas a la API de AWS
17. **A** - El Root User tiene acceso completo, los Users tienen permisos limitados
18. **A** - Un reporte que muestra el estado de todas las credenciales de usuarios
19. **A** - Definir qué entidades pueden asumir el rol y bajo qué condiciones
20. **A** - Los Roles son para servicios y aplicaciones, los Groups son para usuarios

---

## 📊 Cálculo de Puntuación

**Compara tus respuestas con las correctas:**

- **Respuestas correctas:** _____ / 20
- **Porcentaje:** _____ %
- **Resultado:** _____ (Aprobado/Reprobado)

### Interpretación de Resultados

- **18-20 puntos (90-100%):** Excelente comprensión de IAM
- **14-17 puntos (70-89%):** Buena comprensión, revisar conceptos débiles
- **10-13 puntos (50-69%):** Comprensión básica, necesitas más estudio
- **Menos de 10 puntos:** Necesitas revisar los fundamentos de IAM

---

## 📚 Recursos para Repaso

### Conceptos que Revisar

Si tu puntuación fue menor a 14, revisa estos conceptos:

1. **IAM Fundamentals:** Qué es IAM y sus componentes
2. **Users, Groups, Roles:** Diferencias y casos de uso
3. **Policies:** Tipos y configuración
4. **Security Best Practices:** MFA, least privilege, access keys
5. **Advanced Features:** Cross-account access, service-linked roles

### Recursos Adicionales

- [IAM User Guide](https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html)
- [IAM Best Practices](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html)
- [IAM Policy Examples](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_examples.html)

---

## 🎯 Próximos Pasos

1. **Revisar conceptos débiles** según tu puntuación
2. **Completar el lab de IAM** para práctica práctica
3. **Prepararse para la semana 02** (EC2 y Auto Scaling)
4. **Tomar el siguiente quiz** cuando estés listo

---

**¡Buen trabajo! Sigue estudiando y practicando. 🚀** 