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

  .quick-page h2 { margin-top: 0; }
  .quick-page td, .quick-page th { font-size: 7.5pt; padding: 2px 3px; }
  .quick-page .val { font-size: 8.5pt; }
  .quick-page .help-text { font-size: 6.5pt; margin-top: 2px; margin-bottom: 2px; }

  @media print { body { margin: 0; background: white; } }
</style>
</head>
<body>

{{ component:header }}

{{ component:ability_scores }}

{{ component:combat }}

{{ component:saves }}

{{ component:notes }}

{{ component:skills }}

{{ component:special_qualities }}

{{ component:special_attacks }}

{{ component:weapons }}

{{ component:combat_maneuvers }}

{{ component:combat_conditionals }}

{{ component:armor_shields }}

{{ component:spellbook }}

{{ component:prepared_spells }}

{{ component:concentration_reference }}

{{ component:inventory }}

{{ component:rules_reference }}

{{ component:aoo_reference }}

{{ component:ability_influence }}

{{ component:common_conditions }}

{{ component:quick_view }}

{{ component:biography }}

{{ component:portrait }}

{{ component:footer }}

</body>
</html>
