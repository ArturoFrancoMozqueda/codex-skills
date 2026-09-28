---
name: kova-instagram-outreach
description: Prepara, personaliza, envía y registra conversaciones comerciales de Kova desde el Instagram personal de Arturo, usando la hoja operativa de prospectos y verificando cada negocio antes de contactar. Úsala para revisar la cola, redactar mensajes por etapa, ejecutar DMs supervisados o dar seguimiento; no aplica a publicaciones ni campañas masivas.
---

# Kova Instagram Outreach

Gestiona conversaciones individuales de fundador a negocio. El objetivo del primer contacto es obtener una respuesta, no presentar todo Kova ni conseguir un registro inmediato.

La voz siempre es la de Arturo hablando en primera persona desde su perfil personal. Kova se posiciona como la herramienta que conecta cada venta con inventario, caja y resultados para que el dueño entienda qué pasa en su negocio y decida con claridad; nunca la reduzcas a "un punto de venta".

## Fuentes de verdad

- Lee primero `%USERPROFILE%\Documents\repos\kova_prospecting_agent\config\prospecting.json` y `%USERPROFILE%\Documents\repos\kova_prospecting_agent\prompts\outreach-tracking.md` si existen. Detente si contradicen la hoja o si la identidad de la hoja no coincide.
- Usa la hoja configurada allí; actualmente es `https://docs.google.com/spreadsheets/d/1vfnmbMNirG6sUxH1pcBN-ydA-uYOzgt56op2gEVgU5Q/edit` y su cola operativa es `Cola_Contacto`.
- Usa la skill `google-sheets` para leer o escribir la hoja. Si no existe un conector de Sheets, usa la interfaz de Google Sheets abierta en Edge mediante la skill `computer-use:computer-use`, conservando las mismas comprobaciones de rangos y encabezados.
- Para navegar por Instagram o Google Sheets, carga y sigue `computer-use:computer-use`. Prefiere la sesión ya abierta en Microsoft Edge y nunca automatices autenticación, contraseñas ni controles de seguridad.

## Selección del modo

- **Preparar:** leer la cola, verificar perfiles y redactar la siguiente etapa sin enviar nada.
- **Ejecutar:** hacer lo anterior, mostrar el negocio y los textos exactos, obtener confirmación de acción y enviar solo la etapa aprobada.
- **Revisar respuestas:** abrir conversaciones ya contactadas, clasificar la respuesta, preparar el siguiente mensaje y actualizar la cola únicamente después de una acción verificable.

Lee [references/browser-sheet-workflow.md](references/browser-sheet-workflow.md) para operar la hoja y el navegador. Lee [references/conversation-playbook.md](references/conversation-playbook.md) antes de redactar o enviar mensajes.

## Límites esenciales

- Trata cada negocio como una conversación distinta; personaliza con un detalle público, verificable y reciente o todavía representativo.
- El primer contacto consta de exactamente dos burbujas consecutivas: identidad y observación; después, una sola pregunta operacional. No envíes un tercer mensaje inicial.
- No incluyas enlace, lista de funciones, precio, descuento, piloto, meses gratis ni promesas no verificadas. No uses “te escribo desde mi perfil personal”, “ser parte de su crecimiento” ni “caso de éxito”.
- No inventes cómo opera el negocio. Si la evidencia no permite una pregunta específica, usa ventas, inventario o corte diario según el tipo de establecimiento.
- No envíes `mensaje_2`, `mensaje_3` ni seguimientos solo porque existan en la hoja; la conversación visible debe justificar la etapa.
- Tras una primera respuesta humana, redacta una transición comercial conectada con esa respuesta y con el contexto específico del negocio. Debe sonar a Arturo explicando por qué creó Kova, no a una cuenta corporativa describiendo funciones.
- Un DM es comunicación externa en nombre del usuario. Inmediatamente antes de enviar a cada negocio, muestra nombre, cuenta, etapa y todos los textos exactos de esa etapa, y pide confirmación. Una autorización general o previa no reemplaza esta confirmación.
- Una confirmación puede cubrir las dos burbujas del mismo primer contacto si ambas se muestran juntas. No cubre otro negocio ni una etapa posterior.
- Tras cada envío, verifica que las burbujas aparezcan en el chat. Si el resultado es incierto, no reintentes ni actualices la hoja hasta volver a observar el historial.
- Respeta de 3 a 4 minutos entre negocios distintos. Mantén al usuario informado durante esperas largas y no uses la pausa para preparar o transmitir un negocio no aprobado.
- Detente ante CAPTCHA, bloqueo, solicitud de autenticación, cuenta dudosa, identificador duplicado o discrepancia entre la hoja y el perfil.

## Resultado esperado

Al terminar, informa solo negocios procesados, etapa, resultado visible y estado de seguimiento. No expongas teléfonos, correos, nombres privados ni notas internas en el resumen.
