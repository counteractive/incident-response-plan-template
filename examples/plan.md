# Plan de respuesta a incidentes para {{COMPANY_NAME}}

Autor: {{AUTHOR_NAME}}, {{AUTHOR_EMAIL}}

Revisión {{REVISION_NUMBER}}, Publicado {{RELEASE_DATE}}

Este plan de respuesta a incidentes está basado en el plan conciso, directivo, específico, flexible y gratuito disponible en [Github](https://github.com/counteractive/incident-response-plan-template) de Counteractive Security y discutido en [www.counteractive.net](https://www.counteractive.net/posts/an-ir-plan-you-will-use/)

Fue revisado por última vez el {{REVIEW_DATE}}. Fue probado por última vez en {{TEST_DATE}}.

`TODO: Personalice esta plantilla de plan para su organización utilizando las instrucciones en https://github.com/counteractive/incident-response-plan-template.  Para obtener servicios de respuesta a incidentes, o ayuda para personalizar, implementar o probar su plan, póngase en contacto con nosotros en contact@counteractive.net o en el (888) 925-5765.`

# Evaluar

1. **Mantenga la calma y la profesionalidad.**
1. Reúna la información pertinente, _e._, alarmas, eventos, datos, suposiciones, intuiciones (**observe**).
1. Considerar las categorías de impacto, a continuación (**orientar**), y determinar si hay un posible incidente (**decidir**):
1. 2. Iniciar una respuesta si hay un incidente (**actuar**).  En caso de duda, inicie una respuesta. El Jefe de incidente y el equipo de respuesta pueden ajustarse tras la investigación y la revisión.

## Evaluar el impacto funcional

¿Cuál es el impacto directo o probable en su misión? (_e._, operaciones comerciales, empleados, clientes, usuarios)

* Degradación o fracaso de la misión/empresa: **incidente!**
* Ninguno: evalúe el impacto de la información.

## Evaluar el impacto de la información

¿Cuál es el impacto directo o probable en su información/datos, especialmente en los sensibles? (_p. ej., información personal, datos de propiedad, financieros o sanitarios)

* Información a la que se ha accedido, tomado, cambiado o borrado: **incidente!**
* Ninguno: gestión a través de canales no relacionados con incidentes (por ejemplo, un ticket de soporte).

**Cada miembro del equipo está facultado para iniciar este proceso.** Si ves algo, di algo.

`TODO: Personalizar las categorías/severidades según sea necesario.  Este sencillo ejemplo (incidente vs. no incidente) se basa en las categorías de impacto del NIST SP 800-61r2.`

# Iniciar la respuesta


## Nombre del incidente

Cree una [frase simple de dos palabras](http://creativityforyou.com/combomaker.html) para referirse al incidente -un nombre en clave- para utilizarlo en el archivo de incidentes y en los canales. 
## Todo: Personalizar el procedimiento de nomenclatura de incidentes.

## Reunir el equipo de respuesta

1. Llame al Comandante de Incidentes de turno/de guardia. `TODO: Añadir lista o procedimiento de llamada del Comandante de Incidentes`.
1. * No hable del incidente fuera del equipo de respuesta, a menos que el Jefe de incidente lo autorice.
1. Inicie y/o únase al chat de respuesta en {{RESPONSE_CHAT}}.  ToDo: Añadir el procedimiento de lanzamiento del chat de respuesta.
1. Inicie y/o únase a la llamada de respuesta en {{RESPONSE_PHONE}} y/o {{RESPONSE_VTC}}.  Tarea: Añadir el procedimiento de lanzamiento de la llamada de respuesta.
1. Prefiera la llamada de voz, el chat y el intercambio seguro de archivos sobre cualquier otro método.
1. No utilizar el correo electrónico primario si es posible.  Si el correo electrónico es necesario, utilícelo con moderación o use {{ALTERNATE_EMAIL}}.  Encripte los correos electrónicos cuando cualquier participante esté fuera del dominio {{ORGANIZATION_DOMAIN}}.  `TODO: Añadir detalles y procedimiento de correo electrónico alternativo, por ejemplo, Office 365 o GSuite bajo demanda`.
1. No usar SMS/texto para comunicar el incidente, a menos que sea para decirle a alguien que se mueva a un canal más seguro.
1. Invite al personal de guardia a la llamada de respuesta y al chat de respuesta.
    * Invite al equipo de seguridad.  `TODO: Añadir lista de contactos del equipo de seguridad o procedimiento.`
    * Invitar a una PYME de los equipos y sistemas afectados.  Invitar a una PYME de los equipos y sistemas afectados.
    * Invitar a las partes interesadas ejecutivas y a los asesores jurídicos lo antes posible, pero dar prioridad a los responsables operativos.  Obligación: añadir una lista de contactos de las partes interesadas ejecutivas o un procedimiento.
1. OPCIONAL: Establecer una sala de colaboración en persona ("sala de guerra") para incidentes complejos o graves. OBJETIVO: Añadir un procedimiento de sala de colaboración.

### Referencia: Estructura del equipo de respuesta

* Equipo de Mando
  * [Jefe de incidente](#role-incident-commander-ic)
  * [Comandante Adjunto de Incidentes](#role-deputy-incident-commander-deputy)
  * [Escribano](#role-scribe)
* Equipo de enlace
  * Enlace interno (#role-liaison)
  * Enlace externo
* Equipo de operaciones
  * Expertos en la materia](#role-subject-matter-expert-sme) (PYMES) para sistemas
  * PYMES para equipos/unidades de negocio
  * PYMES para Funciones Ejecutivas (por ejemplo, Legal, RRHH, Finanzas)

`TODO: Modificar la estructura de roles según sea necesario.`

### Referencia: Información de contacto del equipo de respuesta

Rol del equipo de respuesta | Información de contacto
---------------------------- | ---------------------------
Localizador del Jefe de incidente | {{INCIDENT_COMMANDER_PAGER_NUMBER}}
Url del Comandante de Incidentes | {{INCIDENT_COMMANDER_PAGER_URL}}
Lista de comandantes de incidentes | {{INCIDENT_COMMANDER_ROSTER}}
Lista del equipo de seguridad | {{SECURITY_TEAM_ROSTER}}
Lista del equipo SME | {{TEAM_SME_ROSTER}}
Lista de ejecutivos | {{EXECUTIVE_ROSTER}}

`TODO: Personalizar la información de contacto del equipo de respuesta.  Incluya los procedimientos de contacto en las listas, que pueden ser estáticas o dinámicas.`

## Establecer el ritmo de la batalla

### Realizar la llamada de respuesta inicial

1. Realice la llamada inicial utilizando la [estructura de llamada de respuesta inicial] (#referencia-estructura-de-llamada-de-respuesta-inicial)
1. Siga las instrucciones del Jefe de incidente.  Si el Comandante de Incidentes de turno/de guardia no se une a la llamada dentro de {{INCIDENT_COMMANDER_RESPONSE_SLA}} y usted es un comandante de incidentes capacitado, tome el mando de la llamada.
1. Siga las [instrucciones para su función](#roles).
1. Siga la llamada y el chat, y comente según corresponda.  Si no es un SME, filtre las aportaciones a través del SME de su equipo si es posible.
1. *Mantenga la llamada y el chat activos durante todo el incidente para una comunicación basada en eventos.
1. Programe actualizaciones *cada {{UPDATE_FREQUENCY}} en el puente activo.

#### Referencia: Estructura de la llamada de respuesta inicial

* Jefe de incidente (IC): Mi nombre es [NOMBRE], soy el Jefe de incidente.  He designado a [NOMBRE] como adjunto y a [NOMBRE] como escribiente. ¿Quién está en la llamada?
* SCRIBE: [Toma asistencia]
* IC: [Si falta personal clave] Diputado, por favor llame a [PERSONAL FALTANTE].
* IC: [Hace preguntas para entender la situación, los síntomas, el alcance, el vector, el impacto y el calendario del informador del incidente, los SME aplicables para los sistemas y las unidades de negocio].
* PYMES: [Respuestas breves a las preguntas del CI].
* IC: [Si se trata de un incidente]:
  * En este momento, el resumen del incidente es el siguiente: [reitera el resumen].  El equipo de investigación estará dirigido por [NOMBRE], el equipo de reparación estará dirigido por [NOMBRE] y el equipo de comunicación estará dirigido por [NOMBRE].  Ellos coordinarán la composición del equipo y me informarán.  Los miembros del equipo, por favor, informen a su jefe de equipo correspondiente.
  * ¿Qué medidas de investigación, corrección o comunicación se han tomado ya? [esta debería ser una lista corta, pero tiene que salir ahora]
  * Esta llamada y el chat permanecerán activos y disponibles hasta el cierre del incidente, por favor, utilícelos para todas las comunicaciones relacionadas con el incidente.  Proporcione actualizaciones de estado en tiempo real en el chat, si es posible.
  * ¿Hay alguna pregunta o aportación restante? [responde a las preguntas]
  * Líderes de equipo, por favor procedan con sus acciones planeadas.  Nos reuniremos de nuevo en [UPDATE_TIME] para discutir el estado.  Gracias.
  * IC: [Si esto no es un incidente]: En este momento, estos hechos no alcanzan el nivel de un incidente.  Me coordinaré directamente con el informador del incidente para las acciones de seguimiento.  Gracias por su tiempo.

#### Reference: Call Etiquette

* Join both the call and chat.
* Keep background noise to a minimum.
* Keep your microphone muted until you have something to say.
* Identify yourself when you join the call; State your name and role (_e.g._, "I am the SME for team x").
* Speak up and speak clearly.
* Be direct and factual.
* Keep conversations/discussions short and to the point.
* Bring any concerns to the Jefe de incidente (IC) on the call.
* Respect time constraints given by the Jefe de incidente.
* **Use clear terminology, and avoid acronyms or abbreviations. Clarity and accuracy is more important than brevity.**

### Conduct Response Update

* Conduct scheduled updates using the [update call structure](#reference-response-update-call-structure) every {{UPDATE_FREQUENCY}} on the active bridge. `TODO: Customize update frequency and scripts; recommend no more than twice daily.`
* Adjust frequency as necessary.
* Coordinate independent updates (_e.g._, executive, legal) as required, but as infrequently as practicable.

#### Referencia: Estructura de la llamada de actualización de la respuesta

* Jefe de incidente (IC): Desde nuestra última actualización programada, el resumen del incidente es el siguiente:
  * [Impacto]
  * [Vector]
  * [Actualización del resumen]
  * [Actualización de la línea de tiempo]
* IC: Equipo de investigación, por favor proporcione una breve actualización
  * LÍDER DE LA INVESTIGACIÓN: [Actividades de investigación o "nada que informar"]
  * ¿Cuál es su plan de investigación recomendado?
  * ¿Qué acciones de investigación necesitan ser asignadas o aprobadas?  [escuchar, obtener consenso, encargar/aprobar]
* IC: Equipo de remediación, por favor proporcione una breve actualización
  * Líder de remediación: [Actividades de remediación o "nada que informar"]
  * ¿Cuál es su estrategia de corrección recomendada?  ¿Objeciones fuertes? [escuchar, obtener el consenso, asignar/aprobar]
  * ¿Qué acciones de corrección necesitan ser asignadas o aprobadas?
* IC: Equipo de comunicación, por favor, ofrezca una breve actualización:
  * COMMUNICATIONS LEAD: [Actividades de comunicación o "nada que informar"]
  * ¿Cuál es su estrategia de comunicación recomendada?  ¿Objeciones fuertes? [escuchar, obtener consenso, encargar/aprobar]
  * ¿Qué acciones de comunicación necesitan ser asignadas o aprobadas?
* IC: Esta llamada y el chat permanecerán activos y disponibles hasta el cierre del incidente, por favor, utilícelos para todas las comunicaciones relacionadas con el incidente.  Si es posible, proporcione actualizaciones del estado en tiempo real en el chat.  ¿Hay alguna pregunta o aportación restante? [responde a las preguntas]
* IC: Líderes de equipo, por favor procedan.  Nos reuniremos de nuevo en [] para discutir el estado.  Gracias.

## Supervisar el alcance

* Supervisar el alcance de la respuesta para asegurarse de que no excede el ámbito de control del Jefe de incidente.
* Si un incidente es lo suficientemente complejo y hay suficientes intervinientes, considere la posibilidad de crear subequipos.

### Crear Sub-Equipos

* En la preparación de incidentes complejos, se predefinen tres subequipos: Investigación, Remediación y Comunicación, generalmente responsables de esas funciones de respuesta. `TODO: Personalizar la estructura de los subequipos si es necesario.
* Crear un puente de llamadas y un chat para cada subequipo.
* El Jefe de incidente designará a los líderes de los equipos, que dependen del CI, y a los miembros de los equipos, que dependen de su líder.  Los líderes de equipo no tienen que estar formados como comandantes de incidentes, pero es preferible que tengan alguna experiencia de liderazgo.
* El Jefe de incidente puede ajustar el propósito o el nombre de los subequipos según sea necesario.
* Si desea cambiar de equipo, pregunte a su **líder de equipo actual**.  **No** pregunte al Comandante de Incidentes, o al líder del otro(s) equipo(s).  Utilice la cadena de mando.

### Incidente dividido

Si un incidente resulta ser dos o más incidentes distintos:

* Establecer un nuevo [archivo de incidentes](#crear-archivo-de-incidentes).
* Haga un seguimiento y coordine la investigación, la reparación y la comunicación en el archivo correspondiente.
* Considere la posibilidad de establecer subequipos para cada incidente.
* **Mantener un comandante de incidentes de alto nivel**, para coordinar los activos de baja densidad y alta demanda y mantener la unidad de mando.

**Investigar**

**[Investigar](#investigar), [remediar](#remediación) y [comunicar](#comunicar) en paralelo, utilizando equipos separados, si es posible.** El Jefe de incidente coordinará estas actividades.  Notifique al Jefe de incidente si hay pasos que el equipo debe considerar.

## Crear el archivo del incidente

1. Cree un nuevo archivo de incidentes en {{INCIDENT_FILE_LOCATION}} utilizando el [nombre del incidente] (#nombredelincidente).  Utilice este archivo para el almacenamiento seguro de documentación, pruebas, artefactos, _etc._.
    * Proporcionar un almacenamiento digital seguro.
    * Proporcionar un intercambio de archivos seguro.
    * Obtener almacenamiento físico.
    * Compartir la ubicación del archivo del incidente en la llamada y el chat.
    * `TODO: Personalizar y automatizar la ubicación del archivo y el procedimiento`.
1. Documente el impacto funcional y de la información, si se conoce (véase [Assess](#assess)). `TODO: Personalizar las categorías de impacto, si es necesario.`
1. 2. Documentar el vector, si se conoce (_p. ej., _ web, correo electrónico, medios extraíbles). Tarea: Personalizar la lista de vectores, si es necesario.
1. Documente el resumen del incidente: un breve resumen del vector, el impacto, la investigación y la situación de la reparación, si se conoce.
1. Documente la línea de tiempo del incidente, incluyendo la actividad del atacante y la actividad de la respuesta. Tarea: Añadir líneas de tiempo con diferentes detalles, según sea necesario.
1. Documente los pasos de investigación, reparación y comunicación.  Documente las actividades de forma independiente para que puedan combinarse y reutilizarse, si es posible.
1. Registre la información significativa, como:
    **Pruebas**, con la hora de recogida, la fuente, la cadena de custodia, _etc._.
    * **Sistemas afectados**, con el modo y el momento en que se identificó el sistema, y el resumen del efecto (_e._, tiene malware, datos a los que se ha accedido).
    * **Archivos de interés**, como el malware o los archivos de datos, con el sistema y los metadatos.
    * **Datos accedidos y tomados**, con nombres de archivos, metadatos y hora de presunta exposición.
    * **Actividad significativa de los atacantes**, como inicios de sesión y ejecución de malware, con la hora del evento.
    * Indicadores de compromiso (IOC) basados en la red, como direcciones IP y dominios.
    * Indicadores de compromiso basados en el host**, como nombres de archivos, hashes y claves de registro.
    * Cuentas comprometidas**, con el alcance del acceso y la hora del compromiso.


`TODO: Personalizar el procedimiento de documentación de incidentes, incluyendo hojas de cálculo, bases de datos, formularios, sistemas y plantillas, si es necesario.`

## Recoger las pistas iniciales

1. Entrevistar a los informadores del incidente.
1. 2. Recoger los datos de apoyo iniciales (_e._, alarmas, eventos, datos, suposiciones, intuiciones) en el archivo del incidente.
1. Entrevistar a la(s) PYME con experiencia en el dominio o el sistema, para comprender los detalles técnicos, el contexto y el riesgo.
1. Entrevistar a la(s) PYME de la unidad de negocio afectada, para comprender el impacto de la misión/negocio, el contexto y el riesgo.
1. Asegúrese de que las pistas son relevantes, detalladas y procesables.

### Referencia: Lista de recursos de respuesta

Recurso | Ubicación
------------------------- | ------------------------------------
Lista de información crítica | {{CRITICAL_INFO_LIST_LOCATION}}
Lista de activos críticos | {{CRITICAL_ASSET_LIST_LOCATION}}
Base de datos de gestión de activos | {{ASSET_MGMT_DB_LOCATION}}
Mapa de red | {{NETWORK_MAP_LOCATION{}}
Consola SIEM | {{SIEM_CONSOLE_LOCATION}}
Agregador de registros | {{LOG_AGGREGATOR_CONSOLE}}

`TODO: Completar la información crítica y las listas de activos ("joyas de la corona"). Esto es increíblemente importante para una respuesta eficaz.`

`TODO: Personalizar la lista de recursos de respuesta`.

## Actualizar el plan de investigación y el archivo de incidentes

1. Revisar y afinar el impacto del incidente.
1. Revisar y refinar el vector del incidente.
1. Revisar y perfeccionar el resumen del incidente.
1. Revisar y perfeccionar la línea de tiempo del incidente con hechos e inferencias.
1. Crear hipótesis: qué puede haber ocurrido y con qué seguridad.
1. **Identificar y priorizar las preguntas clave** (lagunas de información) para apoyar o desacreditar las hipótesis.
    * Utilizar la matriz ATT&CK de MITRE o un marco similar para [desarrollar preguntas](#referencia-tácticas-de-atacantes-a-preguntas-clave-matriz).
        * [ATT&CK for Enterprise](https://attack.mitre.org/wiki/Main_Page), incluyendo enlaces a los específicos de Windows, Mac y Linux.
        * [ATT&CK Mobile Profile](https://attack.mitre.org/mobile/index.php/Main_Page) para dispositivos móviles.
    * Utilizar palabras interrogativas como inspiración:
        * ¿Cuándo?: primer compromiso, primera pérdida de datos, acceso a x datos, acceso a y sistema, etc.
        * ¿Qué?: impacto, vector, causa de origen, motivación, herramientas/explotaciones utilizadas, cuentas/sistemas comprometidos, datos atacados/perdidos, infraestructura, COIs, etc.?
        * ¿Dónde?: ubicación del atacante, unidades de negocio afectadas, infraestructura, etc.?
        * ¿Cómo?: compromiso (explotación), persistencia, acceso, exfiltración, movimiento lateral, etc.?
        * ¿Por qué?: objetivo, momento, acceso a x datos, acceso a y sistema, etc.
        * ¿Quién?: atacante, usuarios afectados, clientes afectados, etc.?
1. **Identificar y priorizar los dispositivos y estrategias testigo** para responder a las preguntas clave.
    * Consultar los diagramas de la red, los sistemas de gestión de activos y la experiencia de las PYMES
    * Consultar la [Lista de recursos de respuesta](#reference-response-resource-list))
1. Consulte los [libros de jugadas de incidentes](#librosdejugadas) para conocer las preguntas clave, los dispositivos testigos y las estrategias para investigar las amenazas comunes o muy dañinas.

**El plan de investigación es fundamental para una respuesta eficaz; impulsa todas las acciones de investigación.  Utilice el pensamiento crítico, la creatividad y el buen juicio.**

### Referencia: Táctica del atacante a la matriz de preguntas clave

Táctica del atacante | La forma en que los atacantes ...         | Posibles preguntas clave
-------------------- | ----------------------------- | -----------------------------------------
Reconocimiento: ... aprender sobre los objetivos: ¿Cómo? ¿Desde cuándo? ¿Dónde? ¿Qué sistemas?
Desarrollo de recursos: construir infraestructuras. ¿Qué sistemas?
Acceso inicial: ... entrar... ¿Cómo? ¿Desde cuándo? ¿Dónde? ¿Qué sistemas?
Ejecución... ejecutar código hostil... ¿Qué malware? ¿Qué herramientas? ¿Dónde? ¿Cuándo?
¿Persistencia? ¿Cómo? ¿Desde cuándo? ¿Dónde? ¿Qué sistemas?
Escalada de Privilegios | ... obtener acceso de mayor nivel | ¿Cómo? ¿Dónde? ¿Qué herramientas?
Evasión de la defensa | ... esquivar la seguridad | ¿Cómo? ¿Dónde? ¿Desde cuándo?
Acceso a credenciales | ... obtener/crear cuentas | ¿Qué cuentas? ¿Desde cuándo? ¿Por qué?
Descubrimiento: ... aprender nuestra red: ¿Cómo? ¿Dónde? ¿Qué saben?
Movimiento lateral | ... moverse | ¿Cómo? ¿Cuándo? ¿Qué cuentas?
Recogida | ... encontrar y reunir datos | ¿Qué datos? ¿Por qué? ¿Cuándo? ¿Dónde?
Mando y control | ... herramientas y sistemas de control | ¿Cómo? ¿Dónde? ¿Quién? ¿Por qué?
Exfiltración: ... tomar datos. ¿Qué datos? ¿Cómo? ¿Cuándo? ¿Dónde?
Impacto... romper cosas. ¿Qué sistemas o datos? ¿Cómo? ¿Cuándo? ¿Dónde? ¿Cómo de malo?

Consulte la página [MITRE ATT&CK](https://attack.mitre.org/) para obtener más información e ideas.

## Crear y desplegar indicadores de compromiso (IOC)

> Haga hincapié en los indicadores **dinámicos y de comportamiento** junto con las huellas digitales estáticas.

* Crear IOCs basados en [pistas iniciales](#recopilar-pistas-iniciales) y [análisis](#analizar-evidencias).
* Cree IOCs usando un formato abierto soportado por sus herramientas (_e._, [STIX 2.0](https://oasis-open.github.io/cti-documentation/stix/intro)), si es posible. `TODO: Personalizar el formato de los COIs según sea necesario.`
* Utilice la automatización, si es posible. TODO: Añadir un procedimiento de despliegue/revocación de COIs.
* No desplegar "feeds" de COIs no relacionados y no curados, ya que pueden causar confusión y fatiga.
* Considerar todos los tipos de COI:
  * IOC basados en la red, como direcciones IP o MAC, puertos, direcciones de correo electrónico, contenido o metadatos del correo electrónico, URLs, dominios o patrones PCAP.
  * IOC basados en el host, como rutas, hashes de archivos, contenido o metadatos de archivos, claves de registro, MUTEXes, autoejecuciones o artefactos y permisos de usuarios.
  * COIs basados en la nube, como patrones de registro para despliegues [SaaS](https://en.wikipedia.org/wiki/Software_as_a_service) o [IaaS](https://en.wikipedia.org/wiki/Infrastructure_as_a_service)
  * IOCs de comportamiento (también conocidos como patrones, TTPs) tales como patrones de árbol de procesos, heurística, desviación de la línea base y patrones de inicio de sesión.
* Correlacionar varios tipos de IOC, como indicadores basados en la red y en el host en los mismos sistemas.

## Identificar los sistemas de interés

1. Validar si son relevantes.
1. Categorizar la(s) razón(es) por la(s) que son "de interés": tiene malware, acceso por cuenta comprometida, tiene datos sensibles, etc.  Trátelas como "etiquetas", puede haber más de una categoría por sistema.
1. Prioriza la recogida, el análisis y la reparación en función de las necesidades de la investigación, el impacto en el negocio, etc.

# Recogida de pruebas

* Priorizar en base al plan de investigación
* Recoger datos de respuesta en vivo utilizando {{LIVE_RESPONSE_TOOL}}.  `TODO: Personalizar las herramientas y el procedimiento de respuesta en vivo.`
* Recoger los registros relevantes de los sistemas (si no forman parte de la respuesta en vivo), agregadores, SIEM o consolas de dispositivos.  Tarea: Personalizar las herramientas y el procedimiento de recopilación de registros.
* Recoger la imagen de la memoria, si es necesario y si no forma parte de la respuesta en vivo, utilizando {{MEMORY_COLLECTION_TOOL}}.  Hacer: personalizar las herramientas y el procedimiento de recogida de memoria.
* Recoger la imagen del disco, si es necesario, utilizando {{DISK_IMAGE_TOOL}}.  ToDo: Personalizar la herramienta y el procedimiento de recogida de imágenes de disco.
* Recoger y almacenar las pruebas de acuerdo con la política, y con la cadena de custodia adecuada. To do: Personalizar la política de recogida de pruebas y la cadena de custodia.

Considere la posibilidad de recopilar los siguientes artefactos como evidencia, ya sea en tiempo real (_por ejemplo, a través de EDR o un SIEM) o bajo demanda:

### Ejemplo de artefactos útiles

`TODO: Personalizar y priorizar los artefactos útiles.`

* Procesos en ejecución
* Servicios en ejecución
* Hashes ejecutables
* Aplicaciones instaladas
* Usuarios locales y de dominio
* Puertos de escucha y servicios asociados
* Configuración de resolución del sistema de nombres de dominio (DNS) y rutas estáticas
* Conexiones de red establecidas y recientes
* Clave de ejecución y otra persistencia de la ejecución automática
* Tareas programadas y trabajos cron
* Artefactos de ejecuciones anteriores (por ejemplo, Prefetch y Shimcache)
* Registros de eventos
* Política de grupo y artefactos WMI
* Detecciones antivirus
* Binarios en ubicaciones de almacenamiento temporal
* Credenciales de acceso remoto
* Telemetría de conexiones de red (por ejemplo, netflow, permisos de cortafuegos)
* Tráfico y actividad de DNS
* Actividad de acceso remoto, incluido el Protocolo de Escritorio Remoto (RDP), la red privada virtual (VPN), SSH, la informática de red virtual (VNC) y otras herramientas de acceso remoto
* Cadenas de identificadores de recursos uniformes (URI), cadenas de agentes de usuario y acciones de aplicación de proxies
* Tráfico web (HTTP/HTTPS)

## Analizar las pruebas

* Priorizar basándose en el plan de investigación
* Analizar y clasificar los datos de respuesta en vivo
* Analizar la memoria y las imágenes de disco (_i._, realizar análisis forenses)
* Analizar el malware
* _OPCIONAL:_ Enriquecer con investigación e inteligencia
* Documentar nuevos indicadores de compromiso (IOC)
* Actualizar el archivo del caso

### Ejemplo de indicadores útiles

`TODO: Personalizar y priorizar los indicadores útiles.`

* Comportamiento inusual de autenticación (_e._, frecuencia, sistemas, hora del día, ubicación remota)
* Nombres de usuario con formato no estándar
* Binarios no firmados que se conectan a la red
* Balizamiento o transferencias de datos significativas
* Solicitudes de línea de comandos PowerShell con comandos codificados en Base64
* Actividad excesiva de RAR, 7zip o WinZip, especialmente con nombres de archivo sospechosos
* Conexiones en puertos no utilizados previamente.
* Patrones de tráfico relacionados con el tiempo, la frecuencia y el recuento de bytes
* Cambios en las tablas de enrutamiento, como la ponderación, las entradas estáticas, las pasarelas y las relaciones entre pares

## Iterar la investigación

[Actualizar el plan de investigación](#actualizar-plan-de-investigación-y-archivo-de-incidentes) y repetir hasta el cierre.

# Remediar

**Investigar](#investigar), [remediar](#remediación) y [comunicar](#comunicar) en paralelo, utilizando equipos separados, si es posible.** El Jefe de incidente coordinará estas actividades.  Notifique al Jefe de incidente si hay pasos que el equipo debe considerar

## Actualizar el plan de remediación

1. Revisar el archivo del incidente en {{INCIDENT_FILE_LOCATION}} utilizando el [nombre del incidente](#nombredelincidente)
1. 2. Revisar los [playbooks](#playbooks) aplicables.
1. Revise la [lista de recursos de respuesta](#lalistaderecursosdereferencia)).
1. Considere qué tácticas del atacante están en juego en este incidente.  Utilice la lista de MITRE [ATT&CK](https://attack.mitre.org/wiki/Main_Page) (_i._, Persistencia, Escalada de Privilegios, Evasión de la Defensa, Acceso a Credenciales, Descubrimiento, Movimiento Lateral, Ejecución, Recolección, Exfiltración y Mando y Control), o un marco similar.
1. Desarrollar remedios para cada táctica en juego, en la medida en que sea factible teniendo en cuenta las herramientas y los recursos existentes.  Considere remedios para [Proteger](#protect), [Detectar](#detect), [Contener](#contain), y [Erradicar](#eradicate) cada comportamiento del atacante.
1. Priorizar en base a la [estrategia de tiempo](#elegir-tiempo-de-remediación), el impacto y la urgencia.
1. Documentar en el archivo de incidentes.

Utilice los [marcos de seguridad de la información (infosec)](https://www.nist.gov/cyberframework) como inspiración, pero **no utilice la reparación de incidentes como sustituto de un programa de infosec con un marco adecuado.** Utilícelos para complementarse.

### Proteger

> "¿Cómo podemos evitar que la táctica X se repita o reducir el riesgo?  ¿Cómo podemos mejorar la protección futura?"

Utilice lo siguiente como punto de partida para la corrección de la protección:

* Parchear las aplicaciones.
* Parchee los sistemas operativos.
* Actualice las firmas de IPS de la red y del host.
* Actualizar las firmas de protección de puntos finales/EDR/antivirus.
* Reducir las ubicaciones con datos críticos.
* Reducir las cuentas administrativas o privilegiadas.
* Habilitar la autenticación multifactor.
* Reforzar los requisitos de las contraseñas.
* Bloquear los puertos y protocolos no utilizados en los límites del segmento y de la red, tanto entrantes como salientes.
* Poner en lista blanca las conexiones de red para los servidores y servicios críticos.

### Detectar

> "¿Cómo podemos detectar esto en los nuevos sistemas o en el futuro?  ¿Cómo podemos mejorar la detección e investigación en el futuro?"

Utilice lo siguiente como punto de partida para la corrección de detecciones:

* Mejorar el registro y la retención de los registros del sistema, especialmente en los sistemas críticos.
* Mejorar el registro de las aplicaciones, incluidas las aplicaciones SaaS.
* Mejorar la agregación de registros.
* Actualice las firmas de IDS de la red y del host utilizando los IOC.

### Contener

> "¿Cómo podemos evitar que esto se extienda o se agrave? ¿Cómo podemos mejorar la contención en el futuro?"

Utilice lo siguiente como punto de partida para la corrección de la contención:

* Implementar listas de acceso (ACL) en los límites de los segmentos de la red.
* Implementar bloqueos en el límite de la empresa, en múltiples capas del [modelo OSI](https://en.wikipedia.org/wiki/OSI_model).
* Desactivar o eliminar el acceso de las cuentas comprometidas.
* Bloquear direcciones IP o redes maliciosas.
* Bloquee los dominios maliciosos.
* Actualizar las firmas de IPS y antimalware de la red y el host mediante COI.
* Retirar de la red los sistemas críticos o comprometidos.
* Póngase en contacto con los proveedores para obtener ayuda (por ejemplo, proveedores de servicios de Internet, proveedores de SaaS).
* Poner en lista blanca las conexiones de red para los servidores y servicios críticos.
* Matar o deshabilitar procesos o servicios.
* Bloquear o eliminar el acceso de proveedores y socios externos, especialmente el acceso privilegiado.

### Eliminar

> "¿Cómo podemos eliminar esto de nuestros activos?  ¿Cómo podemos mejorar la erradicación en el futuro?"

Utilice lo siguiente como punto de partida para la remediación de la erradicación:

* Reconstruir o restaurar los sistemas y datos comprometidos a partir de un estado bueno conocido.
* Restablecer las contraseñas de las cuentas.
* Eliminar cuentas o credenciales hostiles.
* Borrar o eliminar malware específico (¡difícil!).
* Implementar proveedores alternativos.
* Activar y migrar a ubicaciones, servicios o servidores alternativos.

## Elegir el momento de la remediación

Determine la estrategia de tiempo -cuando se tomarán las acciones de remediación- involucrando al Comandante de Incidentes, a los PYMES y propietarios del sistema, a los PYMES y propietarios de la unidad de negocio, y al equipo ejecutivo.  Cada estrategia es apropiada en diferentes circunstancias:

* Elija la reparación **inmediata** cuando sea más importante detener inmediatamente las actividades del atacante que seguir investigando.  Por ejemplo, una pérdida financiera en curso, o un fracaso de la misión en curso, una pérdida de datos activa, o la prevención de una amenaza significativa inminente.
* Elija una reparación **retrasada** cuando sea importante completar la investigación o no alertar al atacante.  Por ejemplo, el compromiso a largo plazo de un atacante avanzado, el espionaje corporativo o el compromiso a gran escala de un número desconocido de sistemas.
* Elija la remediación **combinada** cuando las circunstancias inmediatas y retardadas se apliquen en el mismo incidente.  Por ejemplo, la segmentación inmediata de un servidor o red sensible para cumplir con los requisitos reglamentarios mientras se investiga un compromiso a largo plazo.

## Ejecutar la remediación

* Evaluar y explicar los riesgos de las acciones de remediación a las partes interesadas.  `TODO: Personalizar el procedimiento de aprobación de los riesgos de la remediación, si es necesario.`
* Implementar inmediatamente aquellas acciones de remediación que afecten poco o nada al atacante (a veces llamadas "acciones de postura").  Por ejemplo, muchas de las acciones de [protección](#protect) y [detección](#detect) anteriores son buenas candidatas.
* Programar y asignar acciones de remediación de acuerdo con la estrategia de tiempo.
* Ejecute las acciones de corrección en lotes, como eventos, para lograr la máxima eficacia y el mínimo riesgo.
* Documentar el estado de ejecución y el tiempo en el archivo de incidentes, especialmente para las medidas temporales.

## Iterar la remediación

[Actualice el plan de remediación](#update-remediation-plan) y repita hasta el cierre.

#Comunicar

**Investigar](#investigar), [remediar](#remediación) y [comunicar](#comunicar) en paralelo, utilizando equipos separados, si es posible.  Notifique al Jefe de incidente si hay pasos que el equipo debe considerar**

Toda comunicación debe incluir la información más precisa disponible.  Muestre integridad.  No comunique especulaciones.

## Comunicar internamente

### Notificar y actualizar a las partes interesadas

* Comuníquese con las partes interesadas como parte de las llamadas iniciales y de actualización, así como a través de actualizaciones impulsadas por eventos en la llamada y el chat.
* Coordinar las actualizaciones independientes (_e._, ejecutivas, legales) según sea necesario, pero con la menor frecuencia posible, para mantener el foco en la investigación y la reparación.
* Concéntrese en la mejor evaluación del vector, el impacto, el resumen y los aspectos más destacados de la línea de tiempo, incluidos los pasos de remediación.  No especule.

### Notificar y actualizar la organización

* No notifique ni ponga al día al personal que no ha respondido hasta que el Jefe de incidente lo autorice, especialmente si existe riesgo de amenaza interna.
* Coordine las actualizaciones de los equipos o de toda la organización con los ejecutivos y la dirección de la empresa.
* Concéntrese en la mejor evaluación del vector, el impacto, el resumen y los aspectos más destacados de la línea de tiempo, incluidos los pasos de remediación.  No especule.

### Crear Informe de Incidentes

* Tras el cierre del incidente, capture la información en el [archivo del incidente](#create-incident-file) para su distribución utilizando el formato en {{INCIDENT_REPORT_TEMPLATE}}.  **Si los informes de vector, impacto, resumen, línea de tiempo y actividad están completos, esto puede ser totalmente automatizado.**
* Distribuir el informe de incidentes a lo siguiente: {{INCIDENT_REPORT_RECIPIENTS}}.
* `TODO: Personalizar la creación y distribución del informe de incidentes, si es necesario`.

## Comunicar externamente

### Notificar a los reguladores

* **No** notifique o actualice al personal que no responde hasta que el Jefe de incidente lo autorice.
* Notificar a los organismos reguladores (por ejemplo, HIPAA/HITRUST, PCI DSS, SOX) si es necesario, y de acuerdo con la política.
* Coordinar los requisitos, el formato y el calendario con el {COMPLIANCE_TEAM{}}.

### Notificar a los clientes

* **No** notifique ni ponga al día al personal que no responde hasta que el Jefe de incidente lo autorice.
* Coordinar las notificaciones a los clientes con {{COMMUNICATIONS_TEAM}}.
* Incluya la fecha en el título de cualquier anuncio, para evitar confusiones.
* No utilice tópicos como "nos tomamos la seguridad muy en serio". Céntrese en los hechos.
* Sea honesto, acepte la responsabilidad y presente los hechos, junto con el plan para prevenir incidentes similares en el futuro.
* Sea lo más detallado posible con la línea de tiempo.
* Sea lo más detallado posible en cuanto a la información que se vio comprometida y cómo afecta a los clientes. Si estábamos almacenando algo que no debíamos, sé honesto al respecto. Saldrá a la luz más tarde y será mucho peor.
* No hablemos de las partes externas que podrían haber causado el problema, a menos que ya lo hayan hecho público, en cuyo caso enlazaremos con su información.  Comunícate con ellos de forma independiente (ver [Notificar a los proveedores](#notificar-a-vendedores-y-socios))
* Publique la comunicación externa lo antes posible.  Las malas noticias no mejoran con el tiempo.
* Si es posible, contacte con los equipos de seguridad internos de los clientes antes de notificar al público.

### Notificar a los proveedores y socios

* **No** notifique ni ponga al día al personal que no responde hasta que el Jefe de incidente lo autorice.
* Si es posible, póngase en contacto con los equipos de seguridad internos de los proveedores y socios antes de notificar al público.
* Céntrese en los aspectos específicos del incidente que afectan o implican al proveedor o socio.
* Coordine los esfuerzos de respuesta y comparta la información si es posible.

### Notificar a las fuerzas de seguridad

* **No** notifique o ponga al día al personal que no ha respondido hasta que el Jefe de incidente lo autorice.
* Coordinar con {{EXECUTIVE_TEAM}} y {{LEGAL_TEAM}} antes de interactuar con las fuerzas del orden.
* Póngase en contacto con las fuerzas del orden locales en {{LOCAL_LE_CONTACT}}.
* Póngase en contacto con el FBI en {{FBI_CONTACT}} o a través del [Internet Crime Complaint Center (IC3)](https://www.ic3.gov).
* Póngase en contacto con los operadores de cualquier sistema utilizado en el ataque, sus sistemas también pueden haber sido comprometidos.

### Contact External Response Support

* Contacte con {{INCIDENT_RESPONSE_VENDOR}} para que le ayude a evaluar el riesgo, la gestión del incidente, la respuesta al mismo y el apoyo posterior al incidente.
* Póngase en contacto con {{PUBLIC_RELATIONS_VENDOR}} para que le ayude con las relaciones públicas y la comunicación externa.
* Contacte con {{INSURANCE_VENDOR}} para que le ayude con el ciberseguro.

### Compartir Inteligencia

* Comparta los IOC con [Infragard](https://www.infragard.org/) si procede.
* Comparta los IOC con su [ISAC](https://en.wikipedia.org/wiki/Information_Sharing_and_Analysis_Center) de servicio a través de {{ISAC_CONTACT}}, si procede.

# Recuperación

`TODO: Personalizar los pasos de recuperación.`

`TODO: Especificar las herramientas y procedimientos para cada paso, a continuación.`

**La recuperación suele estar dirigida por las unidades de negocio y los propietarios de los sistemas.  Tomar acciones de recuperación sólo en colaboración con las partes interesadas pertinentes.**

1. Poner en marcha planes de continuidad de la actividad/recuperación de desastres: Por ejemplo, considerar la migración a ubicaciones operativas alternativas, sitios de conmutación por error, sistemas de respaldo.
1. Integrar las acciones de seguridad con los esfuerzos de recuperación de la organización.

# Cuadernos de juego

Los siguientes libros de juego recogen los pasos comunes de [investigación](#investigación), [reparación](#remediación) y [comunicación](#comunicación) para determinados tipos de incidentes.

Tarea: Crear libros de juego adicionales para tipos de incidentes muy probables o muy perjudiciales.

## Playbook: Desaparición de sitios web

**Investigar, remediar (contener, erradicar) y comunicar en paralelo.**

Asigne pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es puramente secuencial. Utilice su mejor criterio.

### Investigar
1. Desconecta inmediatamente el servidor defectuoso para investigarlo más a fondo.
    * Esto es especialmente importante si la desfiguración es insultante o provocadora de alguna manera. Elimine esto de la vista del público tan pronto como sea posible para evitar daños, así como para mitigar el impacto del negocio.
    * El mensaje de desfiguración también puede contener información falsa que podría confundir a los usuarios o ponerlos en peligro.
    * Desconectar el servidor permitirá una investigación más profunda de la desfiguración. Esto puede ser necesario, ya que el hacker puede haberse adentrado en la organización accediendo a servidores de aplicaciones, bases de datos, etc.
2. Determine el origen de la vulnerabilidad del sistema que ha utilizado el atacante. Los exploits más comunes son:
    * Ataques de inyección SQL
        * Este tipo de ataque se produce cuando un atacante interfiere en las consultas de una aplicación a la base de datos. Por lo tanto, esto puede conducir a un acceso no autorizado a datos privados o sensibles. Lea más sobre los ataques de inyección SQL [aquí](https://www.acunetix.com/websitesecurity/sql-injection/)
    * Ataques de inclusión remota de archivos (RFI)
        * Este tipo de ataque aprovecha la función de referencia de una aplicación para cargar malware desde una URL remota. Más información sobre los ataques RFI [aquí](https://www.acunetix.com/blog/articles/remote-file-inclusion-rfi/)
    * webshells
        * Más información sobre web shells y defacement de sitios web [aquí](https://www.wordfence.com/blog/2017/06/wso-shell/)
    * mal diseño de aplicaciones web
        * hacks de javascript
        * hacks de PHP/ASP
        * Aquí hay más sobre [hacking con javascript](https://itnext.io/how-companies-are-hacked-via-malicious-javascript-code-12aa82560bdc)
    * otros métodos de detección incluyen: 
        * Comprobar los registros del servidor
            * buscar en el registro de acceso y en el registro de errores de la página web cualquier actividad sospechosa o desconocida
            * por supuesto, también es una buena idea comprobar los registros del firewall IDS o IPS, si están disponibles
        * Comprobar los archivos con contenido estático
        * Escanear las bases de datos en busca de contenido malicioso
        * Comprobación de los enlaces presentes en la página
3. Recoger cualquier pista sobre quién es el hacker o para qué organización trabaja. Considere las siguientes preguntas:
    * ¿Qué representa la desfiguración? ¿Incluía un mensaje obvio?
    * ¿Parece la desfiguración inofensiva o intencionada? ¿Podría ser el hacker un niño jugando o un grupo profesional que trabaja con un motivo?
    * ¿Parece que su organización es el objetivo? ¿Quién podría querer atacar a su organización?
    * ¿Qué esperaba conseguir el hacker?
    * Consulta [aquí](https://www.geeksforgeeks.org/types-of-hackers/) para saber más sobre los tipos de hackers que pueden haber atacado tu página web.
4. Recoge otra información importante de la página que ha sido desfigurada, como por ejemplo
    * una captura de pantalla de la desfiguración
    * el dominio y la dirección IP de la página
    * detalles del servidor web
    * el código fuente de la página
        * analizarlo cuidadosamente para identificar el problema y asegurarse de que se encuentra en un servidor de la empresa
    * nombre o cualquier información sobre el atacante
6. También existen herramientas que ayudan a la detección y al análisis de los registros. A continuación se enumeran algunas de ellas:
    * Weblog Expert
    * Sawmill
    * Deep Log Analyzer


Tarea: Ampliar los pasos de la investigación, incluyendo las preguntas y estrategias clave, para la desfiguración de sitios web.

### Remediar

* **Planifique eventos de remediación** en los que estos pasos se lancen juntos (o de forma coordinada), con los equipos apropiados listos para responder a cualquier interrupción.
**Considere el momento y las compensaciones** de las acciones de reparación: su respuesta tiene consecuencias.

#### Contención

Tarea: Personalizar los pasos de contención, tácticos y estratégicos, para la desfiguración de sitios web.

Tarea: Especificar las herramientas y los procedimientos para cada paso, a continuación.

1. Haga una copia de seguridad de todos los datos almacenados en el servidor web con fines forenses.
2. Como se ha mencionado anteriormente, asegúrese de que el servidor de la página desfigurada está temporalmente fuera de servicio mientras se lleva a cabo la investigación.
    * Debería tener una página de error preparada para esta situación que informe al usuario y/o a los empleados de que el mantenimiento está en marcha y que la página que buscaban volverá en breve. Incluso podría tener preparada una página web de respaldo en la que pueda publicar contenido mientras se lleva a cabo la investigación y la reparación, y hacer que su página de error temporal redirija a los usuarios a este sitio de respaldo. 
    * Compruebe su mapa de arquitectura de red. Si la brecha es otro sistema de la red, descárguelo e investíguelo.
3. Una vez que se haya determinado el origen del ataque, aplique los pasos necesarios para garantizar que esto no vuelva a suceder. Esto puede incluir la modificación del código o la edición de los derechos de acceso.
    * Consulte la sección "Investigar" para conocer las fuentes comunes de vulnerabilidad.
    * Si esto está fuera de su dominio, simplemente asegúrese de que ha dado al personal apropiado toda la información que tiene sobre el ataque y permita que los expertos hagan su trabajo.

### Recuperación

`TODO: Personalizar los pasos de recuperación para el defacement`.

`TODO: Especifique las herramientas y procedimientos para cada paso, a continuación`.

1. Elimine el mensaje del hacker y reemplácelo con el contenido original y legítimo. Si se han perdido datos en el ataque, consulte las copias de seguridad y restaure la página original en la medida de lo posible.
    * Compruebe las copias de seguridad en busca de indicadores de compromiso
    * Considere la recuperación parcial y la prueba de integridad de las copias de seguridad
2. Considere pedir a los usuarios que cambien sus credenciales de acceso si el servidor web tiene autenticación de usuario. 
3. Después de aplicar las medidas para evitar riesgos (como se recomienda a continuación), restaure su servidor mostrando el contenido original de la página. 
4. Si es necesario y/o aplicable, prepare una disculpa/explicación del ataque ocurrido para los usuarios o cualquier persona que haya presenciado la desfiguración. Asegúrese de que queda claro que el contenido desfigurado no refleja a su organización de ninguna manera. 

#### Evitar riesgos

`TODO: Comuníquese con otros empleados para asegurarse de que todos entienden y contribuyen a los siguientes pasos, cuando sea aplicable`.

1. Utilice el menor número de plug-ins posible. Los piratas informáticos tienen como objetivo los sitios web que son vulnerables y tienen muchas fuentes de entrada. Puedes limitar estas fuentes de entrada utilizando sólo lo que necesites y eliminando los plug-ins y el software que no utilices o sean antiguos. También es importante actualizarlos lo antes posible. 
2. Controle de cerca y ordene el acceso a los contenidos administrativos. Permita que las personas accedan sólo a lo que necesitan. Esto reducirá la posibilidad de que un error humano provoque un ciberataque. Hay más métodos de prevención DIY mencionados en [este artículo](https://cirt.gy/index.php/node/116) (pasos 6-12) y en el recurso #4 al final de este playbook.
3. Comprueba regularmente si hay malware en tu sitio web escaneando el código fuente. Busca scripts, iframes o URLs que te parezcan desconocidos y asegúrate de escanear también las URLs que sí te resulten familiares.
4. Hay muchos escáneres automáticos de sitios web de gran reputación que no le costarán nada de su tiempo y escanearán a fondo su sitio en busca de vulnerabilidades con regularidad. Aquí hay un [enlace a escáneres populares](https://resources.infosecinstitute.com/14-popular-web-application-vulnerability-scanners/#gref).
5. Defiéndase contra los puntos comunes de explotación, como las inyecciones SQL y los ataques XSS. [Este artículo](https://www.banffcyber.com/knowledge-base/articles/best-practices-address-issue-web-defacement/) incluye las mejores prácticas para defender estos ataques.
6. Instala programas de detección de desfiguración para que, si volviera a producirse un ataque, estés preparado y respondas rápidamente. Aquí hay un [artículo](https://www.techradar.com/news/best-website-defacement-monitoring-service) que resume algunos de los mejores servicios de monitoreo de 2020. 
7. Habla con tus empleados de la importancia de mantener el acceso administrativo limitado y confidencial e infórmales de estos pasos para evitar incidentes, incluyendo la formación periódica de concienciación sobre ciberseguridad.

#### Referencia: Recursos de remediación

`TODO: especificar los recursos financieros, de personal y logísticos para llevar a cabo la reparación`.

### Comunicar

`TODO: Personalizar los pasos de comunicación para la desfiguración`

`TODO: Especifique las herramientas y los procedimientos (incluyendo quién debe participar) para cada paso, a continuación, o remítase al plan general`.

1. 1. Elevar el incidente y comunicarlo a la dirección según el procedimiento
1. 2. Documentar el incidente según el procedimiento (e informar si procede)
1. Comunicarse con los asesores jurídicos internos y externos según el procedimiento, incluyendo discusiones sobre el cumplimiento, la exposición al riesgo, la responsabilidad, el contacto con las fuerzas del orden, _etc._.
1. Comunicarse con los usuarios (internos)
    1. Comunicar las actualizaciones de la respuesta a incidentes según el procedimiento
    1. Comunicar el impacto del incidente **y** las acciones de respuesta al incidente (por ejemplo, contención: "¿por qué está caído el archivo compartido?")
    1. Comunicar los requisitos: "¿qué deben hacer y no hacer los usuarios?"  
1. Comunicar a los clientes
    1. Centrarse especialmente en aquellos cuyos datos se vieron afectados
    1. Generar las notificaciones requeridas en base a las regulaciones aplicables (particularmente aquellas que puedan considerar la desfiguración como una violación de datos o que requieran notificaciones de otro tipo) `TODO: Ampliar los requisitos y procedimientos de notificación para las regulaciones aplicables`.
1. Contactar con los proveedores de seguros
    1. Discutir qué recursos pueden poner a disposición, qué herramientas y proveedores apoyan y pagarán, _etc._.
    1. Cumplir con los requisitos de presentación de informes y reclamaciones para proteger la elegibilidad
1. Considerar la posibilidad de notificar e implicar a las fuerzas del orden. TODO: Vincule las siguientes viñetas con los recursos reales de su organización
    1. [Aplicación de la ley local](#TODO-link-to-actual-resource)
    1. 1. [Aplicación de la ley a nivel estatal o regional](#TODO-link-to-actual-resource)
    1. 1. [Fuerzas de seguridad federales o nacionales](#TODO-link-to-actual-resource)
1. Comuníquese con los proveedores de seguridad y de TI TODO: Vincule las siguientes viñetas con los recursos reales de su organización
    1. Notifique y colabore con [proveedores gestionados](#TODO-link-to-actual-resource) según el procedimiento
    1. 2. Notificar y colaborar con [consultores de respuesta a incidentes](#TODO-link-to-actual-resource) por procedimiento

### Recursos

#### Referencia: Acciones del usuario ante un presunto ataque de desfiguración

`TODO: Personalizar los pasos de los usuarios ante una sospecha de defacement`.

1. Mantenga la calma y respire profundamente.
1. 2. Desconecte su sistema de la red `TODO: incluya pasos detallados con capturas de pantalla, una herramienta preinstalada o un script para facilitar esta tarea ("romper en caso de emergencia"), considere los interruptores de corte de red por hardware`.
1. Haz fotos de la página que veas con tu smartphone mostrando las cosas que has notado: el mensaje de desfiguración y cualquier otro cambio en el sitio habitual.
1. 2. Toma notas sobre el problema o los problemas utilizando la aplicación de notas de voz de tu smartphone o con papel y lápiz.  Todo ayuda.  Documenta lo siguiente:
    1. ¿Qué has notado?
    1. ¿Cuándo ocurrió por primera vez, y con qué frecuencia desde entonces?
    1. ¿A qué datos suele acceder?
    1. ¿Con quién más se ha puesto en contacto en relación con este incidente y qué le ha dicho?
1. Ponte en contacto con el [servicio de asistencia](#TODO-enlace-al-recurso) y sé lo más servicial posible.
1. Ten paciencia: deja que el personal informático lo controle, ¡puedes estar protegiendo a otros de un daño!  **Gracias.**

#### Referencia: Acciones del Help Desk ante un presunto ataque de defacement

`TODO: Personalizar los pasos para el personal del servicio de asistencia ante una sospecha de defacement`.

1. Mantenga la calma y respire profundamente.
1. Abra un ticket para documentar el incidente, según el procedimiento. Tarea: Personalizar la plantilla con las preguntas clave (véase más abajo) y el flujo de trabajo posterior.
1. Utiliza tu mejor criterio para decidir qué pasos priorizar (por ejemplo, si la desfiguración dejó contenido dañino o desencadenante, prioriza la retirada del servidor inmediatamente).
1. Pídele al usuario que tome fotos de su pantalla con su teléfono inteligente mostrando las cosas que notó.
1. Toma notas sobre el problema o los problemas utilizando la aplicación de notas de voz de tu smartphone o con papel y lápiz.  2. Si se trata de un informe de usuario, haga preguntas detalladas, incluyendo
       1. ¿Qué has notado?
    1. ¿Cuándo ocurrió por primera vez, y con qué frecuencia desde entonces?
    1. ¿A qué datos suele acceder?
    1. ¿Con quién más se ha puesto en contacto en relación con este incidente y qué le ha dicho?
1. Haga las preguntas de seguimiento que sean necesarias.  **Usted es una persona que responde al incidente, contamos con usted.**
1. Obtenga información de contacto detallada del usuario (domicilio, oficina, móvil), si procede.
1. Registre toda la información en el ticket, incluyendo las notas manuscritas y de voz.
1. Ponga en cuarentena a los usuarios y sistemas afectados. `TODO: Personalizar los pasos de contención, automatizar todo lo posible`.
1. Póngase en contacto con el [equipo de seguridad] (#TODO-link-to-actual-resource) y prepárese para participar en la respuesta según las indicaciones: investigación, reparación, comunicación y recuperación.

#### Información adicional
1. <a name="defacement-playbook-ref-1"></a>A helpful and detailed [paper](https://pdfs.semanticscholar.org/899e/2d629e06d920b9059edb21fcb52cdb33f783.pdf) on defacement detection
2. <a name="defacement-playbook-ref-2"></a>10 tools for [better website monitoring and security](https://geekflare.com/website-defacement-monitoring/)
3. <a name="defacement-playbook-ref-3"></a>[2019 Website Threat Research Report](https://sucuri.net/reports/2019-hacked-website-report/) with helpful statistics
4. <a name="defacement-playbook-ref-4"></a>[Article](https://www.imperva.com/learn/application-security/website-defacement-attack/) including DIYs and Best practices to prevent website defacement## Playbook: Identity and Access Compromise

**Investigar, remediar (contener, erradicar) y comunicar en paralelo.**

Asigne pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es puramente secuencial. Utilice su mejor criterio.

### Investigar

Tarea: Ampliar los pasos de la investigación, incluyendo las preguntas y estrategias clave, para el compromiso de la identidad y el acceso.

1. TODO

### Remediar

* **Planificar eventos de remediación** en los que estos pasos se lancen juntos (o de forma coordinada), con los equipos apropiados listos para responder a cualquier interrupción.
* **Considere el tiempo y las compensaciones** de las acciones de remediación: su respuesta tiene consecuencias.

#### Contención

Tarea: Personalizar los pasos de contención, tácticos y estratégicos, para el compromiso de la identidad y el acceso.

`TODO: Especificar las herramientas y procedimientos para cada paso, a continuación.`

* TODO

`TODO: Considerar la automatización de las medidas de contención utilizando herramientas de orquestación.`

#### Erradicar

`TODO: Personalizar los pasos de erradicación, tácticos y estratégicos, para el compromiso de la identidad y el acceso.`

`TODO: Especificar herramientas y procedimientos para cada paso, a continuación.`

* TODO

#### Referencia: Remediation Resources

`TODO: Specify financial, personnel, and logistical resources to accomplish remediation.`

### Communicate

`TODO: Customize communication steps for identity and access compromise`

`TODO: Specify tools and procedures (including who must be involved) for each step, below, or refer to overall plan.`

In addition to the general steps and guidance in the incident response plan:

1. TODO

### Recover

`TODO: Customize recovery steps for identity and access compromise.`

`TODO: Specify tools and procedures for each step, below.`

In addition to the general steps and guidance in the incident response plan:

1. TODO

### Resources

#### Additional Information

1. <a name="identity-and-access-playbook-ref-1"></a>["Title"](#TODO-url), Author Last Name (Date)

## Playbook: Phishing

**Investigate, remediate (contain, eradicate), and communicate in parallel!**

Assign steps to individuals or teams to work concurrently, when possible; this playbook is not purely sequential. Utilice su mejor criterio.

### Investigar

Tarea: Ampliar los pasos de la investigación, incluyendo las preguntas y estrategias clave, para el phishing.

1. **Ampliar el ataque** Normalmente se le notificará que se está produciendo un posible ataque de phishing, ya sea por parte de un usuario, cliente o socio.
    * Determinar el número total de usuarios afectados.
    * Comprender las acciones de los usuarios en respuesta al correo electrónico de phishing (por ejemplo, si descargaron el archivo adjunto, visitaron el sitio falso o proporcionaron información personal o comercial, como credenciales).
    * Encontrar la actividad potencialmente relacionada. Compruebe:
        * las redes sociales
        * cualquier correo electrónico posiblemente sospechoso
        * correos electrónicos con enlaces a URLs externas y desconocidas
        * correos electrónicos no retornables o no entregables
        * cualquier tipo de notificación de actividad sospechosa
1. **Analizar el mensaje** utilizando un dispositivo seguro (es decir, **no** abrir los mensajes en un dispositivo con acceso a datos sensibles o credenciales ya que el mensaje puede contener malware), determinar: `TODO: especificar las herramientas y el procedimiento`.
    * quién ha recibido el mensaje
    * quién era el objetivo del mensaje (puede ser diferente de los destinatarios "exitosos")
    * la dirección de correo electrónico del remitente
    * línea de asunto
    * cuerpo del mensaje
    * los archivos adjuntos (**no abra los archivos adjuntos** salvo según los procedimientos establecidos)
    * enlaces, dominios y nombres de host (**no siga los enlaces** excepto según los procedimientos establecidos)
    * Metadatos del correo electrónico, incluidas las cabeceras de los mensajes (véase más adelante).
        * información del remitente en el campo "de" y en la cabecera de usuario autenticado X
        * todas las direcciones IP del cliente y del servidor de correo
    * anotar las "rarezas" o características sospechosas
1. **Analizar los enlaces y los archivos adjuntos** `TODO: especificar las herramientas y el procedimiento`.
    * Utilizar la recopilación pasiva, como nslookup y whois, para encontrar direcciones IP e información de registro.
    * encontrar dominios relacionados utilizando OSINT (_e._, [reverse whois](https://www.whoxy.com/reverse-whois/)) en direcciones de correo electrónico y otros datos de registro
    * enviar enlaces, archivos adjuntos y/o hashes a [VirusTotal](https://www.virustotal.com/gui/)
    * enviar enlaces, archivos adjuntos y/o hashes a un sandbox de malware como [Cuckoo](https://cuckoosandbox.org/), [Hybrid Analysis](https://www.hybrid-analysis.com/), [Joe Sandbox](https://www.joesecurity.org/), o [VMray](https://www.vmray.com/).
1. Categorice el tipo de ataque. `TODO: Personalizar las categorías y crear libros de jugadas adicionales para tipos de phishing comunes o de alto impacto`.
1. **Determine la gravedad:**
    * si la seguridad pública o personal está en riesgo
    * si los datos personales (u otros datos sensibles) están en riesgo
    * si hay pruebas de quién está detrás del ataque
    * número de activos afectados
    * el impacto preliminar en el negocio
    * si los servicios se ven afectados
    * si se pueden controlar/registrar los sistemas críticos

`TODO: Ampliar los pasos de la investigación, incluyendo las preguntas y estrategias clave, para el phishing.`

### Remediar

* **Planifique eventos de remediación** en los que estos pasos se lancen juntos (o de forma coordinada), con los equipos apropiados listos para responder a cualquier interrupción.
**Considere el momento y las compensaciones** de las acciones de reparación: su respuesta tiene consecuencias.

#### Contención

Tarea: Personalizar los pasos de contención, tácticos y estratégicos, para el phishing.

`ToDo: Especifique las herramientas y los procedimientos para cada paso, a continuación.`

* Contener las cuentas afectadas
    * cambiar las credenciales de acceso
    * reducir el acceso a los servicios, sistemas o datos críticos hasta que se complete la investigación
    * Reforzar la autenticación multifactor (MFA)
* Bloquear la actividad en función de los indicadores de compromiso descubiertos, _e.g._:
    * bloquear dominios maliciosos mediante DNS, cortafuegos o proxies
    * Bloquear los mensajes con remitentes, cuerpos de mensajes, asuntos, enlaces, archivos adjuntos similares, etc., utilizando un servicio o una pasarela de correo electrónico.
* Implementar la retención forense o conservar copias forenses de los mensajes
* Purgar los mensajes relacionados de las bandejas de entrada de otros usuarios, o hacerlos inaccesibles de otro modo.
* Contener el compromiso más amplio de acuerdo con el plan general de IR
* Considerar medidas de contención de los dispositivos móviles, como el borrado a través de la gestión de dispositivos móviles (MDM).  Equilibrio con el impacto de la investigación/forense.
* Aumentar el "nivel de alerta" de la detección, con una mayor supervisión, en particular de las cuentas, dominios o direcciones IP relacionadas.
* Considerar la posibilidad de contar con asistencia externa en materia de seguridad para apoyar la investigación y la reparación.
* Confirmar las actualizaciones de software y antimalware pertinentes en los activos.

#### Referencia: Recursos de remediación

`TODO: Especifique los recursos financieros, de personal y logísticos para llevar a cabo la reparación`.

### Comunicar

`TODO: Personalizar los pasos de comunicación para la suplantación de identidad.`

`TODO: Especifique las herramientas y los procedimientos (incluyendo quién debe participar) para cada paso, a continuación, o remítase al plan general`.

1. 1. Elevar el incidente y comunicarlo a la dirección según el procedimiento
1. Documente el incidente según el procedimiento (y [informe](https://us-cert.cisa.gov/report-phishing))
1. 2. Comunicarse con los asesores jurídicos internos y externos según el procedimiento, incluyendo discusiones sobre el cumplimiento, la exposición al riesgo, la responsabilidad, el contacto con las fuerzas del orden, _etc._.
1. Comunicarse con los usuarios (internos)
    1. Comunicar las actualizaciones de la respuesta a incidentes según el procedimiento
    1. Comunicar el impacto del incidente **y** las acciones de respuesta al incidente (por ejemplo, contención: "¿por qué está caído el archivo compartido?")
    1. Comunicar los requisitos: "¿qué deben hacer y no hacer los usuarios?"  
1. Comunicar a los clientes
    1. Centrarse especialmente en aquellos cuyos datos se vieron afectados
    1. Genere las notificaciones requeridas en función de la normativa aplicable (en particular, las que puedan considerar el phishing como una violación de datos o que requieran notificaciones de otro tipo) `TODO: Ampliar los requisitos y procedimientos de notificación para la normativa aplicable`.
1. Contacte con el/los proveedor/es de seguros
    1. Discutir qué recursos pueden poner a disposición, qué herramientas y proveedores apoyan y pagarán, _etc._.
    1. Cumplir con los requisitos de presentación de informes y reclamaciones para proteger la elegibilidad
1. Considere la posibilidad de notificar e implicar a [las fuerzas de seguridad](https://www.usa.gov/stop-scams-frauds) TODO: Vincule las siguientes viñetas con los recursos reales de su organización
    1. 1. [Aplicación de la ley local](#TODO-link-to-actual-resource)
    1. 1. [Aplicación de la ley a nivel estatal o regional](#TODO-link-to-actual-resource)
    1. 1. [Fuerzas de seguridad federales o nacionales](#TODO-link-to-actual-resource)
1. Comuníquese con los proveedores de seguridad y de TI TODO: Vincule las siguientes viñetas con los recursos reales de su organización
    1. Notifique y colabore con [proveedores gestionados](#TODO-link-to-actual-resource) según el procedimiento
    1. Notifique y colabore con [consultores de respuesta a incidentes](#TODO-link-to-actual-resource) por procedimiento

### Recuperación

`TODO: Personalizar los pasos de recuperación para el phishing`.

`TODO: Especifique las herramientas y los procedimientos para cada paso, a continuación`.

1. Poner en marcha un plan de continuidad de negocio/recuperación de desastres si el compromiso implica interrupciones de negocio: Por ejemplo, considerar la migración a ubicaciones operativas alternativas, sitios de conmutación por error, sistemas de copia de seguridad.
1. Reforzar los programas de formación sobre los ataques de phishing sospechosos. Los principales indicadores de sospecha pueden ser: 
    * errores ortográficos en el mensaje o en el asunto
    * Nombres de remitentes que parezcan de teléfono, incluida la falta de coincidencia entre el nombre y la dirección de correo electrónico.
    * Direcciones de correo electrónico personales para asuntos oficiales (por ejemplo, correos electrónicos de gmail o yahoo de colegas de trabajo).
    * líneas de asunto marcadas con "[EXTERNO]" en correos electrónicos que parecen internos
    * [enlaces maliciosos o sospechosos](https://www.pcworld.com/article/248963/how-to-tell-if-a-link-is-safe-without-clicking-on-it.html)
    * Recibir un correo electrónico o un archivo adjunto que no se esperaba pero que proviene de alguien conocido (contactar con el remitente antes de abrirlo).
    * Informar de actividades sospechosas al departamento de TI o de seguridad.
1. Asegúrate de que el personal de TI y de seguridad está al día de las técnicas de phishing más recientes.
1. Determine si ha fallado algún control al ser víctima de un ataque y rectifíquelo. He aquí una [buena fuente](https://www.proofpoint.com/us/security-awareness/post/14-things-do-after-phishing-attack) a tener en cuenta tras un ataque de phishing.

### Recursos

#### Referencia: Acciones del usuario ante la sospecha de un ataque de phishing

`TODO: Personalizar los pasos para los usuarios ante una sospecha de phishing`.

1. Mantenga la calma y respire profundamente.
1. 2. Haz fotos de tu pantalla con tu smartphone mostrando las cosas que has notado: el mensaje de phishing, el enlace si lo has abierto, la información del remitente.
1. 2. Toma notas sobre el problema o los problemas utilizando la aplicación de notas de voz de tu smartphone o con papel y lápiz.  Todo ayuda.  Documenta lo siguiente:
    1. ¿Qué has notado?
    1. ¿Por qué pensaste que era un problema?
    1. ¿Qué estabas haciendo en el momento en que lo detectaste?
    1. ¿Cuándo se produjo por primera vez, y con qué frecuencia desde entonces?
    1. ¿Dónde estaba cuando ocurrió y en qué red? (oficina/casa/tienda, con cable/inalámbrica, con/sin VPN, _etc._)
    1. ¿Qué sistemas está utilizando? (sistema operativo, nombre de host, _etc._)
    1. ¿Qué cuenta utilizas?
    1. ¿A qué datos suele acceder?
    1. ¿Con quién más te has puesto en contacto sobre este incidente y qué les has dicho?
1. Ponte en contacto con el [servicio de ayuda](#TODO-link-to-actual-resource) utilizando la [línea directa de phishing](#TODO-link-to-actual-resource) o la [barra de herramientas de informe de phishing](#TODO-link-to-actual-resource) y sé lo más servicial posible.
1. Ten paciencia: la respuesta puede ser perturbadora, pero estás protegiendo a tu equipo y a la organización.  **Gracias.**

#### Referencia: Acciones del servicio de asistencia ante un presunto ataque de phishing

`TODO: Personalizar los pasos para el personal del servicio de asistencia ante una sospecha de phishing`.

1. Mantenga la calma y respire profundamente.
1. Abra un ticket para documentar el incidente, según el procedimiento. Tarea: Personalizar la plantilla con las preguntas clave (véase más abajo) y el flujo de trabajo posterior.
1. Pídale al usuario que tome fotos de su pantalla usando su smartphone mostrando las cosas que notó: el mensaje de phishing, el enlace si lo abrió, la información del remitente, _etc._ Si es algo que notó directamente, haga lo mismo usted.
1. Toma notas sobre el problema o los problemas utilizando la aplicación de notas de voz de tu smartphone o con papel y lápiz.  2. Si se trata de un informe de usuario, haz preguntas detalladas, incluyendo
    1. ¿Qué has notado?
    1. ¿Por qué pensaste que era un problema?
    1. ¿Qué estabas haciendo en el momento en que lo detectaste?
    1. ¿Cuándo se produjo por primera vez, y con qué frecuencia desde entonces?
    1. ¿De qué redes se trata? (oficina/casa/tienda, cableada/inalámbrica, con/sin VPN, _etc._)
    1. 2. ¿De qué sistemas se trata? (sistema operativo, nombre de host, _etc._)
    1. 2. ¿De qué datos se trata? (rutas, tipos de archivos, archivos compartidos, bases de datos, software, _etc._)
    1. ¿Qué usuarios y cuentas están implicados? (directorio activo, SaaS, SSO, cuentas de servicio, _etc._)
    1. ¿A qué datos suelen acceder los usuarios implicados?
    1. ¿Con quién más has contactado acerca de este incidente y qué les has dicho?
1. Haz las preguntas de seguimiento que sean necesarias.  **Usted es el encargado de responder al incidente, contamos con usted.**
1. Obtenga información de contacto detallada del usuario (domicilio, oficina, móvil), si procede.
1. Registre toda la información en el ticket, incluyendo las notas manuscritas y de voz.
1. Ponga en cuarentena a los usuarios y sistemas afectados. `TODO: Personalizar los pasos de contención, automatizar todo lo posible`.
1. Póngase en contacto con el [equipo de seguridad] (#TODO-link-to-actual-resource) y prepárese para participar en la respuesta según las indicaciones: investigación, reparación, comunicación y recuperación.

#### Información adicional

1. <a name="phishing-playbook-ref-1"></a>[Anti-Phishing Attack resources](https://resources.infosecinstitute.com/category/enterprise/phishing/phishing-countermeasures/top-16-anti-phishing-resources/#gref)
1. <a name="phisphing-playbook-ref-2"></a>[Methods of Identifying a Phishing attack](https://www.securitymetrics.com/blog/7-ways-recognize-phishing-email) 
1. <a name="phishing-playbook-ref-3"></a>[Phishing Email Examples](https://www.phishing.org/phishing-examples) 
1. <a name="phishing-playbook-ref-4"></a>[Anti-Phishing best practices](https://resources.infosecinstitute.com/category/enterprise/phishing/phishing-countermeasures/anti-phishing-best-practices/#gref)
## Playbook: Ransomware

**Investigate, remediate (contain, eradicate), and communicate in parallel! Containment is critical in ransomware incidents, prioritize accordingly.**

Assign steps to individuals or teams to work concurrently, when possible; this playbook is not purely sequential. Use your best judgment.

### Investigate

`TODO: Expand investigation steps, including key questions and strategies, for ransomware.`

1. **Determine the type** of ransomware (_i.e.,_ what is the family, variant, or flavor?)[<sup>[1]</sup>](#ransomware-playbook-ref-1)
    1. Find any related messages.  Check:
        * graphical user interfaces (GUIs) for the malware itself
        * text or html files, sometimes opened automatically after encryption
        * image files, often as wallpaper on infected systems
        * contact emails in encrypted file extensions
        * pop-ups after trying to open an encrypted file
        * voice messages
    1. Analyze the messages looking for clues to the ransomware type:
        * ransomware name
        * language, structure, phrases, artwork
        * contact email
        * formato de la identificación del usuario
        * especificaciones de la demanda de rescate (_e._, moneda digital, tarjetas de regalo)
        * dirección de pago en caso de moneda digital
        * chat de soporte o página de soporte
    1. Analice los archivos afectados y/o nuevos.  Compruebe:
        * el esquema de cambio de nombre de los archivos encriptados, incluyendo la extensión (_e.g._, `.cry`, `.cry`, `.locked`) y el nombre base
        * corrupción de archivos frente a encriptación
        * Tipos de archivos y ubicaciones objetivo
        * usuario/grupo propietario de los archivos afectados
        * Icono de los archivos encriptados
        * marcadores de archivos
        * existencia de listados de archivos, archivos clave u otros archivos de datos
    1. Analice los tipos de software o sistemas afectados.  Algunas variantes de ransomware sólo afectan a determinadas herramientas (_e._, [bases de datos](https://www.bleepingcomputer.com/news/security/mongodb-apocalypse-professional-ransomware-group-gets-involved-infections-reach-28k-servers/)) o plataformas (_e._, [productos NAS](https://forum.synology.com/enu/viewtopic.php?f=3&t=88716))
    1. Suba los indicadores a servicios de categorización automatizados como [Crypto Sheriff](https://www.nomoreransom.org/crypto-sheriff.php), [ID Ransomware](https://id-ransomware.malwarehunterteam.com/), o similares.
1. **Determinar el alcance:**
    1. ¿Qué sistemas están afectados? `TODO: Especificar la(s) herramienta(s) y el procedimiento`.
        * Escanear en busca de indicadores concretos de compromiso (IOCs) como archivos/hashes, procesos, conexiones de red, etc.  Utilice [protección de puntos finales/EDR](#TODO-link-to-actual-resource), [telemetría de puntos finales](#TODO-link-to-actual-resource), [registros del sistema](#TODO-link-to-actual-resource), etc.
        * Compruebe si hay sistemas similares infectados (_por ejemplo, usuarios, grupos, datos, herramientas, departamento, configuración, estado de los parches): compruebe [herramientas IAM](#TODO-link-to-actual-resource), [herramientas de gestión de permisos](#TODO-link-to-actual-resource), [servicios de directorio](#TODO-link-to-actual-resource), _etc._.
        * Encuentra el comando y control externo (C2), si está presente, y encuentra otros sistemas que se conectan a él: comprueba [registros del cortafuegos o IDS](#TODO-enlace-al-recurso-real), [registros del sistema/EDR](#TODO-enlace-al-recurso-real), [registros del DNS](#TODO-enlace-al-recurso-real), [registros del netflow o del router](#TODO-enlace-al-recurso-real), _etc._.
    1. ¿Qué datos se ven afectados? (_e._, tipos de archivos, departamento o grupo, software afectado) `TODO: Especifique la(s) herramienta(s) y el procedimiento`.
        * Buscar cambios anómalos en los metadatos de los archivos, como cambios masivos en las horas de creación o modificación.  Comprobar [herramientas de búsqueda de metadatos de archivos](#TODO-link-to-actual-resource)
        * Encontrar cambios en archivos de datos normalmente estables o críticos.  Compruebe las herramientas de [supervisión de la integridad de los archivos](#TODO-link-to-actual-resource)
1. **Assess the impact** to prioritize and motivate resources
    1. Assess functional impact: impact to business or mission.
        * How much money is lost or at risk?
        * How many (and which) missions are degraded or at risk?
    1. Assess information impact: impact to confidentiality, integrity, and availability of data.
        * How critical is the data to the business/mission?
        * How sensitive is the data? (_e.g._, trade secrets)
        * What is the regulatory status of data (_e.g._, PII, PHI)
1. **Find the infection vector.** Check the tactics captured in the [Initial Access tactic](https://attack.mitre.org/tactics/TA0001/) of MITRE ATT&CK[<sup>[4]</sup>](#ransomware-playbook-ref-4).  Common specifics and data sources include:
    * email attachment: check [email logs](#TODO-link-to-actual-resource), [email security appliances and services](#TODO-link-to-actual-resource), [e-discovery tools](#TODO-link-to-actual-resource), _etc._
    * insecure remote desktop protocol (RDP): check [vulnerability scanning results](#TODO-link-to-actual-resource), [firewall configurations](#TODO-link-to-actual-resource), _etc._
    * self-propagation (worm or virus) (check [host telemetry/EDR](#TODO-link-to-actual-resource), [system logs](#TODO-link-to-actual-resource), [forensic analysis](#TODO-link-to-actual-resource), _etc._)
    * infección a través de unidades extraíbles (gusano o virus)
    * entregado por otro malware o herramienta de ataque: ampliar la investigación para incluir herramientas de ataque o malware adicionales

### Remediar

* **Planificar eventos de remediación** en los que estos pasos se pongan en marcha juntos (o de forma coordinada), con los equipos adecuados listos para responder a cualquier interrupción.
* **Considere el momento y las compensaciones** de las acciones de remediación: su respuesta tiene consecuencias.

#### Contención

Tarea: Personalizar los pasos de contención, tácticos y estratégicos, para el ransomware.

ToDo: Especificar las herramientas y los procedimientos para cada paso, a continuación.

**En situaciones de ransomware, la contención es fundamental.  Informar de las medidas de contención con los datos de la investigación.  Dé mayor prioridad a las cuarentenas y otras medidas de contención que durante una respuesta típica.**

Las cuarentenas (lógicas, físicas o ambas) impiden la propagación _desde_ los sistemas infectados y evitan la propagación _hacia_ los sistemas y datos críticos. Las cuarentenas deben ser exhaustivas: incluir el acceso a la nube/SaaS, el inicio de sesión único, el acceso a sistemas como el ERP u otras herramientas empresariales, _etc._.

* Poner en cuarentena los sistemas infectados
* Poner en cuarentena a los usuarios y grupos afectados.
* Ponga en cuarentena los archivos compartidos (no sólo los conocidos; proteja también los no infectados).
* Ponga en cuarentena las bases de datos compartidas (no sólo los servidores infectados conocidos; proteja también las bases de datos no infectadas)
* Ponga en cuarentena las copias de seguridad, si no están ya protegidas
* Bloquee los dominios y direcciones de comando y control
* Elimine los correos electrónicos vectoriales de las bandejas de entrada.
* Confirme que la protección de los puntos finales (AV, NGAV, EDR, etc.) está actualizada y activada en todos los sistemas.
* Confirmar que los parches se han desplegado en todos los sistemas (dando prioridad a los sistemas, sistemas operativos, software, etc.).
* Despliegue de firmas personalizadas en las herramientas de protección de puntos finales y de seguridad de la red basadas en los COI descubiertos.

`TODO: Considerar la posibilidad de automatizar las medidas de contención mediante herramientas de orquestación.`

#### Erradicar

Tarea: Personalizar los pasos de erradicación, tácticos y estratégicos, para el ransomware.

`ToDo: Especifique las herramientas y los procedimientos para cada paso, a continuación.`

* Reconstruir los sistemas infectados a partir de soportes conocidos y buenos.
* Restaurar a partir de copias de seguridad conocidas y limpias.
* Confirmar que la protección de los puntos finales (AV, NGAV, EDR, etc.) está actualizada y activada en todos los sistemas.
* Confirmar que los parches se despliegan en todos los sistemas (dando prioridad a los sistemas, SO, software, etc.).
* Despliegue de firmas personalizadas en las herramientas de protección de puntos finales y de seguridad de la red, basándose en los IOC descubiertos.
* **Vigilar la reinfección:** considerar el aumento de la prioridad de las alarmas/alertas relacionadas con este incidente.

#### Referencia: Recursos de remediación

`TODO: Especifique los recursos financieros, de personal y logísticos para llevar a cabo la reparación.

### Comunicar

ToDo: Personalice los pasos de comunicación para el ransomware.

Tarea: Especifique las herramientas y los procedimientos (incluyendo quién debe participar) para cada paso, a continuación, o remítase al plan general.

1. 1. Elevar el incidente y comunicarlo a la dirección según el procedimiento
1. 2. Documentar el incidente según el procedimiento
1. Comunicarse con los asesores jurídicos internos y externos según el procedimiento, incluyendo discusiones sobre el cumplimiento, la exposición al riesgo, la responsabilidad, el contacto con las fuerzas del orden, _etc._.
1. Comunicarse con los usuarios (internos)
    1. Comunicar las actualizaciones de la respuesta a incidentes según el procedimiento
    1. Comunicar el impacto del incidente **y** las acciones de respuesta a incidentes (por ejemplo, contención: "¿por qué está caído el archivo compartido?"), que pueden ser más intrusivas/perturbadoras durante los incidentes de ransomware
    1. Comunicar los requisitos: "¿qué deben hacer y no hacer los usuarios?".  Véase "Referencia: Acciones del usuario en caso de sospecha de ransomware", a continuación
1. Comunicar a los clientes
    1. Concéntrese especialmente en aquellos cuyos datos se vieron afectados
    1. Genere las notificaciones requeridas en base a las regulaciones aplicables (particularmente aquellas que puedan considerar el ransomware como una violación de datos o que de alguna manera requieran notificaciones (_e.g._, [HHS/HIPAA](https://www.hhs.gov/sites/default/files/RansomwareFactSheet.pdf)) `TODO: Ampliar los requisitos y procedimientos de notificación para las normativas aplicables`.
1. Contactar con el/los proveedor/es de seguros
    1. Discutir qué recursos pueden poner a disposición, qué herramientas y proveedores apoyan y pagarán, _etc._.
    1. Cumplir con los requisitos de presentación de informes y reclamaciones para proteger la elegibilidad
1. Comunicarse con los reguladores, incluyendo una discusión sobre los recursos que pueden poner a su disposición (no sólo una notificación de tipo repetitivo: muchos pueden ayudar activamente)
1. Considerar la posibilidad de notificar e implicar a [las fuerzas del orden](https://www.nomoreransom.org/en/report-a-crime.html)
    1. [Aplicación de la ley local](#TODO-link-to-actual-resource)
    1. 1. [Fuerzas de seguridad estatales o regionales](#TODO-link-to-actual-resource)
    1. 1. [Fuerzas de seguridad federales o nacionales](#TODO-link-to-actual-resource)
1. Comunicarse con los proveedores de seguridad y de TI
    1. Notificar y colaborar con [proveedores gestionados](#TODO-link-to-actual-resource) según el procedimiento
    1. Notificar y colaborar con [consultores de respuesta a incidentes](#TODO-link-to-actual-resource) por procedimiento

### Recuperación

`TODO: Personalizar los pasos de recuperación para el ransomware.

`TODO: Specify tools and procedures for each step, below.`

> **We do not recommend paying the ransom:** it does not guarantee a solution to the problem. It can go wrong (_e.g._, bugs could make data unrecoverable even with the key).  Also, paying proves ransomware works and could increase attacks against you or other groups.[<sup>[2, paraphrased]</sup>](#ransomware-playbook-ref-2)

1. Launch business continuity/disaster recovery plan(s): _e.g._, consider migration to alternate operating locations, fail-over sites, backup systems.
1. Recover data from known-clean backups to known-clean, patched, monitored systems (post-eradication), in accordance with our [well-tested backup strategy](#TODO-link-to-actual-resource).
    * Check backups for indicators of compromise
    * Consider partial recovery and backup integrity testing
1. Find and try known decryptors for the variant(s) discovered using resources like the No More Ransom! Project's [Decryption Tools page](https://www.nomoreransom.org/en/decryption-tools.html).
1. Considere la posibilidad de pagar el rescate por los activos/datos críticos irrecuperables, de acuerdo con la política `TODO: Ampliar y socializar esta matriz de decisión`.
    * Considerar las ramificaciones con las partes interesadas apropiadas
    * Comprender las implicaciones financieras y el presupuesto
    * Comprender las implicaciones legales, reglamentarias y de seguros
    * Comprender los mecanismos (por ejemplo, tecnologías, plataformas, proveedores intermedios/intermediarios)

### Recursos

#### Referencia: Acciones de los usuarios ante la sospecha de ransomware

`TODO: Personalizar los pasos para los usuarios ante la sospecha de ransomware`.

1. Mantenga la calma y respire profundamente.
1. Desconecte su sistema de la red `TODO: incluya pasos detallados con capturas de pantalla, una herramienta preinstalada o un script para facilitar esta tarea ("romper en caso de emergencia"), considere los interruptores de corte de red por hardware`.
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
    1. ¿Con quién más te has puesto en contacto sobre este incidente y qué les has dicho?
1. Ponte en contacto con el [servicio de ayuda](#TODO-enlace-al-recurso) y sé lo más servicial posible
1. Ten paciencia: la respuesta puede ser perturbadora, pero estás protegiendo a tu equipo y a la organización.  **Gracias.**

#### Referencia: Acciones del servicio de asistencia para un presunto ransomware

`TODO: Personalizar los pasos para el personal de la mesa de ayuda ante la sospecha de ransomware`.

1. Mantenga la calma y respire profundamente.
1. Abra un ticket para documentar el incidente, según el procedimiento `TODO: Personalizar la plantilla con las preguntas clave (ver más abajo) y el flujo de trabajo de seguimiento`.
1. Pídale al usuario que tome fotos de su pantalla usando su smartphone mostrando las cosas que notó: mensajes de rescate, archivos encriptados, mensajes de error del sistema, _etc._ Si esto es algo que notó directamente, haga lo mismo usted.
1. Toma notas sobre el problema o los problemas utilizando la aplicación de notas de voz de tu smartphone o con papel y lápiz.  2. Si se trata de un informe de usuario, haz preguntas detalladas, incluyendo
    1. ¿Qué has notado?
    1. ¿Por qué pensaste que era un problema?
    1. ¿Qué estabas haciendo en el momento en que lo detectaste?
    1. ¿Cuándo se produjo por primera vez, y con qué frecuencia desde entonces?
    1. ¿De qué redes se trata? (oficina/casa/tienda, cableada/inalámbrica, con/sin VPN, _etc._)
    1. 2. ¿De qué sistemas se trata? (sistema operativo, nombre de host, _etc._)
    1. 2. ¿De qué datos se trata? (rutas, tipos de archivos, archivos compartidos, bases de datos, software, _etc._)
    1. ¿Qué usuarios y cuentas están implicados? (directorio activo, SaaS, SSO, cuentas de servicio, _etc._)
    1. ¿A qué datos suelen acceder los usuarios implicados?
    1. ¿Con quién más has contactado acerca de este incidente y qué les has dicho?
1. Haz las preguntas de seguimiento que sean necesarias.  **Usted es el encargado de responder al incidente, contamos con usted.**
1. Obtenga información de contacto detallada del usuario (domicilio, oficina, móvil), si procede
1. Registre toda la información en el ticket, incluyendo notas manuscritas y de voz
1. Poner en cuarentena a los usuarios y sistemas afectados `TODO: Personalizar los pasos de contención, automatizar todo lo posible`.
1. Póngase en contacto con el [equipo de seguridad] (#TODO-link-to-actual-resource) y prepárese para participar en la respuesta según las indicaciones: investigación, remediación, comunicación y recuperación

#### Información adicional

1. <a name="ransomware-playbook-ref-1"></a>["Ransomware Identification for the Judicious Analyst"](https://www.gdatasoftware.com/blog/2019/06/31666-ransomware-identification-for-the-judicious-analyst), Hahn (12 Jun 2019)
1. <a name="ransomware-playbook-ref-2"></a>[No More Ransom!](https://www.nomoreransom.org) Project, including their [Crypto Sheriff](https://www.nomoreransom.org/crypto-sheriff.php?lang=en) service and their [Q&A](https://www.nomoreransom.org/en/ransomware-qa.html)
1. <a name="ransomware-playbook-ref-3"></a>[ID Ransomware](https://id-ransomware.malwarehunterteam.com/) service
1. <a name="ransomware-playbook-ref-4"></a>[MITRE ATT&CK Matrix](https://attack.mitre.org), including the [Initial Access](https://attack.mitre.org/tactics/TA0001/) and [Impact](https://attack.mitre.org/tactics/TA0040/) tactics

## Playbook: Compromiso de la cadena de suministro

**Investigar, remediar (contener, erradicar) y comunicar en paralelo.

Asigne pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es puramente secuencial. Utilice su mejor criterio.

### Investigar

Tarea: Ampliar los pasos de la investigación, incluyendo las preguntas y estrategias clave, para el compromiso de la cadena de suministro.

1. TODO

### Remediar

* **Planificar eventos de remediación** en los que estos pasos se pongan en marcha juntos (o de forma coordinada), con los equipos adecuados listos para responder a cualquier interrupción.
* **Considere el momento y las compensaciones** de las acciones de remediación: su respuesta tiene consecuencias.

#### Contención

Tarea: Personalizar los pasos de contención, tácticos y estratégicos, para el compromiso de la cadena de suministro.

TODO: Especifique las herramientas y los procedimientos para cada paso, a continuación.

*TODO

`TODO: Considerar la posibilidad de automatizar las medidas de contención mediante herramientas de orquestación.`

#### Erradicar

TODO: Personalizar los pasos de erradicación, tácticos y estratégicos, para el compromiso de la cadena de suministro.

TODO: Especificar las herramientas y los procedimientos para cada paso, a continuación.

* `TODO

#### Referencia: Recursos de remediación

`TODO: Especifique los recursos financieros, de personal y logísticos para llevar a cabo la remediación.`

### Comunicar

`TODO: Personalizar los pasos de comunicación para el compromiso de la cadena de suministro`.

###Todo: Especifique las herramientas y los procedimientos (incluyendo quién debe participar) para cada paso, a continuación, o remítase al plan general.

Además de los pasos y orientaciones generales del plan de respuesta a incidentes:

1. TODO

### Recuperación

TODO: Personalizar los pasos de recuperación para el compromiso de la cadena de suministro.

TODO: Especificar las herramientas y procedimientos para cada paso, a continuación.

Además de los pasos generales y la orientación en el plan de respuesta a incidentes:

1. TODO

### Recursos

#### Información adicional

1. <a name="supply-chain-playbook-ref-1"></a>["Title"](#TODO-url), Author Last Name (Date)

# Roles

A continuación se presentan las descripciones, los deberes y la formación para cada uno de los roles definidos en la respuesta a un incidente.

#Hacer: Personalizar los roles, las descripciones, las funciones y la formación, si es necesario.

## Estructura de los roles

* Equipo de mando
  * [Comandante de Incidentes](#role-incident-commander-ic)
  * [Comandante Adjunto de Incidentes](#role-deputy-incident-commander-deputy)
  * [Escribano](#role-scribe)
* Equipo de enlace
  * Enlace interno (#role-liaison)
  * Enlace externo
* Equipo de operaciones
  * Expertos en la materia](#role-subject-matter-expert-sme) (PYMES) para sistemas
  * PYMES para equipos/unidades de negocio
  * PYMES para las funciones ejecutivas (_e._, Legal, RRHH, Finanzas)
En el caso de incidentes complejos de mayor envergadura, la estructura de roles puede ajustarse para tener en cuenta la creación de subequipos. Para más información, lea cómo gestionamos los [incidentes complejos] (/before/complex_incidents.md).

Esta es una **estructura flexible**: cada rol no será ocupado por una persona diferente para cada incidente. Por ejemplo, en un incidente pequeño, el adjunto podría actuar como escribiente y enlace interno. La estructura es flexible y se adapta al incidente.

## Tiempos de guerra vs. Tiempos de paz

En las llamadas de respuesta a incidentes ("tiempos de guerra"), una estructura organizativa diferente anula las operaciones normales ("tiempos de paz"):

* El Jefe de incidente está al mando. Independientemente de su rango en tiempos de paz, ahora es la persona de mayor rango en la llamada, superior al director general.
* Los primeros intervinientes (las personas que actúan como primeros intervinientes de un equipo/servicio) son las personas de mayor rango de ese servicio.
* Las decisiones serán tomadas por el CI tras considerar la información presentada. Una vez tomada la decisión, es definitiva.
* El CI puede tomar decisiones más arriesgadas que las que normalmente se considerarían en tiempos de paz.
* El CI puede ir en contra de una decisión consensuada. Si se hace una encuesta, y 9/10 personas están de acuerdo pero 1 está en desacuerdo. El CI puede elegir la opción del desacuerdo a pesar del voto de la mayoría.  Aunque no esté de acuerdo, la decisión del CI es definitiva. Durante la convocatoria no es el momento de discutir con ellos.
* El CI puede utilizar un lenguaje o comportarse de una manera que usted considere grosera. Estamos en tiempos de guerra, y tienen que hacer lo que sea necesario para resolver la situación, por lo que a veces se producen groserías. Esto no es personal, y es algo que debes estar preparado para experimentar si nunca has estado en una situación de guerra.
* Es posible que el CI te pida que abandones la llamada, o incluso que te eche a la fuerza de una llamada. Esto queda a discreción del CI si considera que no estás aportando nada útil. De nuevo, esto no es personal y debes recordar que los tiempos de guerra son diferentes a los tiempos de paz.

## Papel: Todos los participantes

### Descripción

Todos los participantes en la respuesta a un incidente tienen la responsabilidad de ayudar a resolver el incidente de acuerdo con el plan de respuesta a incidentes, bajo la autoridad del Comandante de Incidentes.

### Deberes

#### Exhibir la etiqueta de la llamada

* Participar tanto en la llamada como en el chat.
* Mantenga el ruido de fondo al mínimo.
* Mantenga el micrófono silenciado hasta que tenga algo que decir.
* Identifíquese cuando entre en la llamada; diga su nombre y su función (por ejemplo, "Soy el SME del equipo x").
* Habla con claridad.
* Sea directo y objetivo.
* Mantenga conversaciones/discusiones cortas y al grano.
* Comunicar cualquier preocupación al Comandante de Incidentes (CI) en la llamada.
* Respetar las limitaciones de tiempo dadas por el Jefe de incidente.
* Si te unes a un solo canal (llamada o chat), no participes activamente, ya que provoca una comunicación inconexa.
* **Utilizar una terminología clara, y evitar acrónimos o abreviaturas. La claridad y la precisión son más importantes que la brevedad.

##### Referencia: Procedimiento común de voz

El [procedimiento de voz] estándar de la radio (https://en.wikipedia.org/wiki/Voice_procedure#Words_in_voice_procedure) **no es obligatorio**, sin embargo es posible que escuche ciertos términos (o que tenga que utilizarlos usted mismo). Las frases comunes incluyen:

* **Ack/Rog:** "He recibido y entendido"
* **Diga otra vez:** "Repita su último mensaje"
**Standby:** "Por favor, espere un momento para la siguiente respuesta"
* **Wilco:** "Cumplirá"

**No** invente nuevas abreviaturas; favorezca ser explícito sobre lo implícito.

#### Seguir al Jefe de incidente

El Jefe de incidente (IC) es el líder del proceso de respuesta al incidente.

* Siga las instrucciones del Jefe de incidente.
* No realice ninguna acción a menos que el Jefe de incidente se lo indique.
* El comandante normalmente sondeará si hay objeciones fuertes antes de asignar una acción importante. Plantee objeciones si las tiene.
* Una vez que el comandante haya tomado una decisión, sígala (incluso si no está de acuerdo).
* Responde a cualquier pregunta que te haga el comandante de forma clara y concisa.  Responder "no sé" es aceptable. No adivine.
* El comandante puede pedirte que investigues algo y que le contestes en X minutos. Esté preparado con una respuesta dentro de ese tiempo.  Pedir más tiempo es aceptable, pero proporciona al comandante una estimación.

### Formación

Lee y entiende el plan de respuesta a incidentes, incluyendo los roles y los libros de jugadas.

## Rol: Jefe de Incidentes (IC)

### Descripción

El Comandante de Incidentes (IC) actúa como la única fuente de verdad de lo que está ocurriendo y lo que va a ocurrir durante un incidente importante.  El CI es la persona de mayor rango en cualquier llamada de incidente, independientemente de su rango diario.  Es quien toma las decisiones durante un incidente; delega tareas y escucha a los expertos en la materia para resolver el incidente.  Sus decisiones como comandante son definitivas.

Su trabajo como CI es evaluar la situación, proporcionar una orientación y coordinación claras, reclutando a otros para reunir el contexto/detalles. **No realice ninguna investigación o remediación:** delegue estas tareas.

### Deberes

Resolver el incidente de la forma más rápida y segura posible utilizando el plan de respuesta a incidentes como marco: dirigir el equipo para investigar, remediar y comunicar.  Utiliza al adjunto para que te ayude, y delega en los enlaces y expertos pertinentes (PYMES) según tu criterio.

1. Ayude a preparar los incidentes,
    * Establezca canales de comunicación para los incidentes.
    * Dirigir a las personas a estos canales de comunicación cuando se produzca un incidente importante.
    * Formar a los miembros del equipo sobre cómo comunicarse durante los incidentes y formar a otros Comandantes de Incidentes.
1. Llevar los incidentes a la resolución,
    * Conseguir que todo el mundo esté en el mismo canal de comunicación.
    * Recoger información de los miembros del equipo sobre el estado de sus servicios/área de propiedad.
    * Recoger las acciones de reparación propuestas, y luego recomendar las acciones de reparación a realizar.
    * Delegar todas las acciones de reparación, el Comandante de Incidentes NO es un solucionador.
    * Ser la única autoridad sobre el estado del sistema.
1. Facilitar las llamadas y reuniones,
    * Conseguir el consenso (sondear durante una decisión)
    * Proporcionar actualizaciones de estado
    * Reducir el alcance (despedir a los asistentes cuando sea posible)
    * Separar los sub-equipos
    * Transferir el mando cuando sea necesario
    * Firmar las convocatorias
    * Mantener el orden
    * Obtener respuestas directas
    * Manejar la acción ejecutiva, como por ejemplo
        * Anular al Comandante de Incidentes
        * Anti-motivación
        * Solicitudes de información
        * Cuestionar la gravedad
    * Manejar respondedores disruptivos o beligerantes
1. Post Mortem,
    * Crear la plantilla inicial justo después del incidente para que la gente pueda poner sus pensamientos mientras está fresca.
    * Asignar la autopsia después de que el evento haya terminado, esto se puede hacer después de la llamada.
    * Trabajar con los Jefes de Equipo/Gestores en la programación de acciones preventivas.

El Comandante de Incidentes utiliza algunos procedimientos y jerga de llamada adicionales:

* Anuncie siempre cuando se incorpore a la llamada si es el CI de guardia.
* No deje que las discusiones se vayan de las manos. Mantenga las conversaciones breves.
* Tome nota de las objeciones de los demás, pero su llamada es definitiva.
* Si alguien interrumpe activamente la llamada, échalo.
* Anuncia el final de la llamada.
* Después de un incidente, comuníquese con otros Comandantes de Incidentes en formación sobre cualquier acción de informe que considere necesaria.

**Utilice una terminología clara y evite los acrónimos o las abreviaturas. La claridad y la precisión son más importantes que la brevedad.**

### Formación

* Leer el plan de respuesta a incidentes, incluyendo todos los roles y libros de juego.
* Participar en un ejercicio de respuesta a incidentes.
* Siga a un comandante de incidentes actual sin participar activamente, manteniendo sus preguntas hasta el final.
* Seguir de cerca a un comandante de incidentes actual.  Responder a incidentes con el actual CI para tomar el relevo si es necesario.
* _OPCIONAL:_ formación de facilitación
* _OPCIONAL:_ Consulte [El personal de respuesta a incidentes como facilitador (y terapeuta)](#FIX) y el [Entrenamiento del Comandante de Incidentes de PagerDuty](https://response.pagerduty.com/training/incident_commander/) para obtener más ideas y discusiones.

#### Requisitos previos

No hay requisitos previos de antigüedad o de unidad de negocio para convertirse en Comandante de Incidentes, es un papel abierto a cualquier persona con la formación y la capacidad.  Para poder ser Comandante de Incidentes, se espera que cumpla los siguientes criterios:

* Excelente capacidad de **comunicación verbal y escrita**.
* **Conocimiento de alto nivel** de la infraestructura y las funciones empresariales.
* Excelente pensamiento crítico, juicio y toma de decisiones.
* Flexibilidad y capacidad para **escuchar las opiniones de los expertos**, modificando los planes en caso necesario.
* Participación en al menos dos respuestas a incidentes.
* Gravedad, capacidad para "tomar el mando" y "voluntad de expulsar a la gente de una llamada" para eliminar las distracciones, incluso si se trata del director general.

No se requieren conocimientos técnicos profundos.  Los Comandantes de Incidentes no requieren un profundo conocimiento técnico de nuestros sistemas. Su trabajo como Comandante de Incidentes es coordinar la respuesta, no hacer cambios técnicos. No pienses que no puedes ser un Comandante de Incidentes sólo porque no estás en el departamento de ingeniería.

#### Graduación

Una vez completada la formación, añádase a la lista de Comandantes de Incidentes.

## Rol: Jefe Adjunto de Incidentes (Adjunto)

### Descripción

Un Comandante Adjunto de Incidentes (Deputy) es una función de apoyo directo al Comandante de Incidentes (IC). El adjunto permite al CI centrarse en el problema que tiene entre manos, en lugar de preocuparse por documentar los pasos o controlar los temporizadores. El adjunto apoya al CI y lo mantiene centrado en el incidente.  Como adjunto, se espera que asuma el mando del CI si éste lo solicita.

### Funciones

1. Plantear al Comandante de Incidentes cuestiones que, de otro modo, podrían no abordarse (vigilar los temporizadores que se han puesto en marcha, dar vueltas a los elementos que se han perdido al pasar lista, etc.).
1. 1. Ser un Comandante de Incidentes "de reserva", en caso de que el comandante principal tenga que hacer la transición a un SME, o tenga que alejarse de la función de CI.
1. 1. Gestionar la llamada del incidente y estar preparado para retirar a las personas de la llamada si así lo indica el Jefe de incidente.
1. Supervisar el estado del incidente y notificar al CI si el nivel de gravedad del incidente aumenta.
1. Supervise los temporizadores:
    * controlar el tiempo que ha durado el incidente
    * Notificar al CI cada X minutos para que pueda tomar medidas (por ejemplo, "CI, el incidente está ahora en la marca de 10 minutos").
1. Supervisar los plazos de las tareas (p. ej., "CI, avisa de que el temporizador de la investigación de [EQUIPO] se ha agotado").

### Formación

* Leer y comprender el plan de respuesta a incidentes, incluyendo los roles y los libros de jugadas.

#### Requisitos previos

* Estar entrenado como [Comandante de Incidentes](#role-incident-commander-ic).

## Rol: Escribano

### Descripción

Un escriba documenta la línea de tiempo de un incidente a medida que progresa, y se asegura de que todas las decisiones y datos importantes sean capturados para su posterior revisión.  El escriba debe centrarse en el archivo del incidente, así como en los elementos de seguimiento para una acción posterior.

### Funciones

1. Asegurarse de que la llamada del incidente se está grabando.
1. 2. Anotar en el chat y en la línea de tiempo del expediente: los datos, eventos y acciones importantes, a medida que se producen. Específicamente:
    * Acciones clave a medida que se llevan a cabo
    * Informes de estado cuando el CI los proporcione
    * Cualquier llamada clave durante la llamada o en la revisión final
1. Actualice el chat indicando quién es el CI, quién es el adjunto y que usted es el escribiente (si no lo ha hecho ya).

Escribir es más un arte que una ciencia. El objetivo es mantener un registro preciso de los eventos importantes que ocurrieron, Usa tu juicio y experiencia. Pero aquí hay algunas cosas generales que definitivamente querrás capturar como escribiente.

* El resultado de cualquier decisión de la votación.
### Cualquier elemento de seguimiento que se llame como "Deberíamos hacer esto..", "¿Por qué no se hizo esto?", etc.

### Formación

Lea y comprenda el plan de respuesta a incidentes, incluyendo los roles y los libros de jugadas.

#### Requisitos previos

* Excelentes habilidades de **comunicación verbal y escrita**.
* Cualquiera puede actuar como escribiente durante un incidente, y son elegidos por el Comandante de Incidentes al inicio de la llamada.
* Normalmente, el ayudante actuará como escribiente.

#### Proceso de formación

* Lea el plan de respuesta a incidentes, incluyendo todos los roles y libros de jugadas.
* _OPCIONAL:_ Paralizar las acciones de un escriba durante un incidente o ejercicio, y buscar la opinión del escriba real y del Comandante de Incidentes.

## Rol: Experto en la materia (SME)

### Descripción

Un experto en la materia (SME) es un experto en el dominio o propietario designado de un equipo, componente o servicio (un "área").  Está ahí para apoyar al comandante de incidentes en la identificación de la causa del incidente, sugiriendo y evaluando las acciones de investigación, remediación y comunicación, y realizando el seguimiento de las mismas según se le encomiende.

### Funciones

1. Diagnosticar problemas comunes dentro de su área de experiencia.
1. 2. Solucionar rápidamente los problemas detectados durante un incidente.
1. Comunicación concisa:
    * Estado: ¿Cuál es el estado actual de la zona? ¿Es saludable o no?
    * Acciones: ¿Qué medidas hay que tomar si su zona no se encuentra en un estado saludable?
    * Necesidades: ¿Qué apoyo necesita para realizar una acción?
1. Participar en las fases de investigación, remediación y/o comunicación de la respuesta.
1. Anuncie todas las sugerencias al Jefe de incidente, es su decisión cómo proceder, no siga ninguna acción a menos que se le indique.

Si está de guardia para cualquier equipo, puede ser llamado para un incidente y se espera que responda como experto en la materia (SME) para su equipo, componente o servicio.  Cualquiera que se considere un "experto en la materia" puede actuar como SME para un incidente. Por lo general, el principal de guardia del equipo actuará como SME para ese equipo.

#### Prepárese para el período de guardia

1. Esté preparado, habiéndose familiarizado ya con nuestras políticas y procedimientos de respuesta a incidentes.
1. Asegúrese de haber configurado sus métodos de alerta de acuerdo con nuestro procedimiento de guardia.
1. Compruebe que puede unirse a la llamada de incidentes. Es posible que tenga que instalar un plugin para el navegador.
1. Tenga en cuenta su próximo tiempo de guardia y organice los cambios en función de los viajes, las vacaciones, las citas, etc.
1. Si es comandante de incidentes, asegúrese de no estar de guardia para su equipo al mismo tiempo que está de guardia como comandante de incidentes.

#### Durante el período de guardia

1. Tenga su ordenador portátil e Internet con usted en todo momento durante su período de guardia (oficina, casa, un MiFi, un teléfono con un plan de anclaje, etc.).
1. Si tienes citas importantes, debes conseguir que otra persona de tu equipo cubra esa franja horaria con antelación.
1. Cuando recibas una alerta de incidente, se espera que te unas a la llamada de incidente y chatees lo antes posible (en cuestión de minutos).
1. El Jefe de incidente le hará preguntas o le dará acciones. Responda a las preguntas de forma concisa y siga todas las acciones indicadas (incluso si no está de acuerdo con ellas).
1. Si no está seguro de algo, traiga a otras personas de su equipo que puedan ayudarle.  **Nunca dudes en escalar**, si es necesario.
1. No culpes.  Este proceso de respuesta a incidentes no tiene ninguna culpa: culpar es contraproducente y distrae del problema en cuestión.  La revisión posterior a la acción identificará los puntos en los que todos podemos mejorar.

### Formación

## Leer y comprender el plan de respuesta a incidentes, incluyendo los roles y los libros de jugadas.

## Rol: Enlace

### Descripción

Los enlaces interactúan con otros equipos o partes interesadas, fuera del equipo de respuesta a incidentes.  Estos suelen incluir:

* Enlace externo: responsable de interactuar con los clientes, ya sea directamente, o a través de la comunicación pública.
* Enlace interno: responsable de interactuar con las partes interesadas internas. Ya sea notificando el incidente a un equipo interno, o movilizando a personal de respuesta adicional dentro de la organización.

### Funciones

#### Enlace externo o con el cliente

1. Publicar cualquier mensaje de cara al público en relación con el incidente (Twitter, etc.).
1. 2. Notificar al CI cualquier cliente o cobertura de los medios de comunicación que informen de los efectos del incidente.
1. Proporcionar a los clientes el mensaje externo de la autopsia una vez que se haya completado.
1. Ponerse en contacto o interactuar con las partes interesadas externas, como proveedores, socios, fuerzas de seguridad, _etc._.
1. **No** te sientas responsable de crear todos los mensajes: trabaja con el Jefe de incidente y con otras partes interesadas.
1. Según proceda, mantenga a los clientes informados durante un incidente.
1. Actuar como voz de nuestros clientes ante el Comandante de Incidentes, ya que esto es útil para la toma de decisiones del CI.
1. Obtener la aprobación del mensaje después de haber elaborado el mensaje público: copie el mensaje en el chat y espere la confirmación verbal/escrita del CI antes de continuar.

##### Consejos para los mensajes públicos

* Prepare un mensaje por defecto de antemano que pueda utilizarse para la actualización inicial si se desconoce el alcance del asunto.
* Sea honesto. No mienta ni adivine.
* Describa nuestro progreso en la resolución del incidente.
  * _"Somos conscientes de un incidente..."_
  * _"Estamos investigando las notificaciones retrasadas..."_
  * _"Se ha aplicado una solución y se está desplegando..."_
  * _"El problema se ha resuelto..."_
* Sea claro sobre cómo afecta la incidencia a los clientes. Esta es la información principal que les interesa a los clientes.
* Proporcione soluciones que los clientes puedan utilizar hasta que se resuelva la incidencia.
* No estime los tiempos de resolución.
* Proporcione el nivel de detalle adecuado.

#### Enlace interno

1. Llame a los SME u otro personal de guardia según las instrucciones del Jefe de incidente.
1. Notifique o movilice a otros equipos de la organización (por ejemplo, Finanzas, Legal, Marketing), según las instrucciones del Jefe de incidente.
1. Seguir y anticiparse a las PYMES en la llamada.
1. 2. Interactuar con las partes interesadas y proporcionar actualizaciones de estado según sea necesario.
1. Interactuar con las partes interesadas internas para responder a sus preguntas, para mantener la llamada principal libre de distracciones.
1. Proporcionar actualizaciones periódicas de la situación al equipo ejecutivo, ofreciendo un resumen ejecutivo de la situación actual.

### Formación

Leer y comprender el plan de respuesta a incidentes, incluidos los roles y los libros de jugadas.

#### Requisitos previos

* Excelentes habilidades de **comunicación verbal y escrita**.
* _OPCIONAL:_ Formación en atención al cliente.
* _OPCIONAL:_ Formación en comunicación corporativa o marketing.

# Llevar a cabo una revisión posterior a la acción (AAR)

1. Programe una reunión de revisión posterior a la acción (AAR) dentro de {{AAR_SLA}} e invite a los asistentes que figuran en {{AAR_ATTENDEES}}.  Incluya siempre a los siguientes:
    * El Jefe de incidente.
    * Los propietarios de los servicios implicados en el incidente.
    * Ingeniero(s)/responsable(s) clave involucrados en el incidente.
1. Designe a un propietario del AAR que investigue el incidente antes de la reunión para prepararlo, estudiando el proceso del incidente en sí, incluida la revisión de notas e informes.

## 2. Llevar a cabo la reunión AAR

Documente las respuestas a las siguientes preguntas clave:

1. **Crear una línea de tiempo, apoyada con datos u otros artefactos. **Evitar la culpa. Encuentra los hechos.**
1. **¿Qué se suponía que iba a ocurrir?**
    * Detallar las desviaciones del proceso, procedimiento o mejor práctica, incluyendo las evaluaciones de las PYMES.
    * Identificar las formas en que el incidente podría haberse detectado antes, o haber respondido con mayor eficacia.
1. **¿Qué causas fundamentales se han producido?**
1. **¿Cómo podemos mejorar?** Capturar los elementos de acción _con asignados y fechas de vencimiento_.  Considerar:
    * Detener: ¿qué deberíamos dejar de hacer?
    * Empezar: ¿qué deberíamos empezar a hacer?
    * Continuar: ¿qué debemos seguir haciendo?

## Communicate AAR Status and Results

The AAR owner, in coordination with the Internal Liaison, will communicate the status of the AAR (see below)

### Status Descriptions

| Status | Description |
|-|-|
| **Draft** | AAR investigation is still ongoing |
| **In Review** | AAR investigation has been completed, and is ready to be reviewed during the AAR meeting. |
| **Reviewed** | AAR meeting is over and the content has been reviewed and agreed upon.<br>If there are additional "External Messages", the communications team will take action to prepare. |
| **Closed** | No further actions are needed on the AAR (outstanding issues are tracked in tickets).<br>If no "External Messages", skip straight to this once the meeting is over.<br>If there are additional "External Messages", communications team will update AAR Closed once sent. |

Communicate the results of the AAR internally and finalize the AAR documentation.

# About

This template was developed by the team at [Counteractive Security](https://www.counteractive.net), to help all organizations get a good start on a concise, directive, specific, flexible, and free incident response plan.  Build a [plan you will actually use](https://www.counteractive.net/posts/an-ir-plan-you-will-use/) to respond effectively, minimize cost and impact, and get back to business as soon as possible.

## Licencia

Esta plantilla se proporciona bajo la Licencia Apache, versión 2.0.  Puede ver el código fuente de este plan en https://github.com/counteractive.

## Instrucciones

Personalice esta plantilla de plan para su propia organización.  Las instrucciones están disponibles en el [README] del proyecto (https://github.com/counteractive).  Para obtener asistencia profesional con la respuesta a incidentes, o con la personalización, implementación o prueba de su plan, póngase en contacto con nosotros por [correo electrónico](mailto:support@counteractive.net) o [teléfono](tel:+18889255765).

## Referencias y lecturas adicionales

* [NIST Computer Security Incident Handling Guide](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-61r2.pdf) (NIST)
* [CERT Societe Generale Incident Response Methodologies](https://github.com/certsocietegenerale/IRM/tree/master/EN)
* [NIST Cybersecurity Framework](https://www.nist.gov/cyberframework)
* [Incident Handler's Handbook](https://www.sans.org/reading-room/whitepapers/incident/incident-handlers-handbook-33901) (SANS)
* [Responding to IT Security Incidents](https://technet.microsoft.com/en-us/library/cc700825.aspx) (Microsoft)
* [Defining Incident Management Processes for CSIRTs: A Work in Progress](http://resources.sei.cmu.edu/library/asset-view.cfm?assetid=7153) (CMU)
* [Creating and Managing Computer Security Incident Handling Teams (CSIRTS)](https://www.first.org/conference/2008/papers/killcrece-georgia-slides.pdf) (CERT)
* [Incident Management for Operations](http://shop.oreilly.com/product/0636920036159.do) (Rob Schnepp, Ron Vidal, Chris Hawley)
* [_Incident Response & Computer Forensics, Third Edition_](http://a.co/cUkFzMh) (Jason Luttgens. Matthew Pepe. Kevin Mandia)
* [_Incident Response_](http://shop.oreilly.com/product/9780596001308.do) (Kenneth R. van Wyk, Richard Forno)
* [The Checklist Manifesto](http://atulgawande.com/book/the-checklist-manifesto/) (Atul Gawande)
* [The Field Guide to Understanding Human Error](https://www.amazon.com/Field-Guide-Understanding-Human-Error/dp/0754648265) (Sidney Dekker)
* [Normal Accidents: Living with High-Risk Technologies](https://www.amazon.com/Normal-Accidents-Living-High-Risk-Technologies/dp/0691004129) (Charles Perrow)
* [Site Reliability Engineering](https://landing.google.com/sre/book.html) (Google)
* [Debriefing Facilitation Guide](http://extfiles.etsy.com/DebriefingFacilitationGuide.pdf) (Etsy)
* [Every Minute Counts: Leading Heroku's Incident Response](https://www.heavybit.com/library/video/every-minute-counts-coordinating-herokus-incident-response/) (Blake Gentry)
* [Three Analytical Traps in Accident Investigation](https://www.youtube.com/watch?v=TqaFT-0cY7U) (Dr. Johan Bergström)
* [US National Incident Management System (NIMS)](https://www.fema.gov/national-incident-management-system) (FEMA)
* [Informed's NIMS Incident Command System Field Guide](https://www.amazon.com/gp/product/1284038408) (Michael J. Ward)
* [Advanced PostMortem Fu and Human Error 101 (Velocity 2011)](http://www.slideshare.net/jallspaw/advanced-postmortem-fu-and-human-error-101-velocity-2011)
* [Blame. Language. Sharing.](http://fractio.nl/2015/10/30/blame-language-sharing/)

