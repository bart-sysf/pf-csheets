# Pathfinder Character Sheets for PCGen

Custom PCGen output sheets for Pathfinder 1e. Currently includes a prepared-spells character sheet rendered as a clean HTML file from your PCGen character data.

## What this repository is

- A collection of PCGen **output sheets** (FreeMarker `.ftl` templates) for Pathfinder 1e characters.
- The sheets are drop-in replacements or additions for the standard PCGen output-sheet folder.
- `OutputSheets/d20/fantasy/xmlhtml/csheet_prepared_spells.htm.ftl` — a character sheet focused on prepared spells, styled for easy table-side reading.

If you want to change how the sheet looks or what it shows, edit the `.ftl` file directly. The template uses PCGen's `${pcstring(...)}` and `<#...>` directives to pull character data at export time.

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

- `OutputSheets/d20/fantasy/xmlhtml/csheet_prepared_spells.htm.ftl` — the prepared-spells sheet template

## Contributing

Pull requests are welcome, especially if you want to:

- add new character sheets or expand the prepared-spells sheet
- improve Pathfinder wording or rules accuracy
- refine the layout, print styling, or accessibility
- add sheets for other character types (spontaneous casters, martial characters, etc.)

### A good contribution path

1. Fork the repository or create a branch.
2. Make your changes to the `.ftl` template(s).
3. Export a test character from PCGen to verify the output looks correct.
4. Open a pull request with a clear explanation of what the sheet shows or how the layout changed.

### Content conventions

- Keep the directory structure matching PCGen's `outputsheets/` layout so files can be dropped in without renaming.
- Use PCGen's standard `${pcstring(...)}` calls for character data rather than hard-coding values.
- Name new sheets with the `csheet_` prefix to stay consistent with PCGen's own naming convention.

### Release conventions

- Use Conventional Commit prefixes such as `feat:`, `fix:`, and `chore:` when possible.
