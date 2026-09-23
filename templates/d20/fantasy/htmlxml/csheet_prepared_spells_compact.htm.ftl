<#ftl encoding="UTF-8" strip_whitespace=true>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>${pcstring('NAME')}</title>
<style type="text/css">
  :root {
    --c1: #1a1a1a;
    --c2: #3a3a3a;
    --c3: #111111;
    --c4: #555555;
    --c5: #aaaaaa;
    --c6: #dddddd;
    --bg: #ffffff;
    --inv: #ffffff;
  }

  @import url('https://fonts.googleapis.com/css2?family=Raleway:wght@400;600;700&family=Inter:wght@400;500;600&display=swap');

  * { box-sizing: border-box; }

  body {
    font-family: 'Inter', 'Segoe UI', Arial, sans-serif;
    font-size: 10pt;
    color: var(--c3);
    background: var(--bg);
    margin: 16px;
  }

  h1 {
    font-family: 'Raleway', sans-serif;
    font-size: 26pt;
    font-weight: 800;
    color: var(--c1);
    margin-bottom: 12px;
    letter-spacing: 1px;
    text-align: center;
  }

  h2 {
    font-family: 'Raleway', sans-serif;
    font-size: 10pt;
    font-weight: 700;
    letter-spacing: 2px;
    text-transform: uppercase;
    background: var(--c1);
    color: var(--inv);
    padding: 4px 8px;
    margin: 10px 0 4px 0;
    border-left: 3px solid var(--c5);
    text-align: center;
  }

  table { border-collapse: collapse; width: 100%; table-layout: fixed; }
  td, th { font-size: 9pt; padding: 2px 4px; overflow: hidden; word-wrap: break-word; }

  th {
    font-family: 'Raleway', sans-serif;
    font-size: 7.5pt;
    font-weight: 600;
    letter-spacing: 0.5px;
    background: var(--c2);
    color: var(--inv);
    text-transform: uppercase;
  }

  .border { border: 1px solid var(--c5); }
  .val    { font-weight: bold; text-align: center; }
  .topline {
    border-top: 1px solid var(--c5);
    font-size: 7pt;
    font-family: 'Raleway', sans-serif;
    letter-spacing: 0.5px;
    text-transform: uppercase;
    color: var(--c4);
  }
  .shaded { background: var(--c6); }

  .two-col { display: grid; grid-template-columns: 1fr 1fr; gap: 14px; }
  .six-col { display: grid; grid-template-columns: repeat(6,1fr); gap: 6px; }

  .stat-box { border: 1px solid var(--c5); border-top: 3px solid var(--c1); text-align: center; padding: 4px 2px; background: var(--bg); }
  .stat-box .sname { font-family: 'Raleway', sans-serif; font-size: 6.5pt; font-weight: 700; letter-spacing: 1px; text-transform: uppercase; color: var(--c2); display: block; }
  .stat-box .score { font-family: 'Raleway', sans-serif; font-size: 20pt; font-weight: 700; color: var(--c1); display: block; line-height: 1.1; }
  .stat-box .mod { font-size: 9pt; font-weight: 600; color: var(--c4); display: block; }

  .mini { border: 1px solid var(--c5); border-top: 2px solid var(--c2); text-align: center; padding: 3px; background: var(--bg); }
  .mini .mname { font-family: 'Raleway', sans-serif; font-size: 6.5pt; font-weight: 700; letter-spacing: 0.5px; text-transform: uppercase; color: var(--c2); display: block; }
  .mini .mval { font-family: 'Raleway', sans-serif; font-size: 13pt; font-weight: 700; color: var(--c1); display: block; }

  .mini-inv { border: 1px solid var(--c1); text-align: center; padding: 3px; background: var(--c1); }
  .mini-inv .mname { font-family: 'Raleway', sans-serif; font-size: 6.5pt; font-weight: 700; letter-spacing: 0.5px; text-transform: uppercase; color: var(--c5); display: block; }
  .mini-inv .mval { font-family: 'Raleway', sans-serif; font-size: 13pt; font-weight: 700; color: var(--inv); display: block; }

  .ac-component { border: 1px solid var(--c5); text-align: center; padding: 2px; background: var(--bg); }
  .ac-component .acl { font-family: 'Raleway', sans-serif; font-size: 5.5pt; font-weight: 700; letter-spacing: 0.5px; text-transform: uppercase; color: var(--c2); display: block; }
  .ac-component .acv { font-family: 'Raleway', sans-serif; font-size: 11pt; font-weight: 700; color: var(--c1); display: block; line-height: 1.2; }
  .ac-op { font-size: 10pt; font-weight: bold; text-align: center; vertical-align: middle; padding: 0 1px; color: var(--c4); }

  .note-box { border: 1px solid var(--c5); border-left: 3px solid var(--c2); background: var(--bg); padding: 5px 10px; font-size: 8.5pt; margin-bottom: 6px; line-height: 1.3; }
  .note-box p { line-height: 1.3; margin-block-start: 0; margin-block-end: 4px; }

  .spell-level-head { background: var(--c2); color: var(--inv); font-family: 'Raleway', sans-serif; font-size: 8pt; font-weight: 700; letter-spacing: 1.5px; text-transform: uppercase; padding: 3px 8px; margin: 6px 0 2px 0; border-left: 3px solid var(--c5); }

  .src { font-size: 6pt; color: var(--c4); font-style: italic; }

  .help-text { font-size: 7pt; color: var(--c4); margin-top: 3px; margin-bottom: 4px; line-height: 1.5; }

  hr { border: none; border-top: 1px solid var(--c5); margin: 10px 0; }

  .no-break { page-break-inside: avoid; break-inside: avoid; }
  h2 { page-break-after: avoid; break-after: avoid; }
  tr { page-break-inside: avoid; break-inside: avoid; }
  .spell-level-block { page-break-inside: avoid; break-inside: avoid; }

  .eq-detail { background: #f0f0f0; font-size: 7pt; color: var(--c4); font-style: italic; border: 1px solid var(--c5); padding: 2px 6px; line-height: 1.4; }
  .eq-detail p { line-height: 1.4; margin-block-start: 0; margin-block-end: 4px; }

  .mini-row-fill { table-layout: fixed !important; width: 100%; }
  .mini-row-fill td { white-space: nowrap; padding: 2px 3px; }

  /* Compact layout: denser type, spacing, and page flow. */
  body.compact-sheet { font-size: 8.5pt; line-height: 1.15; margin: 8px; }
  .compact-sheet h1 { font-size: 20pt; line-height: 1; margin: 0 0 5px; }
  .compact-sheet h2 { font-size: 8.5pt; padding: 2px 5px; margin: 5px 0 2px; border-left-width: 2px; }
  .compact-sheet td, .compact-sheet th { font-size: 7.5pt; line-height: 1.12; padding: 1px 2px; }
  .compact-sheet th { font-size: 6.5pt; }
  .compact-sheet .topline { font-size: 6pt; }
  .compact-sheet .two-col { gap: 6px; }
  .compact-sheet .six-col { gap: 3px; }
  .compact-sheet .stat-box { border-top-width: 2px; padding: 2px 1px; }
  .compact-sheet .stat-box .sname { font-size: 5.5pt; letter-spacing: .75px; }
  .compact-sheet .stat-box .score { font-size: 15pt; line-height: 1; }
  .compact-sheet .stat-box .mod { font-size: 7.5pt; }
  .compact-sheet .mini, .compact-sheet .mini-inv { padding: 1px; }
  .compact-sheet .mini .mname, .compact-sheet .mini-inv .mname { font-size: 5.5pt; letter-spacing: .4px; }
  .compact-sheet .mini .mval, .compact-sheet .mini-inv .mval { font-size: 10pt; line-height: 1; }
  .compact-sheet .manual-hp .mval { display: block; min-height: 24px; }
  .compact-sheet .ac-component { padding: 1px; }
  .compact-sheet .ac-component .acl { font-size: 5pt; letter-spacing: .3px; }
  .compact-sheet .ac-component .acv { font-size: 9pt; line-height: 1; }
  .compact-sheet .ac-op { font-size: 8pt; }
  .compact-sheet .note-box { border-left-width: 2px; padding: 2px 4px; font-size: 7pt; margin-bottom: 3px; line-height: 1.15; }
  .compact-sheet .note-box p { line-height: 1.15; margin-block-end: 2px; }
  .compact-sheet .spell-level-head { font-size: 7pt; letter-spacing: 1px; padding: 1px 4px; margin: 3px 0 1px; border-left-width: 2px; }
  .compact-sheet .src { font-size: 5.5pt; }
  .compact-sheet .help-text { font-size: 6pt; margin: 1px 0 2px; line-height: 1.2; }
  .compact-sheet hr { margin: 4px 0; }
  .compact-sheet .no-break, .compact-sheet .spell-level-block { page-break-inside: auto; break-inside: auto; }
  .compact-sheet .eq-detail { font-size: 6pt; padding: 1px 3px; line-height: 1.15; }
  .compact-sheet .eq-detail p { line-height: 1.15; margin-block-end: 2px; }
  .compact-sheet .mini-row-fill td { padding: 1px 2px; }
  .compact-core-grid, .compact-reference-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 6px; align-items: start; }
  .compact-combat-grid { display: grid; grid-template-columns: minmax(0, 2fr) minmax(0, 3fr); gap: 6px; align-items: start; }
  .compact-abilities .six-col { grid-template-columns: repeat(3, 1fr); }

  @page { margin: 8mm 8mm 20mm; }
  @media screen { body.compact-sheet { padding-bottom: 14mm; } }
  @media print {
    body { margin: 0; background: white; }
    body.compact-sheet { margin: 0; }
    .compact-page-start { break-before: page; page-break-before: always; }
  }
</style>
</head>
<body class="compact-sheet">
{{ component:compact/header }}
<div class="compact-core-grid">
  <div class="compact-abilities">{{ component:compact/ability_scores }}</div>
  <div>{{ component:compact/combat_basics }}</div>
  <div>{{ component:compact/saves }}</div>
  <div>{{ component:compact/notes }}</div>
</div>
{{ component:compact/combat }}
{{ component:compact/skills }}
{{ component:compact/special_qualities }}
{{ component:compact/weapons }}
<div class="compact-combat-grid">
  <div>{{ component:compact/special_attacks }}</div>
  <div>{{ component:compact/combat_maneuvers }}</div>
</div>
{{ component:compact/combat_conditionals }}
{{ component:compact/armor_shields }}
{{ component:compact/prepared_spells }}
<div class="compact-reference-grid">
  <div>{{ component:compact/concentration_reference }}</div>
  <div>{{ component:compact/rules_reference }}</div>
</div>
<div class="compact-page-start">{{ component:compact/inventory }}</div>
<div class="compact-reference-grid compact-page-start">
  <div>{{ component:compact/biography }}</div>
  <div>{{ component:compact/portrait }}</div>
</div>
{{ component:compact/footer }}

</body>
</html>
