## Playbook: Phishing

**Investigar, remediar (contener, erradicar), y comunicar en paralelo!**

Asigna pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es meramente secuencial. Utilice su mejor criterio.

### Investigar

`TODO: Ampliar los pasos de las investigaciones, incluyendo preguntas y estrategias claves, para el phishing.`

1. **Ámbito del ataque** Normalmente se le notificará que se está produciendo un posible ataque de phishing, ya sea por parte de un usuario, cliente o socio.
    * Determinar el **número total de usuarios afectados**.
    * Comprender **las acciones de los usuarios** en la respuesta al phishing de un correo electrónico (_e.j._, ¿Descargaroón el archivo adjunto?, ¿Visitarón el sitio suplantado?, ¿O, dieron alguna información personal o comercial como credenciales?)
    * Encontrar la actividad potencialmente relacionada. Comprueba:
        * Redes Sociales
        * Cualquier correo electrónico sospechoso posible.
        * Correos electrónicos con enlaces a URL's externas y desconocidas.
        * Correos electrónicos de no-retorno o no-entregables.
        * Cualquier tipo de notificación de actividad sospechosa.
1. **Analizar el mensaje** utilizando un dispositivo seguro (es decir, **no** abrir los mensajes en un dispositivo con acceso a datos sensibles o credenciales ya que el mensaje puede contener malware), determinar:
`TODO: Especificar las herramientas y el procedimiento`.
    * Quién ha recibido el mensaje
    * Quién era el objetivo del mensaje (puede ser diferente de los destinatarios a los que iba realmente dirigido el mensaje)
    * Dirección de correo electrónico del remitente
    * línea de asunto
    * Cuerpo del mensaje
    * Adjuntos (**no abra los archivos adjuntos** salvo según los procedimientos establecidos)
    * Enlaces, dominios, y nombres de host (**no siga los enlaces**, excepto según los procedimientos establecidos)
    * Metadatos del correo electrónico inluidas las cabeceras de los mensajes (véase más adelante)
        * Información del remitente en el campo "de" y en la cabecera del usuario autenticado-X
        * Todas las direcciones IP del cliente y del servidor de correo
    * Anotar las "peculiaridades" o características sospechosas
