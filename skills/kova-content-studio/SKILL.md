---
name: kova-content-studio
description: Crea contenido de marketing on-brand para Kova —conceptos, copy, imágenes, carruseles y video— con producto y afirmaciones verificables. Úsala para redes, campañas, anuncios, miniaturas y demos; no para prospección por DM ni para editar la interfaz del producto.
---

# Kova Content Studio

Convierte una tensión real del negocio mexicano en una pieza clara, visual y publicable. La situación capta atención; Kova demuestra la respuesta.

## Fuentes de verdad

Para identidad y composición visual diaria usa el paquete estático incluido en la skill:

1. La petición y los materiales aprobados por el usuario.
2. `assets/design-system.json` y [references/brand-system.md](references/brand-system.md), que forman el contrato visual versionado.
3. [references/content-playbook.md](references/content-playbook.md) para estrategia y narrativa.

Lee [references/design-system-access.md](references/design-system-access.md) antes de cualquier producción visual. Si existen imágenes o videos de referencia, fija primero las dimensiones del entregable y selecciónalos con [references/media-orientation.md](references/media-orientation.md) y `assets/media-library.json`; no confíes en el nombre del archivo para inferir su orientación. El manifiesto es la única fuente de medios del repositorio permitida durante la producción: no explores `showcase/`, `output/`, `videos/` u otras carpetas para añadir referencias no listadas. No inspecciones el repositorio ni regeneres el paquete durante una ejecución cotidiana. El paquete se actualiza de forma explícita sólo cuando cambia el sistema de diseño o el usuario solicita sincronizarlo.

El repositorio vivo sigue siendo autoridad para funciones, precios, promociones, disponibilidad, capturas y datos del producto. Cuando la pieza incluya una afirmación concreta sobre Kova, el mercado o un cliente, lee [references/claim-verification.md](references/claim-verification.md) y verifica sólo las fuentes necesarias; esta verificación no reemplaza el contrato visual empaquetado a mitad de un ciclo.

No asumas precios, promociones, funciones, disponibilidad, métricas, datos de clientes ni resultados. Verifica las afirmaciones en fuentes actuales; si no pueden verificarse, omítelas o formula la pieza sin esa afirmación.

## Contrato creativo

Antes de producir, resuelve en pocas líneas:

- audiencia o giro;
- tensión operativa concreta;
- una sola idea o trabajo editorial;
- prueba disponible: escena real, captura aprobada, dato verificable o demostración;
- acción que el dueño podrá tomar;
- formato, canal, dimensiones o relación de aspecto y CTA.

Haz suposiciones razonables y decláralas. Pregunta sólo si falta el tema o si elegir imagen frente a video cambia materialmente el encargo. Para una pieza social sin dimensiones indicadas, usa 1080×1350 en estático/carrusel y 1080×1920 en video vertical. Mantén el copy en español de México.

Cada pieza debe demostrar al menos una de estas tres cosas: una fricción desaparece, una señal del negocio se vuelve visible o una decisión se vuelve más segura. Abre con el problema o la escena, no con una lista de funciones ni con el logo.

## Enrutamiento

- **Concepto, calendario o campaña:** lee [references/content-playbook.md](references/content-playbook.md). Entrega una tesis, formatos y piezas suficientemente distintas; no dupliques una idea sólo para llenar frecuencia.
- **Claims de producto, comerciales, de mercado o de clientes:** lee [references/claim-verification.md](references/claim-verification.md). Conserva sólo afirmaciones verificadas; reformula u omite las demás.
- **Sistema visual:** para cualquier asset final, lee [references/design-system-access.md](references/design-system-access.md) y usa el paquete estático; no ejecutes el inspector diario.
- **Imágenes o videos de referencia:** lee [references/media-orientation.md](references/media-orientation.md), resuelve `assets/media-library.json` para la relación de aspecto final y registra la selección antes del storyboard o prompt. Los materiales aportados por el usuario pueden sustituir esa selección; otros archivos del repositorio no.
- **Imagen, portada, carrusel, miniatura o visual estático:** lee [references/image-workflow.md](references/image-workflow.md) y usa la skill `imagegen`.
- **Video, reel animado, demo, edición o motion graphic:** lee [references/video-workflow.md](references/video-workflow.md) y carga primero la skill `hyperframes`, que es la entrada obligatoria del flujo de video disponible en Codex.
- **Copy sin producción visual:** aplica el contrato creativo y el playbook; no invoques herramientas de imagen o video.

Si una campaña mezcla imágenes y video, define primero el sistema común y luego ejecuta cada asset por su ruta correspondiente.

## Invariantes de marca y verdad

- Usa el contrato visual empaquetado y sus assets. Nunca tomes la estética de un competidor como plantilla.
- El isotipo y el wordmark no se regeneran con IA. Usa los assets oficiales o compón el wordmark `kova` con la tipografía aprobada.
- La IA puede crear la escena, textura o fotografía. El copy, logo, subtítulos, gráficos y UI se componen de forma determinista cuando deben ser exactos.
- Los videos no llevan locución, narración, TTS ni voz clonada. Deben entenderse sin audio mediante imagen y subtítulos integrados. No añadas música, ambiente o efectos salvo petición explícita.
- No inventes pantallas de Kova, analítica decorativa ni resultados de negocio. Usa capturas reales, aprobadas y sin información sensible. Mantén la UI intacta al integrarla.
- No expongas datos de clientes. Una historia o métrica real requiere permiso y anonimización cuando corresponda.
- Evita promesas genéricas, superlativos, cifras sin fuente, engagement bait, estereotipos del negocio mexicano y stock corporativo impersonal.

## Entrega y revisión

Inspecciona el arte final, no sólo el prompt o el código. Corrige defectos evidentes de composición, texto, logo, UI, contraste, recorte o continuidad. En proyectos, guarda los finales bajo `output/marketing/<campaña>/` con nombres descriptivos y sin sobrescribir archivos existentes.

Al terminar informa:

- concepto y decisión editorial;
- formato y dimensiones/duración;
- herramienta o flujo usado;
- archivos finales y prompt o brief final;
- fuentes usadas para las afirmaciones publicables;
- afirmaciones, datos o elementos de producto que se reformularon, omitieron o quedaron pendientes.
