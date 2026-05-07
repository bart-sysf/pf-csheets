# Pathfinder Character Sheets for PCGen

Custom PCGen output sheets for Pathfinder 1e. Currently includes a prepared-spells character sheet rendered as a clean HTML file from your PCGen character data.

## What this repository is

- A collection of PCGen **output sheets** (FreeMarker `.ftl` templates) for Pathfinder 1e characters.
- The sheets are drop-in replacements or additions for the standard PCGen output-sheet folder.
- `templates/d20/fantasy/xmlhtml/` — source sheet templates using component placeholders.
- `components/` — reusable sheet blocks (skills, feats, weapons, inventory, spellbook, prepared spells, quick view, common conditions, biography, and more).
- `OutputSheets/d20/fantasy/xmlhtml/` — compiled output sheets ready to copy into PCGen.

If you want to change how the sheet looks or what it shows, edit files in `templates/` and `components/`, then compile to `OutputSheets/`. The templates use PCGen's `${pcstring(...)}` and `<#...>` directives to pull character data at export time.


## Component syntax

Templates use component tokens in this format (templates are now mostly style + ordered component tokens):

```
{{ component:skills }}
```

During build, each token is replaced with the content of `components/<name>.ftl`.

## Build compiled sheets

```
python scripts/build_sheets.py
```

This compiles everything from `templates/` to `OutputSheets/` using `components/`.

## Where to put the sheets

PCGen looks for output sheets inside its own `outputsheets` folder. The directory structure in this repository mirrors that layout exactly, so you only need to copy the files into the right place.

### Default PCGen data locations

| Operating system | PCGen data folder |
| :-- | :-- |
| Windows | `C:\Users\<you>\AppData\Roaming\pcgen\outputsheets\` |
| macOS | `~/Library/Application Support/pcgen/outputsheets/` |
| Linux | `~/.local/share/pcgen/outputsheets/` |

> If you installed PCGen somewhere custom, look for the `outputsheets` folder inside your PCGen installation directory instead.

### Steps

1. Clone or download this repository.
2. Copy the `OutputSheets/` folder into your PCGen data folder so that the path becomes:
   ```
   <pcgen data>/outputsheets/d20/fantasy/xmlhtml/csheet_prepared_spells.htm.ftl
   ```
3. Open PCGen, load your character, and choose **Export**.
4. Under the **d20/fantasy/xmlhtml** output-sheet group, select **csheet_prepared_spells** and export to HTML.

## Where the important pieces live

- `templates/d20/fantasy/xmlhtml/csheet_prepared_spells.htm.ftl` — prepared-spells source template
- `templates/d20/fantasy/xmlhtml/csheet_known_spells.htm.ftl` — known+prepared spells source template
- `components/*.ftl` — reusable sheet blocks inserted during build (including quick view, common conditions, biography, rules references, and combat sections)
- `scripts/build_sheets.py` — local compiler for templates/components into `OutputSheets/`
- `.github/workflows/build-sheets.yml` — CI workflow that rebuilds and auto-commits `OutputSheets/`

## Contributing

Pull requests are welcome, especially if you want to:

- add new character sheets or expand the prepared-spells sheet
- improve Pathfinder wording or rules accuracy
- refine the layout, print styling, or accessibility
- add sheets for other character types (spontaneous casters, martial characters, etc.)

### A good contribution path

1. Fork the repository or create a branch.
2. Make your changes in `templates/` and `components/`.
3. Compile with `python scripts/build_sheets.py` to regenerate `OutputSheets/`.
4. Export a test character from PCGen to verify the output looks correct.
5. Open a pull request with a clear explanation of what the sheet shows or how the layout changed.

### Content conventions

- Keep the directory structure matching PCGen's `outputsheets/` layout so files can be dropped in without renaming.
- Use PCGen's standard `${pcstring(...)}` calls for character data rather than hard-coding values.
- Name new sheets with the `csheet_` prefix to stay consistent with PCGen's own naming convention.

### Release conventions

- Use Conventional Commit prefixes such as `feat:`, `fix:`, and `chore:` when possible.
