# Playbook: Abuso en el acceso de privilegios

## Identificar el ataque

Cuando se sabe que el ataque fue el resultado de un abuso de privilegios para el acceso a los datos, el equipo de seguridad debe centrar sus esfuerzos en identificar la fuente de la infracción y el alcance del daño. Esto puede incluir el análisis de registros de acceso y la identificación de patrones sospechosos de comportamiento. También es importante notificar a los usuarios afectados y a los organismos reguladores correspondientes según las normativas vigentes.

-  Revisión de los registros de acceso: En primer lugar, es importante revisar los registros de acceso para identificar patrones de comportamiento inusual o sospechoso. Esto puede ayudar a identificar la fuente del ataque y el alcance del daño.

- Notificación de usuarios afectados: Es importante notificar a los usuarios afectados por el ataque lo antes posible. Esto puede ayudar a minimizar el daño y permitir que los usuarios tomen medidas para proteger sus datos personales.

- Notificación a organismos reguladores: Según las normativas del pais, es posible que se deba notificar a los organismos reguladores correspondientes sobre el ataque. Esto puede incluir la presentación de informes detallados sobre el incidente y las medidas que se han tomado para contener el ataque y proteger los datos de la empresa y los usuarios.

## Contención

Una vez que se ha identificado la fuente del ataque, el equipo de seguridad debe tomar medidas para contener el mismo. Esto puede incluir la suspensión de las cuentas comprometidas, el bloqueo del acceso a los sistemas afectados y la desconexión de los dispositivos infectados de la red para evitar la propagación del malware. Si es necesario, se debe considerar el apoyo de las autoridades competentes para asegurar la contención del ataque.

- Suspensión de cuentas comprometidas: Es importante suspender las cuentas comprometidas para evitar que se utilicen para acceder a los datos o sistemas afectados.

- Bloqueo del acceso a los sistemas afectados: Para evitar que el atacante pueda acceder a los sistemas afectados, es importante bloquear el acceso a los mismos. Esto puede incluir el bloqueo de puertos de red y la desactivación de cuentas de usuario.

- Desconexión de dispositivos infectados: Si se ha detectado que algún dispositivo está infectado con malware, es importante desconectar el dispositivo de la red para evitar que el malware se propague a otros dispositivos.

- Apoyo de autoridades competentes: Si es necesario, se debe considerar el apoyo de las autoridades competentes para asegurar la contención del ataque. Esto puede incluir la participación de expertos en seguridad informática, la coordinación con las fuerzas del orden y la implementación de medidas legales para proteger los datos de la empresa y los usuarios afectados.

## Investigación

Con el ataque contenido, el equipo de seguridad debe llevar a cabo una investigación exhaustiva para determinar la naturaleza del ataque, la forma en que se llevó a cabo y el alcance de los datos comprometidos. Esto puede incluir la revisión de registros de acceso, la identificación de vectores de ataque y la realización de entrevistas con el personal involucrado. Es importante tener en cuenta que esta etapa debe ser cuidadosa y rigurosa, ya que los resultados de la investigación serán críticos para la identificación de posibles vulnerabilidades y la implementación de medidas de seguridad preventivas.

-  Análisis de registros de acceso: Durante la investigación, es importante analizar los registros de acceso para identificar la fuente del ataque y los sistemas afectados. Esto puede ayudar a identificar posibles vulnerabilidades y áreas de mejora en la seguridad de los sistemas de la empresa.

- Identificación de vectores de ataque: Para comprender mejor cómo se llevó a cabo el ataque, es importante identificar los vectores de ataque utilizados por el atacante. Esto puede incluir el análisis de correo electrónico, la identificación de malware y la revisión de registros de actividad de red.

- Entrevistas con personal involucrado: En algunos casos, puede ser necesario entrevistar al personal involucrado en el ataque para comprender mejor cómo se llevó a cabo el ataque. Esto puede ayudar a identificar posibles debilidades en la política de seguridad de la empresa y mejorar los protocolos de seguridad para prevenir futuros ataques.

## Recuperación

