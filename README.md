# Codex Skills de Arturo

Coleccion privada de skills personales para ChatGPT Codex.

## Skills incluidas

- `kova-content-studio`: crea contenido de marketing on-brand para Kova.
- `kova-instagram-outreach`: prepara y gestiona conversaciones comerciales de Kova en Instagram.

Cada skill conserva su `SKILL.md`, referencias, scripts, recursos y metadatos de interfaz.

## Instalacion personal

Clona este repositorio y ejecuta el instalador desde PowerShell:

```powershell
git clone https://github.com/ArturoFrancoMozqueda/codex-skills.git
cd codex-skills
.\install.ps1
```

El script copia las skills a `%USERPROFILE%\.agents\skills`, desde donde Codex puede descubrirlas en cualquier proyecto local de ese usuario. Usa `-Force` para actualizar una instalacion existente:

```powershell
.\install.ps1 -Force
```

Codex suele detectar los cambios automaticamente. Si no aparecen, reinicia la aplicacion.

## Instalacion por proyecto

Para que un repositorio lleve consigo estas skills, copia las carpetas deseadas desde `skills/` hacia `.agents/skills/` dentro del proyecto y confirma esos archivos en Git.

## Mantenimiento

La carpeta `skills/` es la fuente de verdad de esta coleccion. Antes de publicar cambios:

1. Verifica que cada carpeta contenga un `SKILL.md` valido.
2. No confirmes credenciales, tokens, cookies ni archivos de sesion.
3. Excluye caches como `__pycache__` y archivos `.pyc`.
