# 📝 Quiz 02: VPC y Networking

**Semana:** 04 - Redes y Seguridad  
**Duración:** 25 minutos  
**Preguntas:** 15  
**Puntuación mínima:** 70%  

---

## 📋 Instrucciones

- Lee cada pregunta cuidadosamente
- Selecciona la mejor respuesta
- Revisa tus respuestas antes de enviar
- Consulta la documentación si tienes dudas

---

## ❓ Preguntas

### 1. ¿Qué es una VPC en AWS?

**A)** Virtual Private Cloud - Una red privada virtual aislada en AWS  
**B)** Virtual Public Cloud - Una red pública virtual en AWS  
**C)** Virtual Personal Computer - Una computadora virtual personal  
**D)** Virtual Private Connection - Una conexión privada virtual  

**Respuesta correcta:** A  
**Explicación:** VPC (Virtual Private Cloud) es un servicio que permite crear una red privada virtual aislada en AWS donde puedes lanzar recursos de AWS.

---

### 2. ¿Cuál es el rango de direcciones IP privadas válido para una VPC?

**A)** 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16  
**B)** 10.0.0.0/8, 172.16.0.0/16, 192.168.0.0/24  
**C)** 10.0.0.0/16, 172.16.0.0/12, 192.168.0.0/16  
**D)** 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/24  

**Respuesta correcta:** A  
**Explicación:** Los rangos de direcciones IP privadas válidos son: 10.0.0.0/8, 172.16.0.0/12, y 192.168.0.0/16.

---

### 3. ¿Qué es un CIDR block en el contexto de VPC?

**A)** Un bloque de direcciones IP que define el rango de la VPC  
**B)** Un bloque de seguridad que protege la VPC  
**C)** Un bloque de configuración para la VPC  
**D)** Un bloque de datos que se almacena en la VPC  

**Respuesta correcta:** A  
**Explicación:** CIDR (Classless Inter-Domain Routing) block define el rango de direcciones IP que se pueden usar en la VPC.

---

### 4. ¿Cuál es la diferencia entre una subnet pública y una privada?

**A)** Las subnets públicas tienen acceso directo a internet, las privadas no  
**B)** Las subnets públicas son más seguras que las privadas  
**C)** Las subnets privadas son más rápidas que las públicas  
**D)** No hay diferencia, son lo mismo  

**Respuesta correcta:** A  
**Explicación:** Las subnets públicas tienen una ruta a un Internet Gateway, mientras que las subnets privadas no tienen acceso directo a internet.

---

### 5. ¿Qué es un Internet Gateway (IGW)?

**A)** Un gateway que conecta la VPC a internet  
**B)** Un gateway que conecta la VPC a otras VPCs  
**C)** Un gateway que conecta la VPC a servicios AWS  
**D)** Un gateway que protege la VPC de ataques  

**Respuesta correcta:** A  
**Explicación:** Un Internet Gateway es un componente que permite que los recursos en la VPC se comuniquen con internet.

---

### 6. ¿Qué es un NAT Gateway?

**A)** Un gateway que permite que instancias privadas accedan a internet  
**B)** Un gateway que conecta múltiples VPCs  
**C)** Un gateway que protege contra ataques DDoS  
**D)** Un gateway que optimiza el tráfico de red  

**Respuesta correcta:** A  
**Explicación:** Un NAT Gateway permite que las instancias en subnets privadas accedan a internet para actualizaciones o descargas, pero no permite conexiones entrantes desde internet.

---

### 7. ¿Cuál es la diferencia entre Security Groups y Network ACLs?

**A)** Security Groups son stateful, Network ACLs son stateless  
**B)** Security Groups son stateless, Network ACLs son stateful  
**C)** No hay diferencia, funcionan igual  
**D)** Security Groups son más seguros que Network ACLs  

**Respuesta correcta:** A  
**Explicación:** Security Groups son firewalls stateful (mantienen estado de conexión), mientras que Network ACLs son stateless (no mantienen estado).

---

### 8. ¿En qué nivel operan los Security Groups?

**A)** Nivel de instancia  
**B)** Nivel de subnet  
**C)** Nivel de VPC  
**D)** Nivel de región  

**Respuesta correcta:** A  
**Explicación:** Los Security Groups operan a nivel de instancia, mientras que los Network ACLs operan a nivel de subnet.

---

### 9. ¿Qué es VPC Peering?

**A)** Una conexión entre dos VPCs para permitir comunicación privada  
**B)** Una conexión entre una VPC y internet  
**C)** Una conexión entre una VPC y servicios AWS  
**D)** Una conexión entre una VPC y un centro de datos on-premises  

