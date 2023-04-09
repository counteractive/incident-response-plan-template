
## Playbook: Desaparición de sitios web

**Investigar, remediar (contener, erradicar) y comunicar en paralelo!**
Asigne los pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es puramente secuencial. Utilice su mejor criterio.

### Investigar

1. Desconecte inmediatamente el servidor desconfigurado para investigarlo.
    * Esto es especialmente importante si la desfiguración es insultante o provocadora de algún modo. Elimine esto de la vista del público tan pronto como sea posible para evitar daños, así como para mitigar el impacto del negocio.
    * El mensaje de desfiguración también puede contener información falsa que podría confundir a los usuarios o ponerlos en peligro.
    * Desconectar el servidor permitirá una investigación más profunda de la desfiguración. Esto puede ser necesario, ya que el ciberdelincuente puede haberse adentrado en la organización accediendo a servidores de aplicaciones, bases de datos, etc.
2. Determine el origen de la vulnerabilidad del sistema que ha utilizado el atacante. Los exploits más comunes son:
    * Ataques de inyección SQL
        * Este tipo de ataque se produce cuando un atacante interfiere en las consultas de una aplicación a la base de datos. Por lo tanto, esto puede conducir a un acceso no autorizado a datos privados o sensibles. Lea más sobre los ataques de inyección SQL [aquí](https://www.acunetix.com/websitesecurity/sql-injection/)
    * Ataques de inclusión remota de archivos (RFI)
        * Este tipo de ataque explota la función de referencia de una aplicación para cargar malware desde una URL remota. Más información sobre los ataques RFI [aquí](https://www.acunetix.com/blog/articles/remote-file-inclusion-rfi/)
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
3. Recoge cualquier pista sobre quién es el ciberdelincuente o para qué organización trabaja. Considera las siguientes preguntas:
    * ¿Qué representa la desfiguración? ¿Incluía un mensaje obvio?
    * ¿Parece que la desfiguración es inofensiva o intencionada? ¿Podría ser el ciberdelincuente un niño jugando o un grupo profesional que trabaja con un motivo?
    * ¿Parece que su organización haya sido el objetivo? ¿Quién podría querer atacar a su organización?
    * ¿Qué esperaba conseguir el ciberdelincuente?
    * Consulta [aquí](https://www.geeksforgeeks.org/types-of-hackers/) para saber más sobre los tipos de ciberdelincuentes que pueden haber atacado tu página web.
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

### Remediar

**Planificar eventos de reparación** en los que estos pasos se pongan en marcha juntos (o de forma coordinada), con los equipos adecuados listos para responder a cualquier interrupción.
* **Considere el momento y las compensaciones** de las acciones de remediación: su respuesta tiene consecuencias.

#### Contención

1. Haga una copia de seguridad de todos los datos almacenados en el servidor web con fines forenses.
2. Como se ha mencionado anteriormente, asegúrese de que el servidor de la página desfigurada está temporalmente fuera de servicio mientras se lleva a cabo la investigación.
    * Debe tener una página de error preparada para esta situación que informe al usuario y/o a los empleados de que el mantenimiento está en marcha y que la página que buscaban volverá en breve. Incluso podría tener preparada una página web de respaldo en la que pueda publicar contenido mientras se lleva a cabo la investigación y la reparación, y hacer que su página de error temporal redirija a los usuarios a este sitio de respaldo. 
    * Compruebe su mapa de arquitectura de red. Si la brecha es otro sistema de la red, descárguelo e investíguelo.
3. Una vez que se haya determinado el origen del ataque, aplique los pasos necesarios para garantizar que esto no vuelva a suceder. Esto puede incluir la modificación del código o la edición de los derechos de acceso.
    * Consulte la sección "Investigar" para conocer las fuentes comunes de vulnerabilidad.
    * Si esto está fuera de su dominio, simplemente asegúrese de que ha dado al personal apropiado toda la información sobre el ataque que tiene y permita que los expertos hagan su trabajo.


### Recover

1. Elimine el mensaje del ciberdelincuente y reemplácelo por el contenido original y legítimo. Si se han perdido datos en el ataque, consulte las copias de seguridad y restaure la página original en la medida de lo posible.
    * Compruebe las copias de seguridad en busca de indicadores de compromiso
    * Considere la recuperación parcial y la prueba de integridad de las copias de seguridad
2. Considere pedir a los usuarios que cambien sus credenciales de acceso si el servidor web tiene autenticación de usuario. 
3. Después de aplicar las medidas para evitar riesgos (como se recomienda a continuación), restaure su servidor mostrando el contenido original de la página. 
4. Si es necesario y/o aplicable, prepare una disculpa/explicación del ataque ocurrido para los usuarios o cualquier persona que haya presenciado la desfiguración. Asegúrese de que queda claro que el contenido desfigurado no refleja a su organización de ninguna manera. 

#### Evitar riesgos

1. Utilice el menor número de plug-ins posible. Los piratas informáticos tienen como objetivo los sitios web que son vulnerables y tienen muchas fuentes de entrada. Puedes limitar estas fuentes de entrada utilizando sólo lo que necesites y eliminando los plug-ins y el software que no utilices o sean antiguos. También es importante actualizarlos lo antes posible. 
2. Controle de cerca y ordene el acceso a los contenidos administrativos. Permita que las personas accedan sólo a lo que necesitan. Esto reducirá la posibilidad de que un error humano provoque un ciberataque. Hay más métodos de prevención DIY mencionados en [este artículo](https://cirt.gy/index.php/node/116) (pasos 6-12) y en el recurso #4 al final de este playbook.
3. Comprueba regularmente si hay malware en tu sitio web escaneando el código fuente. Busca scripts, iframes o URLs que te parezcan desconocidos y asegúrate de escanear también las URLs que sí te resulten familiares.
4. Hay muchos escáneres automáticos de sitios web de gran reputación que no le costarán nada de su tiempo y escanearán a fondo su sitio en busca de vulnerabilidades con regularidad. Aquí hay un [enlace a escáneres populares](https://resources.infosecinstitute.com/14-popular-web-application-vulnerability-scanners/#gref).
5. Defiéndase contra los puntos comunes de explotación, como las inyecciones SQL y los ataques XSS. [Este artículo](https://www.banffcyber.com/knowledge-base/articles/best-practices-address-issue-web-defacement/) incluye las mejores prácticas para defender estos ataques.
6. Instala programas de detección de desfiguración para que, si volviera a producirse un ataque, estés preparado y respondas rápidamente. Aquí hay un [artículo](https://www.techradar.com/news/best-website-defacement-monitoring-service) que resume algunos de los mejores servicios de monitoreo de 2020. 
7. Habla con tus empleados de la importancia de mantener el acceso administrativo limitado y confidencial e infórmales de estos pasos para evitar incidentes, incluyendo la formación periódica de concienciación sobre ciberseguridad.

#### Referencia: Recursos de remediación

### Comunicar

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
1. Comuníquese con los proveedores de seguridad y de TI `TODO: Vincule las siguientes viñetas con los recursos reales de su organización`
    1. Notifique y colabore con [proveedores gestionados](#TODO-link-to-actual-resource) según el procedimiento
    1. 2. Notificar y colaborar con [consultores de respuesta a incidentes](#TODO-link-to-actual-resource) por procedimiento

### Recursos

#### Referencia: Acciones del usuario ante un ataque de sospecha de defacement

1. Mantenga la calma y respire profundamente.
1. 2. Desconecte su sistema de la red.
1. Haz fotos de la página que veas con tu smartphone mostrando las cosas que has notado: el mensaje de desfiguración y cualquier otro cambio en el sitio habitual.
1. 2. Toma notas sobre el problema o los problemas utilizando la aplicación de notas de voz de tu smartphone o con papel y lápiz.  Todo ayuda.  Documenta lo siguiente:
    1. ¿Qué has notado?
    1. ¿Cuándo ocurrió por primera vez, y con qué frecuencia desde entonces?
    1. ¿A qué datos suele acceder?
    1. ¿Con quién más se ha puesto en contacto en relación con este incidente y qué le ha dicho?
1. Ponte en contacto con el [servicio de asistencia](#TODO-enlace-al-recurso) y sé lo más servicial posible.
1. Ten paciencia: deja que el personal informático lo controle, ¡puedes estar protegiendo a otros de un daño!  **Gracias.**

#### Referencia: Acciones del Help Desk ante un presunto ataque de defacement

1. Mantenga la calma y respire profundamente.
1. Abra un ticket para documentar el incidente, según el procedimiento. `TODO: Personalizar la plantilla con las preguntas clave (véase más abajo) y el flujo de trabajo posterior`
1. Utiliza tu mejor criterio para decidir qué pasos priorizar (por ejemplo, si la desfiguración dejó contenido dañino o desencadenante, prioriza la retirada del servidor inmediatamente).
1. Pídele al usuario que tome fotos de su pantalla con su teléfono inteligente mostrando las cosas que notó.
1. Toma notas sobre el problema o los problemas utilizando la aplicación de notas de voz de tu smartphone o con papel y lápiz.  2. Si se trata de un informe de usuario, haga preguntas detalladas, incluyendo
       1. ¿Qué has notado?
    1. ¿Cuándo ocurrió por primera vez, y con qué frecuencia desde entonces?
    1. ¿A qué datos suele acceder?
    1. ¿Con quién más se ha puesto en contacto en relación con este incidente y qué le ha dicho?
1. Haga las preguntas de seguimiento que sean necesarias.  **Usted es una persona que responde al incidente, contamos con usted.**
1. Obtenga información de contacto detallada del usuario (domicilio, oficina, móvil), si procede.
1. Registre toda la información en el ticket, incluyendo notas manuscritas y de voz.
1. Ponga en cuarentena a los usuarios y sistemas afectados.
1. Póngase en contacto con el [equipo de seguridad] (#TODO-link-to-actual-resource) y prepárese para participar en la respuesta según las indicaciones: investigación, reparación, comunicación y recuperación.

#### Información adicional
1. <a name="defacement-playbook-ref-1"></a>Un útil y detallado [paper](https://pdfs.semanticscholar.org/899e/2d629e06d920b9059edb21fcb52cdb33f783.pdf) sobre la detección de la desfiguraciónw
2. <a name="defacement-playbook-ref-2"></a>10 herramientas para[better website monitoring and security](https://geekflare.com/website-defacement-monitoring/)
3. <a name="defacement-playbook-ref-3"></a>[2019 Website Threat Research Report](https://sucuri.net/reports/2019-hacked-website-report/) con estadísticas útiles
4. <a name="defacement-playbook-ref-4"></a>[Article](https://www.imperva.com/learn/application-security/website-defacement-attack/) incluyendo bricolaje y mejores prácticas para evitar la desfiguración de sitios web
