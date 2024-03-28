
## Playbook: Phishing

**Investigar, remediar (contener, erradicar), y comunicar en paralelo!**

Asigna pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es meramente secuencial. Utilice su mejor criterio.

### Investigar

## **Ámbito del ataque** <br>
Objetivo: Determinar la extensión y el impacto del ataque de phishing para contenerlo y remediarlo de manera eficiente.
* Notificación Inicial: Registrar cómo se detectó el incidente, quién lo reportó, y la evidencia inicial proporcionada.
* Usuarios Afectados: Utilizar herramientas de análisis de logs y seguridad de correo electrónico para identificar a todos los usuarios que recibieron el mensaje de phishing.
* Acciones de los Usuarios: Comunicarse directamente con los posibles usuarios afectados para entender si interactuaron con el mensaje (descarga de archivos, clic en enlaces, suministro de información).
* Búsqueda de Actividad Relacionada: Revisar redes sociales, correos electrónicos sospechosos, y notificaciones de actividades inusuales que puedan estar relacionadas con el ataque.
* Clasificación del Ataque: Basándose en la información recopilada, determinar el tipo de phishing (general, spear, whaling, smishing/vishing) y la gravedad.

## **Analizar el mensaje** utilizando un dispositivo seguro. <br>
Objetivo: Inspeccionar el correo electrónico de phishing de manera segura para recopilar datos sin comprometer la seguridad de la red o los datos sensibles.

Herramientas:
* Entornos Aislados: Máquinas virtuales dedicadas o entornos sandbox.
* Herramientas Forenses de Correo Electrónico: MailXaminer, The Sleuth Kit para analizar cabeceras y contenido.
* Decodificadores de URL: Para revelar redirecciones ocultas sin acceder a ellas.

Procedimiento:
* Preparación del Entorno Seguro: Iniciar una máquina virtual o entorno sandbox que no tenga acceso a la red corporativa o datos sensibles.

Inspección del Correo Electrónico:
* Cabeceras: Analizar las cabeceras del correo para determinar la ruta del mensaje, servidores involucrados y posibles falsificaciones.
* Cuerpo y Asunto: Observar el tono, errores gramaticales y tácticas de engaño.
* Adjuntos: Identificar nombres de archivos, tipos y tamaños sin abrirlos.
* Enlaces: Copiar los enlaces sin hacer clic en ellos para su análisis posterior.

## **Analizar los enlaces y los archivos adjuntos**
Objetivo: Evaluar los enlaces y archivos adjuntos para determinar la naturaleza y el riesgo del contenido sin comprometer la seguridad.
* VirusTotal: Para análisis de URLs y archivos sospechosos.
* Sandbox de Malware: Como Cuckoo Sandbox, para observar el comportamiento de los archivos en un entorno controlado.
* Herramientas OSINT: Para investigar dominios y enlaces, como WHOIS, nslookup
* Analizadores de URL: Para descomponer y analizar el verdadero destino de un enlace.

Enlaces:
   - Utilizar decodificadores de URL para visualizar el verdadero destino.
   - Ingresar los enlaces en VirusTotal para verificar si son conocidos por distribuir malware o por ser parte de campañas de phishing.
   - Realizar búsquedas OSINT para identificar la propiedad del dominio y su reputación.

Archivos Adjuntos:
   - Subir los archivos a un sandbox de malware para analizar su comportamiento sin riesgo.
   - Usar VirusTotal para escanear los archivos en busca de firmas de malware conocido.
   - Investigar metadatos y propiedades del archivo para pistas sobre su origen y propósito.
    
## **Tipos de ataque.**
1.  Phishing General: Ataques no personalizados enviados a gran escala, buscando engañar a los usuarios para obtener información sensible.
2.  Spear Phishing: Ataques dirigidos a individuos o empresas específicas, a menudo utilizando información personalizada para aumentar la credibilidad.
3.  Whaling: Una forma de spear phishing dirigida a altos ejecutivos, buscando acceso a información corporativa crítica o transferencias financieras fraudulentas.
4.  Smishing y Vishing: Phishing realizado a través de SMS (smishing) o llamadas telefónicas (vishing), buscando engañar a las víctimas para que revelen información personal o financiera.
 

### Remediar

* **Planificar eventos de remediación** en los que estos pasos se pongan en marcha juntos (o de forma coordinada), con los equipos adecuados listos para responder a cualquier interrupción.
* **Equipo de Gestión de Crisis:** Supervisa la coordinación y ejecución de la remediación.
* **Seguridad TI y Soporte TI:** Implementación de acciones de contención y erradicación.