**Respuesta correcta:** A  
**Explicación:** VPC Peering permite conectar dos VPCs para que puedan comunicarse entre sí usando direcciones IP privadas.

---

### 10. ¿Qué son los VPC Endpoints?

**A)** Puntos de conexión privados para acceder a servicios AWS  
**B)** Puntos de conexión públicos para acceder a servicios AWS  
**C)** Puntos de conexión para acceder a internet  
**D)** Puntos de conexión para acceder a otras VPCs  

**Respuesta correcta:** A  
**Explicación:** Los VPC Endpoints permiten conectar la VPC a servicios AWS de forma privada sin usar internet.

---

### 11. ¿Cuál es el propósito de una Route Table?

**A)** Definir rutas de red para subnets  
**B)** Definir reglas de firewall para subnets  
**C)** Definir configuraciones de DNS para subnets  
**D)** Definir configuraciones de VPN para subnets  

**Respuesta correcta:** A  
**Explicación:** Una Route Table define las rutas de red que determinan hacia dónde se dirige el tráfico desde las subnets.

---

### 12. ¿Qué es un Transit Gateway?

**A)** Un hub central para conectar múltiples VPCs y redes on-premises  
**B)** Un gateway para conectar una VPC a internet  
**C)** Un gateway para conectar una VPC a servicios AWS  
**D)** Un gateway para proteger contra ataques DDoS  

**Respuesta correcta:** A  
**Explicación:** Un Transit Gateway actúa como un hub central para conectar múltiples VPCs, VPNs y conexiones Direct Connect.

---

### 13. ¿Cuál es la diferencia entre una VPN Connection y Direct Connect?

**A)** VPN usa internet público, Direct Connect usa conexión dedicada  
**B)** VPN es más rápida que Direct Connect  
**C)** Direct Connect usa internet público, VPN usa conexión dedicada  
**D)** No hay diferencia, son lo mismo  

**Respuesta correcta:** A  
**Explicación:** VPN Connection usa internet público para crear una conexión segura, mientras que Direct Connect proporciona una conexión dedicada de alta velocidad.

---

### 14. ¿Qué es un Elastic IP?

**A)** Una dirección IP pública estática que se puede asignar a instancias  
**B)** Una dirección IP privada que se puede asignar a instancias  
**C)** Una dirección IP que cambia automáticamente  
**D)** Una dirección IP que se usa solo para servicios AWS  

**Respuesta correcta:** A  
**Explicación:** Un Elastic IP es una dirección IP pública estática que se puede asignar a instancias EC2 y no cambia cuando la instancia se reinicia.

---

### 15. ¿Cuál es el propósito de un Load Balancer en una VPC?

**A)** Distribuir tráfico entre múltiples instancias  
**B)** Proteger contra ataques DDoS  
**C)** Optimizar el rendimiento de la red  
**D)** Conectar la VPC a internet  

**Respuesta correcta:** A  
**Explicación:** Un Load Balancer distribuye el tráfico entrante entre múltiples instancias para mejorar la disponibilidad y escalabilidad.

---

## 📊 Resultados

### Cálculo de Puntuación

- **Puntuación máxima:** 15 puntos
- **Puntuación mínima para aprobar:** 11 puntos (70%)
- **Puntuación tuya:** _____ puntos

### Interpretación de Resultados

- **13-15 puntos (87-100%):** Excelente comprensión de VPC y networking
- **11-12 puntos (73-87%):** Buena comprensión, revisar conceptos débiles
- **9-10 puntos (60-73%):** Comprensión básica, necesitas más estudio
- **Menos de 9 puntos:** Necesitas revisar los fundamentos de VPC

---

## 📚 Recursos para Repaso

### Conceptos que Revisar

Si tu puntuación fue menor a 11, revisa estos conceptos:

1. **VPC Fundamentals:** CIDR blocks, subnets, route tables
2. **Connectivity:** Internet Gateway, NAT Gateway, VPC Peering
3. **Security:** Security Groups vs Network ACLs
4. **Advanced Networking:** VPC Endpoints, Transit Gateway
5. **Best Practices:** Diseño de redes seguras y escalables

### Recursos Adicionales

- [VPC User Guide](https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html)
- [VPC Best Practices](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-security-best-practices.html)
- [VPC Examples](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Scenarios.html)

---

## 🎯 Próximos Pasos

1. **Revisar conceptos débiles** según tu puntuación
2. **Completar el lab de VPC** para práctica práctica
3. **Prepararse para la semana 05** (Bases de Datos Avanzadas)
4. **Tomar el siguiente quiz** cuando estés listo

---

**¡Buen trabajo! Sigue estudiando y practicando. 🚀** 