# 🧪 Lab 01: Configuración Básica de IAM

**Semana:** 01 - Fundamentos de AWS  
**Duración:** 2 horas  
**Nivel:** Principiante  

---

## 🎯 Objetivos

- Crear usuarios IAM con acceso a consola
- Configurar Multi-Factor Authentication (MFA)
- Crear grupos y políticas personalizadas
- Implementar el principio de menor privilegio
- Configurar roles para servicios AWS

---

## 📋 Prerequisitos

- Cuenta AWS con acceso root
- Navegador web
- Teléfono móvil para MFA

---

## 🛠️ Pasos del Laboratorio

### Paso 1: Crear Usuario IAM

1. **Acceder a la consola AWS**
   - Ir a https://console.aws.amazon.com
   - Iniciar sesión con credenciales root

2. **Navegar a IAM**
   - Buscar "IAM" en la barra de servicios
   - Hacer clic en "IAM"

3. **Crear nuevo usuario**
   - Hacer clic en "Users" en el panel izquierdo
   - Hacer clic en "Create user"
   - Nombre: `developer-01`
   - Marcar "Provide user access to the AWS Management Console"
   - Seleccionar "I want to create an IAM user"
   - Hacer clic en "Next"

4. **Configurar permisos**
   - Seleccionar "Attach policies directly"
   - Buscar y seleccionar "AmazonS3ReadOnlyAccess"
   - Hacer clic en "Next"

5. **Revisar y crear**
   - Revisar la configuración
   - Hacer clic en "Create user"

### Paso 2: Configurar MFA

1. **Acceder al usuario creado**
   - Hacer clic en el nombre del usuario `developer-01`
   - Ir a la pestaña "Security credentials"

2. **Configurar MFA**
   - En la sección "Multi-factor authentication (MFA)"
   - Hacer clic en "Assign MFA device"
   - Seleccionar "Virtual MFA device"
   - Hacer clic en "Continue"

3. **Configurar aplicación MFA**
   - Escanear el código QR con Google Authenticator o similar
   - Ingresar los códigos de 6 dígitos
   - Hacer clic en "Assign MFA device"

### Paso 3: Crear Grupo y Política

1. **Crear grupo**
   - Ir a "Groups" en el panel izquierdo
   - Hacer clic en "Create group"
   - Nombre: `developers`
   - Hacer clic en "Next"

2. **Crear política personalizada**
   - Ir a "Policies" en el panel izquierdo
   - Hacer clic en "Create policy"
   - Seleccionar "JSON"
   - Copiar y pegar la siguiente política:

```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:GetObject",
                "s3:ListBucket"
            ],
            "Resource": [
                "arn:aws:s3:::my-company-bucket",
                "arn:aws:s3:::my-company-bucket/*"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
                "ec2:DescribeInstances",
                "ec2:DescribeSecurityGroups"
            ],
            "Resource": "*"
        }
    ]
}
```

3. **Asociar política al grupo**
   - Nombre de la política: `DeveloperAccessPolicy`
   - Descripción: "Política para desarrolladores con acceso limitado"
   - Hacer clic en "Create policy"
   - Ir al grupo `developers`
   - Hacer clic en "Attach policies"
   - Buscar y seleccionar `DeveloperAccessPolicy`
   - Hacer clic en "Add permissions"

### Paso 4: Crear Rol para EC2

1. **Crear rol**
   - Ir a "Roles" en el panel izquierdo
   - Hacer clic en "Create role"
   - Seleccionar "AWS service"
   - Seleccionar "EC2"
   - Hacer clic en "Next"

2. **Configurar permisos**
   - Buscar y seleccionar "AmazonS3ReadOnlyAccess"
   - Hacer clic en "Next"

3. **Configurar rol**
   - Nombre: `EC2S3ReadOnlyRole`
   - Descripción: "Rol para instancias EC2 con acceso de solo lectura a S3"
   - Hacer clic en "Create role"

### Paso 5: Probar Configuración

1. **Probar acceso de usuario**
   - Cerrar sesión de la cuenta root
   - Iniciar sesión con el usuario `developer-01`
   - Verificar que solo puede acceder a S3 y EC2 (solo lectura)

2. **Probar MFA**
   - Intentar acceder sin MFA (debería fallar)
   - Usar MFA para acceder correctamente

---

## ✅ Verificación

### Checklist de Verificación

- [ ] Usuario IAM creado con acceso a consola
- [ ] MFA configurado y funcionando
- [ ] Grupo creado con política personalizada
- [ ] Rol creado para servicios AWS
- [ ] Usuario puede acceder solo a recursos permitidos
- [ ] MFA es obligatorio para el acceso

### Comandos de Verificación

```bash
# Verificar usuario creado
aws iam get-user --user-name developer-01

# Verificar políticas del usuario
aws iam list-attached-user-policies --user-name developer-01

# Verificar grupos del usuario
aws iam list-groups-for-user --user-name developer-01

# Verificar rol creado
aws iam get-role --role-name EC2S3ReadOnlyRole
```

---

## 🧹 Limpieza

### Recursos a Eliminar

1. **Eliminar usuario**
   - Ir a IAM > Users
   - Seleccionar `developer-01`
   - Hacer clic en "Delete user"

2. **Eliminar grupo**
   - Ir a IAM > Groups
   - Seleccionar `developers`
   - Hacer clic en "Delete group"

3. **Eliminar política**
   - Ir a IAM > Policies
   - Buscar `DeveloperAccessPolicy`
   - Hacer clic en "Delete policy"

4. **Eliminar rol**
   - Ir a IAM > Roles
   - Seleccionar `EC2S3ReadOnlyRole`
   - Hacer clic en "Delete role"

---

## 📝 Notas Importantes

### 🔒 Seguridad
- **Nunca compartir credenciales root**
- **Siempre usar MFA para usuarios con acceso a consola**
- **Aplicar principio de menor privilegio**
- **Revisar regularmente permisos de usuarios**

### 💡 Mejores Prácticas
- **Usar grupos para gestionar permisos**
- **Crear políticas específicas en lugar de usar políticas administradas**
- **Documentar el propósito de cada rol y política**
- **Revisar regularmente el acceso de usuarios**

### ⚠️ Puntos de Atención
- **Las políticas IAM son globales**
- **Los roles pueden ser asumidos por servicios AWS**
- **MFA es obligatorio para usuarios con acceso a consola**
- **Las políticas de deny tienen prioridad sobre allow**

---

## 🔗 Recursos Adicionales

- [IAM Best Practices](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html)
- [IAM Policy Examples](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_examples.html)
- [AWS Policy Generator](https://awspolicygen.s3.amazonaws.com/policygen.html)
- [AWS Policy Simulator](https://policysim.aws.amazon.com/) 