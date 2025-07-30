# 🚀 AWS Cert Roadtrip - Makefile
# Comandos para facilitar el estudio y navegación del repositorio

.PHONY: help quiz quiz-iam quiz-vpc quiz-monitoring progress

# Comando principal de ayuda
help:
	@echo "🚀 AWS Cert Roadtrip - Comandos Disponibles"
	@echo ""
	@echo "📝 Quizzes:"
	@echo "  make quiz-iam          - Mostrar quiz de IAM Fundamentals"
	@echo "  make quiz-vpc          - Mostrar quiz de VPC y Networking"
	@echo "  make quiz-monitoring   - Mostrar quiz de Monitoring Basics"
	@echo ""
	@echo "📊 Progreso:"
	@echo "  make progress          - Mostrar archivo de progreso"
	@echo ""
	@echo "📚 Recursos:"
	@echo "  make cheat-sheets      - Mostrar cheat sheets"
	@echo "  make resources         - Mostrar recursos útiles"
	@echo ""
	@echo "🗂️  Navegación:"
	@echo "  make week-01           - Mostrar contenido de semana 01"
	@echo "  make week-02           - Mostrar contenido de semana 02"
	@echo "  make week-03           - Mostrar contenido de semana 03"
	@echo "  make week-04           - Mostrar contenido de semana 04"
	@echo "  make week-05           - Mostrar contenido de semana 05"
	@echo "  make week-06           - Mostrar contenido de semana 06"
	@echo "  make week-07           - Mostrar contenido de semana 07"
	@echo "  make week-08           - Mostrar contenido de semana 08"
	@echo "  make week-09           - Mostrar contenido de semana 09"
	@echo "  make week-10           - Mostrar contenido de semana 10"
	@echo "  make week-11           - Mostrar contenido de semana 11"
	@echo "  make week-12           - Mostrar contenido de semana 12"

# Comando general para quizzes
quiz:
	@echo "📝 Quizzes disponibles:"
	@echo "  make quiz-iam          - IAM Fundamentals"
	@echo "  make quiz-iam-interactive - IAM Fundamentals (Interactivo)"
	@echo "  make quiz-vpc          - VPC y Networking"
	@echo "  make quiz-vpc-interactive - VPC y Networking (Interactivo)"
	@echo "  make quiz-monitoring   - Monitoring Basics"

# Quiz de IAM Fundamentals
quiz-iam:
	@echo "📝 Quiz 01: IAM Fundamentals"
	@echo "=================================="
	@cat saa-c03/quizzes/quiz-01-iam-fundamentals.md

# Quiz de VPC y Networking
quiz-vpc:
	@echo "📝 Quiz 02: VPC y Networking"
	@echo "=================================="
	@cat saa-c03/quizzes/quiz-02-vpc-and-networking.md

# Quiz de IAM Fundamentals (Interactivo)
quiz-iam-interactive:
	@echo "📝 Quiz 01: IAM Fundamentals (Versión Interactiva)"
	@echo "=================================================="
	@cat saa-c03/quizzes/quiz-01-iam-fundamentals-interactive.md

# Quiz de VPC y Networking (Interactivo)
quiz-vpc-interactive:
	@echo "📝 Quiz 02: VPC y Networking (Versión Interactiva)"
	@echo "=================================================="
	@cat saa-c03/quizzes/quiz-02-vpc-and-networking-interactive.md

# Quiz de Monitoring Basics (SOA-C02)
quiz-monitoring:
	@echo "📝 Quiz 01: Monitoring Basics"
	@echo "=================================="
	@cat soa-c02/quizzes/quiz-01-monitoring-basics.md

# Mostrar archivo de progreso
progress:
	@echo "📊 Progreso de Estudio - SAA-C03"
	@echo "=================================="
	@cat resources/study-progress.md

# Mostrar cheat sheets
cheat-sheets:
	@echo "📚 AWS Cheat Sheets"
	@echo "==================="
	@cat resources/aws-cheat-sheets.md

# Mostrar recursos útiles
resources:
	@echo "🔗 Recursos Útiles"
	@echo "=================="
	@echo "📖 Documentación Oficial:"
	@echo "  - AWS Documentation: https://docs.aws.amazon.com/"
	@echo "  - AWS Well-Architected: https://aws.amazon.com/architecture/well-architected/"
	@echo ""
	@echo "🎥 Cursos Online:"
	@echo "  - AWS Training: https://aws.amazon.com/training/"
	@echo "  - A Cloud Guru: https://acloudguru.com/"
	@echo "  - Udemy AWS: https://www.udemy.com/topic/aws/"
	@echo ""
	@echo "🧪 Laboratorios:"
	@echo "  - AWS Free Tier: https://aws.amazon.com/free/"
	@echo "  - AWS CloudFormation: https://aws.amazon.com/cloudformation/"
	@echo ""
	@echo "📝 Herramientas:"
	@echo "  - AWS Exam Readiness: https://aws.amazon.com/certification/exam-readiness/"
	@echo "  - AWS Practice Tests: https://aws.amazon.com/certification/practice-exams/"

