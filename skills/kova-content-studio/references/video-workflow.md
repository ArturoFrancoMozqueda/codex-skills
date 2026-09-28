# Flujo de video

Carga primero el paquete estático indicado en [design-system-access.md](design-system-access.md), incluidos sus tokens de movimiento y assets. Fija después la relación de aspecto del master y resuelve `../assets/media-library.json` con [media-orientation.md](media-orientation.md) antes del storyboard. Registra el pool y las rutas seleccionadas en el brief. Para cualquier video, animación o motion graphic, carga después la skill `hyperframes` y deja que enrute el trabajo. HyperFrames es el flujo de creación y render disponible en Codex; `imagegen` sólo produce imágenes de apoyo cuando hacen falta.

La selección del manifiesto prevalece sobre la captura o búsqueda automática de medios de otros flujos. No permitas que HyperFrames añada archivos del sitio, `showcase/`, outputs anteriores o el proyecto actual si no están listados o aportados por el usuario. Resuelve `product_ui` por separado sólo cuando el storyboard justifique una demostración concreta; nunca lo uses como fallback creativo.

## Rutas frecuentes para Kova

- `product-launch-video`: showcase de Kova, el sitio o un flujo del producto.
- `general-video`: reel narrativo, campaña social o composición personalizada.
- `motion-graphics`: unidad corta, sin narración y normalmente menor de 10 s.
- `talking-head-recut`: footage existente usado visualmente, con su voz eliminada y overlays diseñados.

Sigue la ruta que determine `hyperframes`; esta lista no reemplaza sus contratos.

Si el material fuente contiene una persona hablando, la eliminación de su audio forma parte del encargo. No uses `embedded-captions` como ruta final cuando conservaría la voz; usa la ruta de edición que permita mutear o retirar el audio y mantener los subtítulos integrados.

## Política permanente de voz y audio

- No generes ni añadas locución, narración, TTS, doblaje o voz clonada.
- No propongas voz durante entrevistas de intención ni durante el media opportunity pass, aunque otro flujo la recomiende.
- El entregable predeterminado no lleva música, ambiente ni efectos. Añádelos sólo cuando el usuario los pida explícitamente; esa autorización no incluye voz.
- El video debe funcionar completamente en silencio. La secuencia visual y los subtítulos cargan toda la historia.
- Si una ruta presupone narración, conserva su estructura narrativa pero conviértela en beats visuales y subtítulos; no generes un archivo de voz temporal.

Esta política prevalece sobre sugerencias opcionales de audio de otras skills del flujo.

## Subtítulos como narrativa

- Integra los subtítulos dentro del video final; no entregues únicamente un `.srt` o `.vtt`.
- Escribe para lectura móvil: fragmentos breves, una idea por beat y máximo dos líneas visibles.
- Sincroniza cada bloque con la acción o evidencia que explica; evita subtítulos que anticipen una pantalla todavía invisible.
- Conserva español de México, acentos, puntuación y términos exactos del producto.
- Usa la tipografía, contraste y zonas seguras del paquete de Kova. No tapes controles, cifras ni rostros.
- Entrega un archivo lateral de subtítulos sólo si el usuario lo solicita.

## Brief adicional de Kova

Además del brief del flujo de video, registra:

- giro, tensión y decisión del dueño;
- evidencia real de producto disponible;
- una sola promesa;
- frase exacta de cierre y CTA;
- formato y duración;
- selección de fuentes con dimensiones y tratamiento `contain`, `cover` o `inset`;
- elementos que requieren verificación antes del render final.

Para una pieza social sin especificación: vertical 1080×1920, 20–40 s. Para una minihistoria: 45–75 s. Para búsqueda o educación: horizontal 1920×1080, 3–7 min. Son defaults, no límites.

## Gramática narrativa y visual

1. Abre con una escena o tensión reconocible.
2. Introduce pronto una sola acción real en Kova.
3. Muestra la consecuencia: caja, inventario, señal o decisión.
4. Cierra con una línea útil y un CTA proporcional.

La UI demuestra; no es decoración. Mantén capturas reales como capas sin deformar ni reescribir sus datos. Si falta producto aprobado, diseña placeholders explícitos para insertar una captura después, no una UI ficticia.

Usa movimientos breves, limpios y seek-safe: transform y opacidad, jerarquía clara, pocas transiciones. Evita zooms constantes, partículas, glitch, 3D gratuito y ritmo frenético que compita con la explicación. Los subtítulos deben poder leerse en móvil y permanecer en zonas seguras de la interfaz del canal.

Construye el ritmo con cortes, movimiento y duración de los subtítulos. No dependas de una pista de audio para que el montaje tenga sentido.

## Recursos generativos

Cuando una toma de apoyo necesite IA, aplica `imagegen` y el sistema de [brand-system.md](brand-system.md). Marca las recreaciones como tales cuando puedan confundirse con un negocio o cliente real. No inventes testimonios, resultados ni capturas.

## QA antes del render final

- inspecciona fotogramas temprano, medio y final;
- revisa textos, acentos, montos y subtítulos;
- confirma que logo, colores y tipografía coinciden con marca;
- confirma que toda función, oferta y cifra es vigente y verificable;
- verifica continuidad, encuadre vertical u horizontal y zonas seguras;
- confirma que el master vertical use prioritariamente fuentes verticales y el horizontal fuentes horizontales; documenta cualquier fallback;
- confirma que no exista voz y que, salvo petición explícita, el archivo no tenga audio audible;
- reproduce una revisión completa en silencio y confirma que los subtítulos sean suficientes, estén sincronizados y no oculten la evidencia;
- ejecuta los checks y render final indicados por `hyperframes`.

Entrega el video final con subtítulos integrados, la duración, el brief y cualquier fuente o afirmación pendiente. Indica expresamente que se renderizó sin voz y si contiene o no audio adicional autorizado.
