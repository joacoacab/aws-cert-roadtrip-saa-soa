# 📝 Quiz 01: Fundamentos de IAM

**Semana:** 01 - Fundamentos de AWS  
**Duración:** 30 minutos  
**Preguntas:** 20  
**Puntuación mínima:** 70%  

---

## 📋 Instrucciones

- Lee cada pregunta cuidadosamente
- Selecciona la mejor respuesta
- Revisa tus respuestas antes de enviar
- Consulta la documentación si tienes dudas

---

## ❓ Preguntas

### 1. ¿Qué es IAM en AWS?

**A)** Identity and Access Management - Un servicio para gestionar identidades y acceso  
**B)** Internet Access Management - Un servicio para gestionar acceso a internet  
**C)** Instance Access Management - Un servicio para gestionar acceso a instancias  
**D)** Internal Access Management - Un servicio para gestión interna  

**Respuesta correcta:** A  
**Explicación:** IAM (Identity and Access Management) es el servicio de AWS que permite gestionar de forma segura el acceso a los servicios y recursos de AWS.

---

### 2. ¿Cuál de las siguientes NO es una entidad IAM?

**A)** Usuarios  
**B)** Grupos  
**C)** Roles  
**D)** Instancias  

**Respuesta correcta:** D  
**Explicación:** Las entidades IAM son usuarios, grupos y roles. Las instancias EC2 no son entidades IAM, aunque pueden usar roles IAM.

---

### 3. ¿Qué política de seguridad aplica IAM por defecto?

**A)** Permitir todo el acceso  
**B)** Denegar todo el acceso  
**C)** Permitir acceso solo a S3  
**D)** Permitir acceso solo a EC2  

**Respuesta correcta:** B  
**Explicación:** IAM aplica el principio de "denegar por defecto". Los usuarios no tienen permisos hasta que se les otorgan explícitamente.

---

### 4. ¿Cuál es la diferencia entre acceso programático y acceso a consola?

**A)** No hay diferencia, son lo mismo  
**B)** El acceso programático usa claves de acceso, el acceso a consola usa contraseñas  
**C)** El acceso programático es más seguro  
**D)** El acceso a consola es más rápido  

**Respuesta correcta:** B  
**Explicación:** El acceso programático utiliza Access Key ID y Secret Access Key para APIs, mientras que el acceso a consola utiliza nombre de usuario y contraseña para la interfaz web.

---

### 5. ¿Qué significa MFA en el contexto de IAM?

**A)** Multi-Factor Authentication  
**B)** Multiple File Access  
**C)** Managed File Authentication  
**D)** Master File Access  

**Respuesta correcta:** A  
**Explicación:** MFA (Multi-Factor Authentication) es una capa adicional de seguridad que requiere un segundo factor de autenticación además de la contraseña.

---

### 6. ¿Cuál de las siguientes es una mejor práctica de seguridad con IAM?

**A)** Usar la cuenta root para operaciones diarias  
**B)** Crear usuarios IAM para operaciones diarias  
**C)** Compartir credenciales entre usuarios  
**D)** No usar MFA para simplificar el acceso  

**Respuesta correcta:** B  
**Explicación:** Es una mejor práctica crear usuarios IAM para operaciones diarias y evitar usar la cuenta root, que debe reservarse para tareas administrativas críticas.

---

### 7. ¿Qué son los grupos en IAM?

**A)** Colecciones de políticas  
**B)** Colecciones de usuarios  
**C)** Colecciones de roles  
**D)** Colecciones de recursos  

**Respuesta correcta:** B  
**Explicación:** Los grupos en IAM son colecciones de usuarios que facilitan la gestión de permisos al permitir asignar políticas a múltiples usuarios a la vez.

---

### 8. ¿Qué son los roles en IAM?

**A)** Permisos temporales para usuarios  
**B)** Permisos permanentes para servicios  
**C)** Permisos temporales para servicios y usuarios  
**D)** Permisos permanentes para usuarios  

**Respuesta correcta:** C  
**Explicación:** Los roles proporcionan permisos temporales que pueden ser asumidos por usuarios, aplicaciones o servicios AWS.

---

### 9. ¿Cuál es el formato de una política IAM?

**A)** XML  
**B)** JSON  
**C)** YAML  
**D)** CSV  

**Respuesta correcta:** B  
**Explicación:** Las políticas IAM se escriben en formato JSON (JavaScript Object Notation).

---

### 10. ¿Qué significa el principio de menor privilegio?

**A)** Dar todos los permisos posibles  
**B)** Dar solo los permisos necesarios  
**C)** No dar ningún permiso  
**D)** Dar permisos temporales  

**Respuesta correcta:** B  
**Explicación:** El principio de menor privilegio significa otorgar solo los permisos mínimos necesarios para realizar una tarea específica.

---

### 11. ¿Cuál es la jerarquía de evaluación de políticas IAM?

**A)** Explicit Allow > Explicit Deny > Implicit Deny  
**B)** Explicit Deny > Explicit Allow > Implicit Deny  
**C)** Implicit Deny > Explicit Allow > Explicit Deny  
**D)** Explicit Allow > Implicit Deny > Explicit Deny  

**Respuesta correcta:** B  
**Explicación:** La jerarquía es: Explicit Deny (tiene prioridad), luego Explicit Allow, y finalmente Implicit Deny (por defecto).

---

