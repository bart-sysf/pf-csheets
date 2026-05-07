#!/usr/bin/env python3
from __future__ import annotations

from pathlib import Path
import re

ROOT = Path(__file__).resolve().parent.parent
TEMPLATES_DIR = ROOT / "templates"
COMPONENTS_DIR = ROOT / "components"
OUTPUT_DIR = ROOT / "OutputSheets"
TOKEN_RE = re.compile(r"\{\{\s*component:([a-zA-Z0-9_-]+)\s*\}\}")
MAX_EXPANSION_DEPTH = 20  # Guard against cyclic/nested references; normal templates should resolve in a few passes


def load_components() -> dict[str, str]:
    components: dict[str, str] = {}
    for path in sorted(COMPONENTS_DIR.glob("*.ftl")):
        components[path.stem] = path.read_text(encoding="utf-8")
    return components


def expand_components(content: str, components: dict[str, str]) -> str:
    expanded = content
    for _ in range(MAX_EXPANSION_DEPTH):
        changed = False

        def repl(match: re.Match[str]) -> str:
            nonlocal changed
            name = match.group(1)
            if name not in components:
                raise ValueError(f"Missing component: {name}")
            changed = True
            return components[name]

        new_expanded = TOKEN_RE.sub(repl, expanded)
        expanded = new_expanded
        if not changed:
            break
    if TOKEN_RE.search(expanded):
        raise ValueError(f"Unresolved component tokens remain after expansion: {TOKEN_RE.findall(expanded)}")
    return expanded


def build() -> None:
    components = load_components()
    if not components:
        raise ValueError("No components found in components/")

    for template_path in sorted(TEMPLATES_DIR.rglob("*.ftl")):
        rel = template_path.relative_to(TEMPLATES_DIR)
        output_path = OUTPUT_DIR / rel
        output_path.parent.mkdir(parents=True, exist_ok=True)
        template_content = template_path.read_text(encoding="utf-8")
        output_content = expand_components(template_content, components)
        output_path.write_text(output_content, encoding="utf-8")
        print(f"Built {output_path.relative_to(ROOT)}")


if __name__ == "__main__":
    build()