Una vez que se han identificado los sistemas infectados y los datos comprometidos, se deben tomar medidas para la restauración de los sistemas afectados. Esto puede incluir la restauración de copias de seguridad de los datos afectados, la reinstalación de sistemas operativos o aplicaciones, y la implementación de parches de seguridad. Es importante destacar que antes de la recuperación, el equipo de seguridad debe asegurarse de que el problema que permitió el abuso de privilegios haya sido resuelto

- Gestión de los derechos de acceso asignados a usuarios: Se debería de implantar un proceso formal de aprovisionamiento de accesos a los usuarios para asignar o revocar derechos de acceso a todos los tipos de usuarios y para todos los sistemas y servicios.

- Gestión de altas/bajas en el registro de usuarios: Debería existir un procedimiento formal de alta y baja de usuarios con objeto de habilitar la asignación de derechos de acceso.

- Gestión de información confidencial de autenticación de usuarios: La asignación de información confidencial para la autenticación debería ser controlada mediante un proceso de gestión controlado.

- Gestión de contraseñas de usuario: Los sistemas de gestión de contraseñas deberían ser interactivos y asegurar contraseñas de calidad.

- Control de acceso al código fuente de los programas: Se debería restringir el acceso al código fuente de las aplicaciones software

- Restauración de copias de seguridad: Durante la recuperación, es importante restaurar las copias de seguridad de los datos afectados para minimizar la pérdida de datos valiosos.

- Reinstalación de sistemas operativos o aplicaciones: Si es necesario, se deben reinstalar los sistemas operativo.

- Implementación de medidas de seguridad adicionales: Es importante implementar medidas de seguridad adicionales para prevenir futuros ataques. 

- Evaluación del daño y los costos: Durante la recuperación, es importante evaluar el daño causado por el ataque y los costos asociados. Esto puede incluir el costo de la recuperación, la pérdida de ingresos y la posible disminución de la reputación de la empresa.

- Comunicación con usuarios y partes interesadas: Es importante comunicarse con los usuarios y partes interesadas sobre el incidente y las medidas que se han tomado para prevenir futuros ataques. Esto puede ayudar a restaurar la confianza en la empresa y minimizar el impacto del ataque.

- Reevaluación de la política de seguridad: Finalmente, es importante reevaluar la política de seguridad de la empresa para asegurar que esté actualizada y sea efectiva. Esto puede incluir la implementación de medidas de seguridad adicionales y la capacitación del personal sobre las mejores prácticas de seguridad.

## Herramientas

- [BloodHound](https://github.com/BloodHoundAD/BloodHound): Utiliza la teoría de gráficos para revelar las relaciones ocultas y a menudo involuntarias dentro de un entorno de Active Directory. Los atacantes pueden usar BloodHound para identificar fácilmente rutas de ataque altamente complejas que de otro modo serían imposibles de identificar rápidamente. Los defensores pueden usar BloodHound para identificar y eliminar esas mismas rutas de ataque. Los equipos azul y rojo pueden usar BloodHound para obtener una comprensión más profunda de las relaciones de privilegios en un entorno de Active Directory.

- [KeePass](https://keepass.info/): Es una aplicación free open source para la gestión de contraseñas que sirve de ayuda para gestionar las contraseñas de un modo seguro. Puedes almacenar todas las contraseñas en una única base de datos, la cual permanece accesible mediante una única clave maestra o fichero, sólo se tiene que recordar una única contraseña o seleccionar el fichero clave para acceder a la base de datos cifrada mediante algoritmo robusto.

- [Manage Engine](https://www.manageengine.com/products/ad-manager/): Plataforma web que permite realizar las tareas más comunes, como las altas y bajas de usuarios, aparte de la aplicación de políticas de grupo, a través de una interfaz intuitiva y fácil de aprender. A través de sus informes detallados, ofrece visibilidad completa sobre todos los objetivos en el Directorio Activo.

- [OpenNAC](https://sourceforge.net/projects/opennac/): Solución de código abierto para el control de acceso de red en entornos LAN/WAN corporativos y compatible con diversos fabricantes de tecnología de red. Permite la autenticación, autorización y auditoría basada en las políticas de acceso a la red.

## Enlaces de interés

-[ISO27000](https://www.iso27000.es/iso27002_9.html)

-[Netwrix](https://www.netwrix.es/privileged_account_manager.html)