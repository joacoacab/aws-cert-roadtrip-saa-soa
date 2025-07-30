# 🧪 Lab 02: RDS Snapshot Restore

**Semana:** 05 - Bases de Datos Avanzadas  
**Duración:** 2.5 horas  
**Nivel:** Intermedio  

---

## 🎯 Objetivos

- Crear instancia RDS MySQL
- Generar datos de prueba
- Crear snapshot manual
- Restaurar snapshot a nueva instancia
- Verificar integridad de datos
- Limpiar recursos

---

## 📋 Prerequisitos

- Cuenta AWS con permisos para RDS
- Conocimiento básico de MySQL
- Herramienta de conexión a MySQL (MySQL Workbench, CLI, etc.)

---

## 🛠️ Pasos del Laboratorio

### Paso 1: Crear Subnet Group para RDS

1. **Navegar a RDS**
   - Ir a https://console.aws.amazon.com/rds
   - Hacer clic en "Subnet groups" en el panel izquierdo

2. **Crear Subnet Group**
   - Hacer clic en "Create DB subnet group"
   - Nombre: `rds-snapshot-lab-subnet-group`
   - Descripción: "Subnet group for RDS snapshot lab"
   - VPC: Seleccionar VPC por defecto
   - Availability Zones: Seleccionar 2 AZs
   - Subnets: Seleccionar subnets privadas en las AZs seleccionadas
   - Hacer clic en "Create"

### Paso 2: Crear Security Group para RDS

1. **Navegar a EC2 Security Groups**
   - Ir a https://console.aws.amazon.com/ec2
   - Hacer clic en "Security Groups" en el panel izquierdo

2. **Crear Security Group**
   - Hacer clic en "Create security group"
   - Nombre: `rds-snapshot-lab-sg`
   - Descripción: "Security group for RDS snapshot lab"
   - VPC: Seleccionar VPC por defecto

3. **Configurar Reglas**
   - **Inbound rules:**
     - Type: MySQL/Aurora (3306)
     - Source: My IP
   - **Outbound rules:**
     - Type: All traffic
     - Destination: 0.0.0.0/0
   - Hacer clic en "Create security group"

### Paso 3: Crear Instancia RDS MySQL

1. **Navegar a RDS**
   - Ir a https://console.aws.amazon.com/rds
   - Hacer clic en "Databases" en el panel izquierdo

2. **Crear Base de Datos**
   - Hacer clic en "Create database"
   - **Engine type:** MySQL
   - **Version:** MySQL 8.0.28
   - **Template:** Free tier (si disponible) o Dev/Test

3. **Configurar Instancia**
   - **DB instance identifier:** `snapshot-lab-db`
   - **Master username:** `admin`
   - **Master password:** `Password123!` (cambiar por contraseña segura)
   - **Instance configuration:** db.t3.micro
   - **Storage:** General Purpose SSD (gp2), 20 GB
   - **Connectivity:**
     - VPC: VPC por defecto
     - Subnet group: `rds-snapshot-lab-subnet-group`
     - Public access: Yes
     - Security group: `rds-snapshot-lab-sg`
   - **Database authentication:** Password authentication
   - **Additional configuration:**
     - Initial database name: `testdb`
   - Hacer clic en "Create database"

4. **Esperar Creación**
   - Esperar hasta que el estado sea "Available" (puede tomar 5-10 minutos)

### Paso 4: Conectar y Crear Datos de Prueba

1. **Obtener Endpoint**
   - En la consola RDS, hacer clic en la instancia creada
   - Copiar el endpoint de la instancia

2. **Conectar a MySQL**
   ```bash
   mysql -h [ENDPOINT] -u admin -p
   ```