### Contener

1. **Aislamiento y Gestión de Cuentas Comprometidas:**
* Acciones Inmediatas:
   - Identificación y Aislamiento: Rápidamente identificar cuentas afectadas y restringir su acceso para prevenir la propagación de la amenaza. Esto puede incluir desactivación temporal o restricciones de acceso.
   - Cambio de Credenciales: Forzar un cambio de contraseña para todas las cuentas sospechosas de estar comprometidas, aplicando complejidad y unicidad en las nuevas contraseñas.
* Herramientas y Procedimientos:
   - Utilizar soluciones de gestión de identidades y accesos (IAM) para cambiar contraseñas y ajustar permisos de forma masiva.
   - Implementar soluciones de autenticación multifactor (MFA) para añadir una capa adicional de seguridad a las cuentas en riesgo.

2. **Reforzamiento de la Seguridad de Acceso:**
* Autenticación Multifactor (MFA):
   - Implementación Acelerada: Para cuentas aún sin MFA, implementar rápidamente esta capa de seguridad para evitar accesos no autorizados.
* Controles de Acceso Granulares:
   - Restricción de Privilegios: Reducir los privilegios de acceso al mínimo necesario hasta que la investigación esté completa, especialmente para cuentas con acceso a datos críticos.

3. **Bloqueo y Neutralización de Amenazas:**
* Bloqueo de Dominios y Enlaces Maliciosos:
   - Implementar bloqueos a nivel de DNS, firewalls, y proxies para prevenir el acceso a dominios asociados al ataque de phishing.
* Filtrado de Correos Electrónicos:
   - Ajustar las políticas de filtrado de correos para interceptar y bloquear mensajes con características similares a las identificadas en el ataque.

4. **Conservación de Evidencia y Análisis Forense:**
* Retención Forense:
   - Realizar copias forenses de correos electrónicos de phishing y otros artefactos relevantes para la investigación.
* Purga y Aislamiento de Mensajes:
   - Eliminar o aislar correos de phishing de las bandejas de entrada de los usuarios para prevenir interacciones accidentales.

5. **Gestión de Compromisos y Alertas de Seguridad:**
* Aumento de la Vigilancia:
   - Elevar el nivel de alerta y monitoreo de la seguridad, enfocándose en indicadores de compromiso específicos del incidente.
* Asistencia Externa:
   - Considerar el apoyo de expertos en seguridad cibernética para una evaluación más profunda y apoyo en la remediación.

### Comunicar

1. **Identificación y Notificación Inicial:**
   - Quién Participa: Equipo de Respuesta a Incidentes (ERI), Departamento de Seguridad de la Información, Equipo de TI.
   - Procedimiento: Tan pronto como se identifique un incidente de phishing, el ERI debe ser notificado para activar el protocolo de respuesta a incidentes.
   - Herramientas: Sistemas de ticketing para incidentes, plataformas de comunicación interna (por ejemplo, Slack, Microsoft Teams).
     
2. **Comunicación Interna:**
   - Quién Participa: ERI, Departamento de Comunicaciones, Recursos Humanos, Alta Dirección.
   - Procedimiento: Informar al personal interno sobre el incidente con instrucciones claras sobre cómo proceder, especialmente aquellos en departamentos afectados. Esto puede incluir la suspensión temporal de ciertos sistemas o el cambio de contraseñas.
   - Herramientas: Correo electrónico interno, intranet, herramientas de gestión de crisis (por ejemplo, Everbridge).

3. **Coordinación con Asesores Externos:**
   - Quién Participa: ERI, Asesores Legales Externos, Proveedores de Seguridad Externos.
   - Procedimiento: Consultar con asesores legales y de seguridad externos para determinar la gravedad del incidente y las obligaciones legales o de cumplimiento, como la notificación a las autoridades o afectados.
   - Herramientas: Plataformas de comunicación segura, sistemas de gestión de relaciones con proveedores.
   
4. **Comunicación Externa:**
   - Quién Participa: Departamento de Comunicaciones, Alta Dirección, Asesores Legales.
   - Procedimiento: Desarrollar y distribuir comunicados para informar a clientes, socios y, si es necesario, al público sobre el incidente, lo que se está haciendo para resolverlo, y cómo afecta a las partes interesadas. Se deben seguir las directrices legales y de cumplimiento para la comunicación de incidentes de seguridad.
   - Herramientas: Herramientas de gestión de relaciones públicas (PR), plataformas de redes sociales, sitio web corporativo.