# Comandos para mostrar contenido de semanas
week-01:
	@echo "🗓 Semana 01: Fundamentos de AWS"
	@echo "=================================="
	@cat saa-c03/notes/week-01.md

week-02:
	@echo "🗓 Semana 02: Computación en la Nube"
	@echo "====================================="
	@cat saa-c03/notes/week-02.md

week-03:
	@echo "🗓 Semana 03: Almacenamiento y Bases de Datos"
	@echo "============================================="
	@cat saa-c03/notes/week-03.md

week-04:
	@echo "🗓 Semana 04: Redes y Seguridad"
	@echo "==============================="
	@cat saa-c03/notes/week-04.md

week-05:
	@echo "🗓 Semana 05: Bases de Datos Avanzadas"
	@echo "======================================"
	@cat saa-c03/notes/week-05.md

week-06:
	@echo "🗓 Semana 06: Alta Disponibilidad y Tolerancia a Fallos"
	@echo "====================================================="
	@cat saa-c03/notes/week-06.md

week-07:
	@echo "🗓 Semana 07: Seguridad Avanzada"
	@echo "==============================="
	@cat saa-c03/notes/week-07.md

week-08:
	@echo "🗓 Semana 08: Arquitecturas Serverless"
	@echo "====================================="
	@cat saa-c03/notes/week-08.md

week-09:
	@echo "🗓 Semana 09: Monitoreo y Observabilidad"
	@echo "======================================="
	@cat saa-c03/notes/week-09.md

week-10:
	@echo "🗓 Semana 10: Optimización de Costos"
	@echo "==================================="
	@cat saa-c03/notes/week-10.md

week-11:
	@echo "🗓 Semana 11: Simulacro de Examen"
	@echo "================================="
	@cat saa-c03/notes/week-11.md

week-12:
	@echo "🗓 Semana 12: Revisión Final"
	@echo "============================"
	@cat saa-c03/notes/week-12.md

# Comandos para labs
lab-iam:
	@echo "🧪 Lab 01: IAM Setup"
	@echo "===================="
	@cat saa-c03/labs/lab-01-iam-setup.md

lab-rds:
	@echo "🧪 Lab 02: RDS Snapshot Restore"
	@echo "==============================="
	@cat saa-c03/labs/lab-02-rds-snapshot-restore.md

lab-cloudwatch:
	@echo "🧪 Lab 01: CloudWatch Alarms"
	@echo "============================"
	@cat soa-c02/labs/lab-01-cloudwatch-alarms.md

# Comando para mostrar estructura del repositorio
structure:
	@echo "📂 Estructura del Repositorio"
	@echo "============================"
	@echo "aws-cert-roadtrip-saa-soa/"
	@echo "├── 📂 saa-c03/"
	@echo "│   ├── 📂 notes/                  # Notas semanales"
	@echo "│   ├── 📂 labs/                   # Laboratorios prácticos"
	@echo "│   └── 📂 quizzes/                # Evaluaciones y quizzes"
	@echo "├── 📂 soa-c02/"
	@echo "│   ├── 📂 notes/                  # Notas semanales"
	@echo "│   ├── 📂 labs/                   # Laboratorios prácticos"
	@echo "│   └── 📂 quizzes/                # Evaluaciones y quizzes"
	@echo "├── 📂 resources/                  # Recursos compartidos"
	@echo "│   ├── 📄 study-progress.md       # Seguimiento de progreso"
	@echo "│   ├── 📄 aws-cheat-sheets.md    # Cheat sheets"
	@echo "│   └── 📄 README.md              # Documentación principal"
	@echo "└── 📄 Makefile                   # Comandos de navegación"

# Comando para mostrar información del proyecto
info:
	@echo "🚀 AWS Cert Roadtrip - SAA-C03 & SOA-C02"
	@echo "=========================================="
	@echo ""
	@echo "📋 Descripción:"
	@echo "Plan de estudio y recursos para rendir las certificaciones AWS:"
	@echo "- AWS Certified Solutions Architect – Associate (SAA-C03)"
	@echo "- AWS Certified SysOps Administrator – Associate (SOA-C02)"
	@echo ""
	@echo "📅 Cronograma:"
	@echo "- SAA-C03: 12 semanas"
	@echo "- SOA-C02: 20 semanas"
	@echo ""
	@echo "📊 Estado:"
	@echo "- SAA-C03: En progreso"
	@echo "- SOA-C02: Pendiente"
	@echo ""
	@echo "🔗 Repositorio: https://github.com/[usuario]/aws-cert-roadtrip-saa-soa" 