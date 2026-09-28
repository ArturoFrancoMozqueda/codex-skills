# Flujo de hoja y navegador

## 1. Preparar el contexto

1. Lee la configuración y el prompt operativo indicados en `SKILL.md`.
2. Carga `google-sheets` y `computer-use:computer-use` antes de operar sus respectivas superficies.
3. Confirma la identidad exacta de la hoja, sus pestañas visibles, encabezados y rangos poblados. La hoja es la fuente canónica; no copies prospectos a archivos locales.
4. Lee rangos acotados de `Cola_Contacto` y, solo cuando sea necesario para verificar identidad o contexto, `Prospectos` y `Agente_Indice`.
5. Empareja por `candidate_id`. Detente ante duplicados, discrepancias o encabezados inesperados.

Columnas esperadas de `Cola_Contacto`:

`candidate_id | negocio | prioridad | canal | contacto | abrir_contacto | mensaje_1 | mensaje_2 | mensaje_3 | seguimiento_1 | seguimiento_2 | estado | primer_contacto | proximo_seguimiento | ultimo_resultado | zona`

## 2. Elegir negocio y etapa

- Para un primer contacto, exige una ruta oficial de Instagram almacenada y estado compatible con envío.
- Para una conversación existente, abre primero el historial del perfil exacto y determina la etapa por el último mensaje real, no solo por la hoja.
- Si ya existe un mensaje saliente desde la cuenta actual, no repitas el primer contacto. Si la hoja contradice el chat, no envíes y reporta la discrepancia.
- Un contacto anterior desde otra cuenta solo permite reiniciar si el usuario lo autorizó específicamente para ese negocio o la fila conserva esa decisión; nunca ocultes ni niegues el contacto previo.

## 3. Verificar y personalizar

1. Abre el perfil oficial guardado.
2. Confirma que nombre, ubicación y actividad corresponden al registro.
3. Obtén un detalle público apto para mensaje. No uses datos personales, inferencias sobre el dueño ni publicaciones ambiguas.
4. Revisa el historial visible del chat antes de redactar.
5. Aplica la etapa correcta de `conversation-playbook.md` y guarda el borrador en la fila solo si el usuario pidió preparar la cola.

## 4. Confirmar y enviar

Inmediatamente antes de transmitir, presenta:

- negocio y cuenta;
- etapa que justifica el historial;
- cada burbuja exacta en el orden de envío.

Espera confirmación explícita para ese negocio. Después:

1. Refresca la vista y comprueba que el cuadro de mensaje pertenece al perfil correcto.
2. Envía únicamente las burbujas aprobadas. Para el primer contacto, envía la primera y después la segunda sin añadir una tercera.
3. Refresca el historial y verifica que ambas aparecen una sola vez.
4. Solo entonces actualiza la fila de `Cola_Contacto` con estado, fecha, siguiente acción y un resultado breve.
5. Lee de nuevo las celdas actualizadas para comprobarlas.

Si una burbuja aparece enviada y la otra no, no repitas la primera. Observa el historial, informa el estado parcial y solicita confirmación antes de completar cualquier texto pendiente.

## 5. Cadencia entre negocios

- Espera un intervalo real de 3–4 minutos después de verificar un envío y antes de transmitir al negocio siguiente.
- Durante el intervalo puedes revisar la hoja o preparar un borrador, pero no interpretes eso como aprobación para enviarlo.
- Comunica avances al usuario si la operación continúa durante más de un minuto.
- Mantén volumen moderado y detente si Instagram muestra límites, advertencias o comportamiento inesperado.

## 6. Estados y registro

Conserva los valores admitidos por la hoja. En general:

- primer contacto verificado → `contactado` y fecha de próximo seguimiento en 2–3 días hábiles;
- respuesta humana → `respondio` y resumen factual sin inventar interés;
- primer seguimiento verificado → `seguimiento_1`;
- segundo seguimiento verificado → `seguimiento_2` o `sin_respuesta`, según el esquema vigente;
- negativa explícita → `no_interesado` y sin seguimiento;
- demostración acordada → `demo_agendada` solo con fecha o acuerdo real.

No edites pestañas protegidas por el prompt operativo. No registres un envío hasta verlo en el chat y no registres una respuesta a partir de silencio, reacción automática o indicador de lectura.