### Recuperación

1. Restauración de Sistemas y Servicios:
   - Procedimiento: Evaluar el daño y determinar los sistemas y servicios afectados. Restaurar los datos desde copias de seguridad limpias y seguras. Asegurar que todos los sistemas restaurados sean sometidos a una exhaustiva revisión de seguridad antes de reintegrarlos a la red.
   - Herramientas: Software de respaldo y recuperación de datos, herramientas de gestión de parches para aplicar las últimas actualizaciones de seguridad.
     
2. Análisis Forense y Eliminación de Malware:
   - Procedimiento: Realizar un análisis forense para entender cómo ocurrió el ataque, qué vulnerabilidades fueron explotadas, y si queda alguna presencia maliciosa en la red. Usar esta información para eliminar completamente el malware o las herramientas utilizadas por los atacantes.
   - Herramientas: Plataformas de análisis forense digital, antivirus avanzados y herramientas de eliminación de malware, software de análisis de logs.
     
3. Reforzamiento de las Defensas:
   - Procedimiento: Basado en los hallazgos del análisis forense, reforzar las defensas para cerrar las vulnerabilidades explotadas durante el ataque. Esto puede incluir la implementación de nuevas herramientas de seguridad, actualización de políticas, y el reforzamiento de la seguridad física y de red.
   - Herramientas: Sistemas de detección y prevención de intrusiones (IDS/IPS), firewalls avanzados, soluciones de seguridad para el correo electrónico, herramientas de gestión de vulnerabilidades.
     
4. Educación y Concienciación sobre Seguridad:
   - Procedimiento: Desarrollar y entregar programas de capacitación y concienciación para educar a los empleados sobre las tácticas de phishing, cómo identificarlas y las acciones a tomar en caso de sospecha. Incluir simulaciones de phishing para evaluar y mejorar la respuesta de los empleados.
   - Herramientas: Plataformas de entrenamiento en concienciación de seguridad, herramientas de simulación de phishing, materiales educativos y cursos en línea.

### Recursos

#### Referencia: Acciones del usuario ante la sospecha de un ataque de phishing

1. Identificación y No Interacción:
   - Reconocer Señales de Alerta: Los correos electrónicos de phishing a menudo contienen señales reveladoras, como solicitudes urgentes, ofertas demasiado buenas para ser verdad, errores ortográficos, y direcciones de correo electrónico que no coinciden con el nombre del remitente o la organización que afirman representar.
   - Evitar Acciones Precipitadas: No haga clic en enlaces, no descargue archivos adjuntos, y no responda al mensaje. Si el correo parece provenir de una entidad conocida, como un banco o una empresa de servicios, contacte directamente a la entidad usando información de contacto confiable para verificar la comunicación.

2. Reporte Inmediato:
   - Utilizar Canales Establecidos: Reportar el incidente lo antes posible a través de los canales designados por su organización. Esto puede ser una dirección de correo electrónico específica para reportar phishing, una herramienta interna, o incluso un número de teléfono de ayuda.
   - Proporcionar Detalles Clave: Incluya tanta información como sea posible al reportar, como el remitente del correo, cualquier enlace incluido (sin hacer clic en ellos), la fecha y hora del mensaje, y por qué sospecha que es un intento de phishing.

3. Documentación del Incidente:
   - Capturas de Pantalla: Tome capturas de pantalla del correo electrónico sospechoso, incluidos los encabezados completos del mensaje, si es posible. Esto proporcionará evidencia crucial para la investigación posterior.
   - Registro de Acciones: Si accidentalmente interactuó con el correo (por ejemplo, haciendo clic en un enlace o descargando un archivo), documente cada paso que tomó después de la interacción.

#### Información adicional

1. <a name="phishing-playbook-ref-1"></a>[Protección contra Phishing](https://learn.microsoft.com/es-es/microsoft-365/security/office-365-security/anti-phishing-protection-about?view=o365-worldwide)
1. <a name="phisphing-playbook-ref-2"></a>[Formación en concienciación sobre seguridad y simulaciones de phishing](https://www.knowbe4.com/phishing)
1. <a name="phishing-playbook-ref-3"></a>[Los ejemplos más comunes de correos de Phishing](https://blog.usecure.io/es/the-most-common-examples-of-a-phishing-email) 
1. <a name="phishing-playbook-ref-4"></a>[Mejores prácticas contra el Phishing](https://www.delfossistemas.com/mejores-practicas-contra-el-phishing/)