### 12. ¿Qué servicio AWS puede asumir roles IAM?

**A)** Solo EC2  
**B)** Solo Lambda  
**C)** Múltiples servicios AWS  
**D)** Ningún servicio AWS  

**Respuesta correcta:** C  
**Explicación:** Múltiples servicios AWS pueden asumir roles IAM, incluyendo EC2, Lambda, ECS, EKS, y otros.

---

### 13. ¿Qué es un trust policy en un rol IAM?

**A)** Una política que define quién puede asumir el rol  
**B)** Una política que define los permisos del rol  
**C)** Una política que define los recursos del rol  
**D)** Una política que define la duración del rol  

**Respuesta correcta:** A  
**Explicación:** Una trust policy (política de confianza) define qué entidades pueden asumir el rol.

---

### 14. ¿Cuál es la duración máxima de credenciales temporales de un rol?

**A)** 1 hora  
**B)** 12 horas  
**C)** 24 horas  
**D)** 36 horas  

**Respuesta correcta:** D  
**Explicación:** Las credenciales temporales de un rol pueden durar hasta 36 horas (12 horas por defecto, configurable hasta 36).

---

### 15. ¿Qué es una política inline en IAM?

**A)** Una política que se crea directamente en una entidad  
**B)** Una política que se crea en un archivo separado  
**C)** Una política que se crea automáticamente  
**D)** Una política que se crea por defecto  

**Respuesta correcta:** A  
**Explicación:** Una política inline es una política que se crea y adjunta directamente a una entidad IAM (usuario, grupo o rol).

---

### 16. ¿Qué es una política administrada en IAM?

**A)** Una política que se crea automáticamente  
**B)** Una política que AWS crea y mantiene  
**C)** Una política que se crea por defecto  
**D)** Una política que se crea manualmente  

**Respuesta correcta:** B  
**Explicación:** Una política administrada es una política que AWS crea y mantiene, como "AmazonS3ReadOnlyAccess" o "AdministratorAccess".

---

### 17. ¿Cuál es la diferencia entre políticas administradas y políticas personalizadas?

**A)** No hay diferencia  
**B)** Las políticas administradas son más seguras  
**C)** Las políticas personalizadas permiten control granular  
**D)** Las políticas administradas son más rápidas  

**Respuesta correcta:** C  
**Explicación:** Las políticas personalizadas permiten un control más granular y específico, mientras que las políticas administradas son predefinidas por AWS.

---

### 18. ¿Qué es el Access Analyzer de IAM?

**A)** Una herramienta para analizar el rendimiento de IAM  
**B)** Una herramienta para identificar recursos no utilizados  
**C)** Una herramienta para identificar permisos excesivos  
**D)** Una herramienta para analizar costos de IAM  

**Respuesta correcta:** C  
**Explicación:** IAM Access Analyzer ayuda a identificar permisos excesivos y recursos que no se utilizan, mejorando la seguridad.

---

### 19. ¿Qué es CloudTrail en relación con IAM?

**A)** Un servicio para monitorear actividad de IAM  
**B)** Un servicio para gestionar políticas de IAM  
**C)** Un servicio para crear usuarios de IAM  
**D)** Un servicio para eliminar usuarios de IAM  

**Respuesta correcta:** A  
**Explicación:** CloudTrail registra las llamadas a la API de AWS, incluyendo todas las actividades de IAM, para auditoría y monitoreo.

---

### 20. ¿Cuál es la mejor práctica para rotar claves de acceso?

**A)** Nunca rotar las claves  
**B)** Rotar las claves cada 5 años  
**C)** Rotar las claves regularmente (cada 90 días)  
**D)** Rotar las claves solo cuando hay problemas  

**Respuesta correcta:** C  
**Explicación:** Es una mejor práctica rotar las claves de acceso regularmente (cada 90 días) para mantener la seguridad.

---

## 📊 Resultados

### Cálculo de Puntuación

- **Puntuación máxima:** 20 puntos
- **Puntuación mínima para aprobar:** 14 puntos (70%)
- **Puntuación tuya:** _____ puntos

### Interpretación de Resultados

- **18-20 puntos (90-100%):** Excelente comprensión de IAM
- **16-17 puntos (80-89%):** Buena comprensión, revisar conceptos débiles
- **14-15 puntos (70-79%):** Comprensión básica, necesitas más estudio
- **Menos de 14 puntos:** Necesitas revisar los fundamentos de IAM

---

## 📚 Recursos para Repaso

### Conceptos que Revisar

Si tu puntuación fue menor a 16, revisa estos conceptos:

1. **Entidades IAM:** Usuarios, grupos, roles
2. **Políticas:** Administradas vs personalizadas
3. **Seguridad:** MFA, principio de menor privilegio
4. **Jerarquía de permisos:** Explicit Deny > Explicit Allow > Implicit Deny
5. **Mejores prácticas:** Rotación de claves, uso de roles

### Recursos Adicionales

- [IAM User Guide](https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html)
- [IAM Best Practices](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html)
- [IAM Policy Examples](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_examples.html)

---

## 🎯 Próximos Pasos

1. **Revisar conceptos débiles** según tu puntuación
2. **Completar el lab de IAM** para práctica práctica
3. **Prepararse para la semana 02** (Computación en la Nube)
4. **Tomar el siguiente quiz** cuando estés listo

---

**¡Buen trabajo! Sigue estudiando y practicando. 🚀** 