3. **Crear Datos de Prueba**
   ```sql
   USE testdb;
   
   -- Crear tabla de usuarios
   CREATE TABLE users (
       id INT AUTO_INCREMENT PRIMARY KEY,
       name VARCHAR(100) NOT NULL,
       email VARCHAR(100) UNIQUE NOT NULL,
       created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
   );
   
   -- Insertar datos de prueba
   INSERT INTO users (name, email) VALUES
   ('Juan Pérez', 'juan.perez@example.com'),
   ('María García', 'maria.garcia@example.com'),
   ('Carlos López', 'carlos.lopez@example.com'),
   ('Ana Martínez', 'ana.martinez@example.com'),
   ('Luis Rodríguez', 'luis.rodriguez@example.com');
   
   -- Crear tabla de productos
   CREATE TABLE products (
       id INT AUTO_INCREMENT PRIMARY KEY,
       name VARCHAR(100) NOT NULL,
       price DECIMAL(10,2) NOT NULL,
       category VARCHAR(50),
       stock INT DEFAULT 0
   );
   
   -- Insertar productos de prueba
   INSERT INTO products (name, price, category, stock) VALUES
   ('Laptop Dell', 999.99, 'Electronics', 10),
   ('Mouse Wireless', 25.50, 'Electronics', 50),
   ('Teclado Mecánico', 89.99, 'Electronics', 15),
   ('Monitor 24"', 199.99, 'Electronics', 8),
   ('Auriculares Bluetooth', 45.00, 'Electronics', 30);
   
   -- Verificar datos
   SELECT * FROM users;
   SELECT * FROM products;
   ```

### Paso 5: Crear Snapshot Manual

1. **Navegar a Snapshots**
   - En la consola RDS, hacer clic en "Snapshots" en el panel izquierdo

2. **Crear Snapshot**
   - Hacer clic en "Take snapshot"
   - **Snapshot type:** Manual snapshot
   - **DB instance:** Seleccionar `snapshot-lab-db`
   - **Snapshot name:** `snapshot-lab-manual-$(date +%Y%m%d)`
   - Hacer clic en "Take snapshot"

3. **Esperar Creación**
   - Esperar hasta que el estado sea "Available" (puede tomar varios minutos)

### Paso 6: Agregar Más Datos y Crear Segundo Snapshot

1. **Conectar y Agregar Datos**
   ```sql
   USE testdb;
   
   -- Agregar más usuarios
   INSERT INTO users (name, email) VALUES
   ('Elena Sánchez', 'elena.sanchez@example.com'),
   ('Roberto Torres', 'roberto.torres@example.com');
   
   -- Agregar más productos
   INSERT INTO products (name, price, category, stock) VALUES
   ('Webcam HD', 75.00, 'Electronics', 12),
   ('Micrófono USB', 35.50, 'Electronics', 25);
   
   -- Verificar total de registros
   SELECT COUNT(*) as total_users FROM users;
   SELECT COUNT(*) as total_products FROM products;
   ```

2. **Crear Segundo Snapshot**
   - Repetir proceso del Paso 5
   - Nombre: `snapshot-lab-manual-$(date +%Y%m%d)-v2`

### Paso 7: Restaurar Snapshot a Nueva Instancia

1. **Seleccionar Snapshot**
   - En la consola RDS > Snapshots
   - Seleccionar el primer snapshot creado
   - Hacer clic en "Actions" > "Restore snapshot"

2. **Configurar Nueva Instancia**
   - **DB instance identifier:** `snapshot-restored-db`
   - **Instance configuration:** db.t3.micro
   - **Storage:** General Purpose SSD (gp2), 20 GB
   - **Connectivity:**
     - VPC: VPC por defecto
     - Subnet group: `rds-snapshot-lab-subnet-group`
     - Public access: Yes
     - Security group: `rds-snapshot-lab-sg`
   - **Database authentication:** Password authentication
   - **Master password:** `Password123!` (cambiar por contraseña segura)
   - Hacer clic en "Restore DB instance"

3. **Esperar Restauración**
   - Esperar hasta que el estado sea "Available"

### Paso 8: Verificar Datos Restaurados

1. **Conectar a Instancia Restaurada**
   ```bash
   mysql -h [ENDPOINT-RESTAURADA] -u admin -p
   ```

2. **Verificar Datos**
   ```sql
   USE testdb;
   
   -- Verificar usuarios (deberían ser 5)
   SELECT * FROM users;
   
   -- Verificar productos (deberían ser 5)
   SELECT * FROM products;
   
   -- Verificar que NO están los datos agregados después del primer snapshot
   SELECT COUNT(*) as total_users FROM users;
   SELECT COUNT(*) as total_products FROM products;
   ```