1. **Analizar los enlaces y los archivos adjuntos**
`TODO: Especificar las herramientas y el procedimiento`
    * Utilizar la recopilación pasiva como nslookup y whois para encontrar direcciones IP e información de registro
    * Encontrar dominios relacionados utilizando OSINT (_e.j._, [reverse whois](https://www.whoxy.com/reverse-whois/)) en direcciones de correo electrónico y otros datos de registro.
    * Enviar enlaces, archivos adjuntos y/o hashes a [VirusTotal](https://www.virustotal.com/gui/)
    * Enviar enlaces, adjuntos y/o hashes a un sandbox de malware como [Cuckoo](https://cuckoosandbox.org/), [Hybrid Analysis](https://www.hybrid-analysis.com/), [Joe Sandbox](https://www.joesecurity.org/), o [VMray](https://www.vmray.com/).
1. Categorice el tipo de ataque.
`TODO: Personalizar las categorías y crear playbooks adicionales para tipos de phishing comunes o de alto impacto`
1. **Determine la gravedad.** Considerar:
    * Si la seguridad pública o personal está en riesgo
    * Si los datos personales (u otros datos sensibles) están en riesgo
    * Si hay pruebas de quién está detrás del ataque
    * Número de activos afectados
    * El impacto preliminar en el negocio
    * Si los servicios se ven afectados
    * Si se pueden controlar/registrar los sistemas críticos
 
`TODO: Ampliar los pasos de la investigación, incluyendo las preguntas y estrategias clave, para el phishing.`

### Remediar

* **Planificar eventos de remediación** en los que estos pasos se pongan en marcha juntos (o de forma coordinada), con los equipos adecuados listos para responder a cualquier interrupción.
* **Considere el momento y las compensaciones** de las acciones de reparación: su respuesta tiene consecuencias.

#### Contener

`TODO: Personalizar los pasos de contención, tácticos y estrátegicos, para el phishing.`

`TODO: Especifique las herramientas y los procedimientos para cada paso, a continuación.`

* Contener las cuentas afectadas
    * Cambiar las credenciales de acceso
    * Reducir el acceso a los servicios, sistemas o datos críticos hasta que se complete la investigación
    * Reforzar la autenticación multifactor (MFA)
* Bloquear la actividad en función de los indicadores de compromiso descubiertos, _e.j._:
    * Bloquear dominios maliciosos mediante DNS, cortafuegos o proxies
    * Bloquear los mensajes con remitentes, cuerpos de mensajes, asuntos, enlaces, archivos adjuntos similares, etc., utilizando la puerta de enlace predeterminada o el servicio de correo electrónico.
* Implementar la retención forense o conservar copias forenses de los mensajes
* Purgar los mensajes relacionados de las bandejas de entrada de otros usuarios, o hacerlos inaccesibles de otro modo.
* Contener el compromiso más amplio de acuerdo con el plan general de IR
* Considerar medidas de contención de los dispositivos móviles, como el borrado a través de la gestión de dispositivos móviles (MDM). Equilibrio con el impacto de la investigación/forense.
* Aumentar el "nivel de alerta" de la detección, con una mayor supervisión, en particular de las cuentas, dominios o direcciones IP relacionadas.
* Considerar la posibilidad de contar con asistencia externa en materia de seguridad para apoyar la investigación y la correción.
* Confirmar las actualizaciones de software y antimalware pertinenestes en los activos.

#### Referencia: Recursos de Reparación

`TODO: Especifique los recursos financieros, de personal y logísticos para llevar a cabo la reparación.`

### Comunicar

`TODO: Personalizar los pasos de comunicación para el phishing`

`TODO: Especifique las herramientas y los procedimientos (incluyendo quién debe participar) para cada paso, a continuación, o remítase al plan general.`

1. Elevar el incidente y comunicarlo a la dirección según el procedimiento
1. Documente el incidente según el procedimiento (y [informe](https://us-cert.cisa.gov/report-phishing))
1. Comunicarse con los asesores jurídicos internos y externos según el procedimiento, incluyendo discusiones sobre el cumplimiento, la exposición al riesgo, la responsabilidad, el contacto con las fuerzas del orden, _etc._
1. Comnunicación con los usuarios (interna)
    1. Comunicar las actualizaciones de la respuesta a incidentes según el procedimiento
    1. Comunicar el impacto del incidente **y** las acciones de respuesta al mismo (e.j., contención: "¿Por qué está caído el archivo compartido?")
    1. Comunicar los requisitos: "¿Qué deben hacer y no hacer los usuarios?"
1. Comunicar a los clientes
    1. Centrarse especialmente en aquellos cuyos datos se vieron afectados
    1. Genere las notificaciones requeridas en base a las regulaciones aplicables (particularmente aquellas que puedan considerar el phishing como una violación de datos o que requieren notificaciones de otro tipo)
   `TODO: Ampliar los requisitos y procedimientos de notificación para las regulaciones aplicables`
1. Contactar con el/los proveedor/es de seguros
    1. Discutir qué recursos pueden poner a disposición, qué herramientas y proveedores apoyan y pagarán, _etc._
    1. Cumplir con los requisitos de presentación de informes y reclamaciones para proteger la elegibilidad.
1. Considere la posibilidad de notificar e implicar a [las fuerzas del orden](https://www.policia.es/_es/tupolicia_conocenos_estructura_dao_cgpoliciajudicial_bcit.php)
   `TODO: Vincule los siguiente puntos con los recursos reales de su organización`
    1. [Aplicación de la ley local](#TODO-enlace-a-actual-recurso)
    1. [Aplicación de la ley a nivel estatal o regional](#TODO-enlace-a-actual-recurso)
    1. [Fuerzas de seguridad nacionales o europeas](#TODO-enlace-a-actual-recurso)
1. Comuníquese con los proveedores de seguridad y de TI
   `TODO: Vincule las siguientes viñetas con los recursos reales de su organización`
    1. Notifique y colabore con [proveedores gestionados](#TODO-enlace-a-actual-recurso) para el procedimiento
    1. Notifique y colabore con [consultores de respuesta ante incidentes](#TODO-enlace-a-actual-recurso) para el procedimiento

### Recuperación

`TODO: Personalizar los pasos de recuperación para el phishing`

`TODO: Especifique las herramientas y los procedimientos para cada paso, a continuación`

1. Poner en marcha un plan de continuidad de negocio/recuperación de desastres si el compromiso implica interrupciones de negocio: _e.j._, considerar la migración a ubicaciones operativas alternativas, clústers de conmutación por error, sistemas de copias de seguridad.
1. Reforzar los programas de formación sobre los ataques de phishing sospechosos. Los principales indicadores de sospecha pueden ser:
    * Errores ortográficos en el mensaje o en el asunto
    * Nombres de remitentes que parezcan de telélefono, incluida la falta de coincidencia entre el nombre y la dirección de correo electrónico.
    * Direcciones de correo electrónico personales para asuntos oficiales (e.j., correos electrónicos de gmail o yahoo de colegas de trabajo)
    * Líneas de asunto marcadas con "[EXTERNO]" en correos electrónicos que parecen internos.
    * [enlaces maliciosos o sospechosos](https://www.pcworld.com/article/248963/how-to-tell-if-a-link-is-safe-without-clicking-on-it.html)
    * Recibir un correo electrónico o un archivo adjunto que no se esperaba, pero que proviene de alguien conocido (contactar con el remitente antes de abrirlo).
    * Informar de actividades sospechosas al departamento de TI o de seguridad.
1. Asegúrate de que el personal de TI y de seguridad está al día de las técnicas de phishing más recientes.
1. Determine si ha fallado algún conrol al ser victima de un ataque y rectifíquelo. He aquí una [buena fuente](https://www.proofpoint.com/us/security-awareness/post/14-things-do-after-phishing-attack) a tener en cuenta tras un ataque de phishing.

### Recursos

#### Referencia: Acciones del usuario ante la sospecha de un ataque de phishing

`TODO: Personalizar los pasos para los usuarios ante una sospecha de phishing`

1. Mantenga la calma y respire profundamente.
1. Haz fotos de tu pantalla con tu smartphone mostrando las cosas que has notado: el mensaje de phishing, el enlace si lo has abierto, la información del remitente.
1. Toma notas sobre el problema o los problemas utilizando la aplicación de notas de voz de tu smartphone o con papel y boli.  Todo por poco que sea, ayuda! Documenta lo siguiente:
    1. ¿Qué has notado?
    1. ¿Por qué pensaste que era un problema?
    1. ¿Qué estabas haciendo en el momento en que lo detectaste?
    1. ¿Cuándo se produjo por primera vez, y con qué frecuencia desde entonces?
    1. ¿Dónde estaba cuando ocurrió y en qué red? (oficina/casa/tienda, con cable/inalámbrica, con/sin VPN, _etc._)
    1. ¿Qué sistemas está utilizando? (sistema operativo, nombre de host, _etc._)
    1. ¿Qué cuenta utilizas?
    1. ¿A qué datos suele acceder?
    1. ¿Con quién más te has puesto en contacto sobre este incidente y qué les has dicho?
1. Ponte en contacto con el [servicio de ayuda](#TODO-enlace-a-actual-recurso) utlizando la [línea directa de phishing](#TODO-enlace-a-actual-recurso) o la [barra de herramientas de informe de phishing](#TODO-enlace-a-actual-recurso) y sé lo más servicial posible.
1. Ten paciencia: La respuesta puede ser perturbardora, pero estas protegiendo a tu equipo y a la organización! **Gracias.**

#### Referencia: Acciones del servicio de ayuda ante un presunto ataque phishing

`TODO: Personalizar los pasos para el personal del servicio de asistencia ante una sospecha de phishing`

1. Mantenga la calma y respire profundamente.
1. Abra un ticket para documentar el incidente, según el procedimiento.
   `TODO: Personalizar la plantilla con las preguntas clave (véase más abajo) y el flujo de trabajo posterior`
3. Pídale al usuario que tome fotos de su pantalla usando su smartphone mostrando las cosas que notó: el mensaje de phishing, el enlace si lo abrió, la información del remitente, _etc._  Si es algo que notó directamente, haga lo mismo usted.
4. Toma notas sobre el problema o los problemas utilizando la aplicación de notas de voz de tu smartphone o con papel y boli. Si se trata de un informe de usurio, haz preguntas detalladas, incluyendo:
    1. ¿Qué has notado?
    1. ¿Por qué pensaste que era un problema?
    1. ¿Qué estabas haciendo en el momento en que lo detectaste?
    1. ¿Cuándo se produjo por primera vez, y con qué frecuencia desde entonces?
    1. ¿De qué redes se trata? (oficina/casa/tienda, cableada/inalámbrica, con/sin VPN, _etc._)
    1. ¿De qué sistemas se trata? (sistema operativo, nombre de host, _etc._)
    1. ¿De qué datos se trata? (rutas, tipos de archivos, archivos compartidos, bases de datos, software, _etc._)
    1. ¿Qué usuarios y cuentas están implicados? (directorio activo, SaaS, SSO, cuentas de servicio, _etc._)
    1. ¿A qué datos suelen acceder los usuarios implicados?
    1. ¿Con quién más te has puesto en contacto sobre este incidente y qué les has dicho?
5. Haz las preguntas de seguimiento que sean necesarias. **Usted es de respuesta ante Incidentes, Contamos contigo.**
6. Obtenga información de contacto detallada del usuario (domicilio, oficina, móvil), si procede.
7. Registra toda la información en el ticket, incluyendo notas manuscritas y de voz.
8. Poner en cuarentena a los usuarios y sistemas afectados.
   `TODO: Personalizar el contenido de los pasos, automatizar tanto como sea posible.`
10. Póngase en contacto con el [equipo de seguridad](#TODO-enlace-a-actual-recurso) y prepárase para participar en la respuesta según las indicaciones: investigación, reparación comunicación y recuperación.

#### Información adicional

1. <a name="phishing-playbook-ref-1"></a>[Recurso Ataque Anti-Phishing](https://resources.infosecinstitute.com/category/enterprise/phishing/phishing-countermeasures/top-16-anti-phishing-resources/#gref)
1. <a name="phisphing-playbook-ref-2"></a>[Métodos de Identificación de Ataques Phishing](https://www.securitymetrics.com/blog/7-ways-recognize-phishing-email) 
1. <a name="phishing-playbook-ref-3"></a>[Ejemplos Correos electrónicos de Phishing](https://www.phishing.org/phishing-examples) 
1. <a name="phishing-playbook-ref-4"></a>[Mejores prácticas Anti-Phishing](https://resources.infosecinstitute.com/category/enterprise/phishing/phishing-countermeasures/anti-phishing-best-practices/#gref)
