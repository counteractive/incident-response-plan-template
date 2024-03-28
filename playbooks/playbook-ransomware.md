
## Playbook: Ransomware

**Investigar, remediar (contener, erradicar) y comunicar en paralelo. La contención es fundamental en los incidentes de ransomware, priorice en consecuencia.**

Asigne pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este libro de jugadas no es puramente secuencial. Utilice su mejor criterio.

### Investigación

`OBJETIVO: Ampliar los pasos de la investigación, incluyendo las preguntas y estrategias clave, para el ransomware.`

1. **Determinar el tipo** de ransomware (_es decir, _ ¿cuál es la familia, la variante o el tipo?)[<sup>[1]</sup>](#ransomware-playbook-ref-1)
    1. Encuentre cualquier mensaje relacionado.  Compruebe:
        * las interfaces gráficas de usuario (GUI) del propio malware
        * archivos de texto o html, que a veces se abren automáticamente tras el cifrado
        * archivos de imange, a menudo, como fondos de pantalla del sistema infectado
        * correos electrónicos de contacto en extensiones de archivo encriptadas
        * ventanas emergentes después de intentar abrir un archivo encriptado
        * mensajes de voz
    1. Analice los mensajes en busca de pistas sobre el tipo de ransomware:
        * nombre del ransomware
        * lenguaje, estructura, frases, material gráfico
        * correo electrónico de contacto
        * formato de la identificación del usuario
        * especificaciones de la demanda de rescate (_p.ej._, moneda digital, tarjetas de regalo)
        * dirección de pago en caso de moneda digital
        * chat de soporte o página de soporte
    1. Analice los archivos afectados y/o nuevos.  Compruebe:
        * el esquema de cambio de nombre de los archivos encriptados, incluyendo la extensión (_p.ej._, `.cry`, `.cry`, `.locked`) y el nombre base
        * corrupción de archivos frente a encriptación
        * Tipos de archivos y ubicaciones objetivo
        * usuario/grupo propietario de los archivos afectados
        * Icono de los archivos encriptados
        * marcadores de archivos
        * existencia de listados de archivos, archivos clave u otros archivos de datos

    1. Analice los tipos de software o sistemas afectados.  Algunas variantes de ransomware sólo afectan a determinadas herramientas (_p.ej._, [databases](https://www.bleepingcomputer.com/news/security/mongodb-apocalypse-professional-ransomware-group-gets-involved-infections-reach-28k-servers/)) or platforms (_e.g._, [NAS products](https://forum.synology.com/enu/viewtopic.php?f=3&t=88716))
    1. Subir los indicadores a servicios de categorización automatizados como [Crypto Sheriff](https://www.nomoreransom.org/crypto-sheriff.php), [ID Ransomware](https://id-ransomware.malwarehunterteam.com/), o similar.
1. **Determinar el alcance:**
    1. ¿Qué sistemas están afectados? `TODO: Especificar herramientas y procedimientos`
        * Busque indicadores de compromiso (IOC), como archivos/hashes, procesos, conexiones de red, etc.  Utilice [endpoint protection/EDR](#TODO-link-to-actual-resource), [endpoint telemetry](#TODO-link-to-actual-resource), [system logs](#TODO-link-to-actual-resource), etc.
        * Comprobar la infección de sistemas similares (_por ejemplo, usuarios, grupos, datos, herramientas, departamento, configuración, estado de los parches): comprobar [IAM tools](#TODO-link-to-actual-resource), [permissions management tools](#TODO-link-to-actual-resource), [directory services](#TODO-link-to-actual-resource), _etc._
        * Find external command and control (C2), if present, and find other systems connecting to it: check [firewall or IDS logs](#TODO-link-to-actual-resource), [system logs/EDR](#TODO-link-to-actual-resource), [DNS logs](#TODO-link-to-actual-resource), [netflow or router logs](#TODO-link-to-actual-resource), _etc._
    1. ¿Qué datos están afectados? (_e.g._, tipos de archivo, departamento o grupo, software afectado) `TODO: Especifique la(s) herramienta(s) y el procedimiento`.
        * Buscar cambios anómalos en los metadatos de los archivos, como cambios masivos en las horas de creación o modificación.  Comprobar [herramientas de búsqueda de metadatos de archivos](#TODO-link-to-actual-resource)
        * Buscar cambios en archivos de datos normalmente estables o críticos.  Comprobar las herramientas de [supervisión de la integridad de los archivos](#TODO-link-to-actual-resource)
1. **Evaluar el impacto** para priorizar y motivar los recursos
    1. Evaluar el impacto funcional: impacto en la empresa o en la misión.
        * ¿Cuánto dinero se pierde o está en riesgo?
        * ¿Cuántas (y cuáles) misiones se degradan o están en riesgo?
    1. Evaluar el impacto en la información: impacto en la confidencialidad, integridad y disponibilidad de los datos.
        * ¿Qué importancia tienen los datos para la empresa/misión?
        * ¿Cuán sensibles son los datos? (_p.ej._, secretos comerciales)
        * ¿Cuál es la situación reglamentaria de los datos (_p.ej._, PII, PHI)?

1. **Encuentra el vector de infección.** Comprueba las tácticas capturadas en la [Initial Access tactic](https://attack.mitre.org/tactics/TA0001/) of MITRE ATT&CK[<sup>[4]</sup>](#ransomware-playbook-ref-4).  Los datos más comunes y las fuentes de datos son:
    * archivo adjunto de correo electrónico: comprobar [email logs](#TODO-link-to-actual-resource), [email security appliances and services](#TODO-link-to-actual-resource), [e-discovery tools](#TODO-link-to-actual-resource), _etc._
    * insecure remote desktop protocol (RDP): check [vulnerability scanning results](#TODO-link-to-actual-resource), [firewall configurations](#TODO-link-to-actual-resource), _etc._
    * auto-propagación (worm or virus) (check [host telemetry/EDR](#TODO-link-to-actual-resource), [system logs](#TODO-link-to-actual-resource), [forensic analysis](#TODO-link-to-actual-resource), _etc._)






Determinar el tipo de ransomware:

Equipo asignado: Equipo de Análisis de Malware.
Estrategia: Utilizar herramientas avanzadas de análisis de malware para identificar la familia, variante o tipo específico de ransomware involucrado en el incidente. Analizar firmas, comportamiento y características únicas del malware.
Analizar mensajes relacionados:

Equipo asignado: Equipo de Análisis de Mensajes.
Estrategia: Revisar detenidamente todos los mensajes relacionados con el ransomware, incluyendo interfaces gráficas, archivos de texto/html, mensajes de voz, etc. Identificar patrones de lenguaje, contactos de correo electrónico, instrucciones de rescate y cualquier otra información relevante.
Examinar archivos afectados:

Equipo asignado: Equipo de Análisis de Archivos.
Estrategia: Investigar a fondo los archivos afectados por el ransomware. Analizar el esquema de cambio de nombre de los archivos encriptados, tipos de archivos afectados, iconos de archivos, etc. Determinar la extensión de la encriptación y evaluar la posibilidad de recuperación de datos.
Determinar el alcance:

Equipo asignado: Equipo de Investigación de Alcance.
Estrategia: Identificar el alcance total del incidente de ransomware. Determinar qué sistemas están afectados, identificar indicadores de compromiso (IOC), evaluar la sensibilidad de los datos comprometidos y encontrar el vector de infección utilizado por el atacante.




### Remediar

**Planificar eventos de remediación** en los que estos pasos se lancen juntos (o de forma coordinada), con los equipos apropiados listos para responder a cualquier interrupción.
**Considere el momento y las compensaciones** de las acciones de reparación: su respuesta tiene consecuencias.

#### Contención

Poner en cuarentena sistemas infectados:

Equipo asignado: Equipo de Seguridad de Red.
Estrategia: Implementar medidas de cuarentena para aislar los sistemas infectados y evitar la propagación del ransomware a través de la red. Desconectar los sistemas comprometidos de la red corporativa y bloquear el tráfico malicioso.
Bloquear dominios y direcciones de comando y control:

Equipo asignado: Equipo de Seguridad de Red.
Estrategia: Utilizar firewalls, sistemas de detección de intrusiones y listas negras de dominios para bloquear el acceso a los servidores de comando y control utilizados por el ransomware. Prevenir cualquier comunicación saliente hacia direcciones maliciosas.
Erradicación:

Reconstruir sistemas infectados:
Equipo asignado: Equipo de Infraestructura de TI.
Estrategia: Restaurar los sistemas afectados desde copias de seguridad verificadas y limpias. Reinstalar sistemas operativos y aplicaciones si es necesario. Implementar medidas de seguridad adicionales para prevenir futuros ataques.

#### Erradicar

`OBJETIVO: Personalizar los pasos de erradicación, tácticos y estratégicos, para el ransomware.`

`OBJETIVO: Especificar las herramientas y los procedimientos para cada paso, a continuación.`

* Reconstruir los sistemas infectados a partir de soportes conocidos como buenos.
* Restaurar a partir de copias de seguridad conocidas y limpias.
* Confirmar que la protección de los puntos finales (AV, NGAV, EDR, etc.) está actualizada y activada en todos los sistemas.
* Confirmar que los parches se despliegan en todos los sistemas (dando prioridad a los sistemas, SO, software, etc.).
* Despliegue de firmas personalizadas en las herramientas de protección de puntos finales y de seguridad de la red, basándose en los IOC descubiertos.
* **Vigilar la reinfección:** considerar el aumento de la prioridad de las alarmas/alertas relacionadas con este incidente.


### Comunicar

No pagar el rescate y activar un plan de continuidad de negocio:

Equipo asignado: Equipo de Gestión de Crisis.
Estrategia: Comunicar claramente la política de la organización de no pagar rescates y activar un plan de continuidad de negocio para mitigar el impacto del ransomware en las operaciones comerciales. Informar a todas las partes interesadas sobre los pasos a seguir y las medidas de contingencia implementadas.
Recuperación de datos y consideraciones legales:

Equipo asignado: Equipo de Gestión Legal y de Cumplimiento.
Estrategia: Coordinar la recuperación de datos de las copias de seguridad verificadas y limpias. Evaluar las implicaciones legales, regulatorias y financieras del incidente de ransomware. Colaborar con las autoridades pertinentes y cumplir con los requisitos de notificación de violación de datos según sea necesario.

### Recursos

#### Referencia: Acciones de los usuarios ante la sospecha de ransomware

`OBJETIVO: Personalizar los pasos para los usuarios ante la sospecha de ransomware`.

1. Mantenga la calma y respire profundamente.
1. Desconecte su sistema de la red `OBJETIVO: incluya pasos detallados con capturas de pantalla, una herramienta preinstalada o un script para facilitar esta tarea ("romper en caso de emergencia"), considere los interruptores de corte de red por hardware`.
1. Haz fotos de tu pantalla con tu smartphone mostrando las cosas que has notado: mensajes de rescate, archivos encriptados, mensajes de error del sistema, _etc._.
1. 2. Toma notas sobre el problema o los problemas utilizando la aplicación de notas de voz de tu smartphone o con papel y lápiz.  Todo ayuda.  Documenta lo siguiente:
    1. ¿Qué has notado?
    1. ¿Por qué pensaste que era un problema?
    1. ¿Qué estabas haciendo en el momento en que lo detectaste?
    1. ¿Cuándo se produjo por primera vez, y con qué frecuencia desde entonces?
    1. ¿Dónde estaba cuando ocurrió y en qué red? (oficina/casa/tienda, con cable/inalámbrica, con/sin VPN, _etc._)
    1. ¿Qué sistemas está utilizando? (sistema operativo, nombre de host, _etc._)
    1. ¿Qué cuenta utilizas?
    1. ¿A qué datos suele acceder?
    1. ¿Con quién más se ha puesto en contacto en relación con este incidente y qué le ha dicho?
1. Contacta al  [help desk](#TODO-link-to-actual-resource) y ser lo más útil posible
1. Tenga paciencia: la respuesta puede ser perturbadora, pero está protegiendo a su equipo y a la organización.  **Gracias.**



#### Información adicional

1. <a name="ransomware-playbook-ref-1"></a>["Ransomware Identification for the Judicious Analyst"](https://www.gdatasoftware.com/blog/2019/06/31666-ransomware-identification-for-the-judicious-analyst), Hahn (12 Jun 2019)
1. <a name="ransomware-playbook-ref-2"></a>[No More Ransom!](https://www.nomoreransom.org) Project, including their [Crypto Sheriff](https://www.nomoreransom.org/crypto-sheriff.php?lang=en) service and their [Q&A](https://www.nomoreransom.org/en/ransomware-qa.html)
1. <a name="ransomware-playbook-ref-3"></a>[ID Ransomware](https://id-ransomware.malwarehunterteam.com/) service
1. <a name="ransomware-playbook-ref-4"></a>[MITRE ATT&CK Matrix](https://attack.mitre.org), including the [Initial Access](https://attack.mitre.org/tactics/TA0001/) and [Impact](https://attack.mitre.org/tactics/TA0040/) tactics