### Paso 9: Restaurar Segundo Snapshot

1. **Restaurar Segundo Snapshot**
   - Repetir proceso del Paso 7
   - Nombre de instancia: `snapshot-restored-db-v2`

2. **Verificar Datos del Segundo Snapshot**
   ```sql
   USE testdb;
   
   -- Verificar usuarios (deberían ser 7)
   SELECT * FROM users;
   
   -- Verificar productos (deberían ser 7)
   SELECT * FROM products;
   
   -- Verificar total de registros
   SELECT COUNT(*) as total_users FROM users;
   SELECT COUNT(*) as total_products FROM products;
   ```

---

## ✅ Verificación

### Checklist de Verificación

- [ ] Subnet group creado correctamente
- [ ] Security group configurado con reglas apropiadas
- [ ] Instancia RDS MySQL creada y disponible
- [ ] Datos de prueba insertados correctamente
- [ ] Snapshot manual creado exitosamente
- [ ] Datos adicionales agregados después del primer snapshot
- [ ] Segundo snapshot creado
- [ ] Primera instancia restaurada con datos originales
- [ ] Segunda instancia restaurada con todos los datos
- [ ] Verificación de integridad de datos completada

### Comandos de Verificación

```bash
# Verificar instancias RDS
aws rds describe-db-instances --query 'DBInstances[*].[DBInstanceIdentifier,DBInstanceStatus,Engine]'

# Verificar snapshots
aws rds describe-db-snapshots --query 'DBSnapshots[*].[DBSnapshotIdentifier,Status,SnapshotType]'

# Verificar subnet groups
aws rds describe-db-subnet-groups --query 'DBSubnetGroups[*].[DBSubnetGroupName,VpcId]'
```

---

## 🧹 Limpieza

### Recursos a Eliminar

1. **Eliminar Instancias RDS**
   - Ir a RDS > Databases
   - Seleccionar todas las instancias creadas
   - Hacer clic en "Delete"
   - Marcar "Create final snapshot" (opcional)
   - Confirmar eliminación

2. **Eliminar Snapshots**
   - Ir a RDS > Snapshots
   - Seleccionar snapshots creados
   - Hacer clic en "Delete"

3. **Eliminar Security Group**
   - Ir a EC2 > Security Groups
   - Seleccionar `rds-snapshot-lab-sg`
   - Hacer clic en "Delete security group"

4. **Eliminar Subnet Group**
   - Ir a RDS > Subnet groups
   - Seleccionar `rds-snapshot-lab-subnet-group`
   - Hacer clic en "Delete"

---

## 📝 Notas Importantes

### 🔒 Seguridad
- **Contraseñas fuertes:** Usar contraseñas complejas en producción
- **Security groups:** Configurar acceso mínimo necesario
- **Encryption:** Habilitar encriptación en producción
- **Backup strategy:** Planificar estrategia de backup regular

### 💡 Mejores Prácticas
- **Naming convention:** Usar nombres descriptivos para recursos
- **Tagging:** Etiquetar recursos para gestión de costos
- **Documentation:** Documentar configuraciones importantes
- **Testing:** Probar restauración regularmente

### ⚠️ Puntos de Atención
- **Costos:** Las instancias RDS tienen costos por hora
- **Storage:** Los snapshots tienen costos de almacenamiento
- **Performance:** Restaurar snapshots puede tomar tiempo
- **Compatibility:** Verificar compatibilidad de versiones

### 🎯 Para el Examen
- **Snapshot vs Automated backup:** Diferencias y casos de uso
- **Point-in-time recovery:** Restauración a momento específico
- **Cross-region snapshots:** Replicación entre regiones
- **Snapshot lifecycle:** Gestión de snapshots antiguos

---

## 🔗 Recursos Adicionales

- [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html)
- [RDS Snapshots](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CreateSnapshot.html)
- [RDS Restore](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_RestoreFromSnapshot.html)
- [RDS Best Practices](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_BestPractices.html) 