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
<!-- ═══ HEADER ═══ -->
<div class="no-break">
  <h1>${pcstring('NAME')}</h1>
  <table style="table-layout:fixed;">
    <tr>
      <td width="20%" class="val">${pcstring('PLAYERNAME')}</td>
      <td width="20%" class="val">Lvl ${pcstring('TOTALLEVELS')} (${pcstring('EXP.CURRENT')} / ${pcstring('EXP.NEXT')})</td>
      <td width="20%" class="val">${pcstring('RACE')}</td>
      <td width="13%" class="val">${pcstring('GENDER')} (${pcstring('AGE')})</td>
      <td width="13%" class="val">${pcstring('HEIGHT')} (${pcstring('SIZELONG')})</td>
      <td width="14%" class="val">${pcstring('WEIGHT')}</td>
    </tr>
    <tr>
      <td class="topline">Player</td>
      <td class="topline">Level (XP)</td>
      <td class="topline">Race</td>
      <td class="topline">Gender (Age)</td>
      <td class="topline">Height (Size)</td>
      <td class="topline">Weight</td>
    </tr>
    <tr>
      <td colspan="2" class="val">${pcstring('DEITY')}, ${pcstring('ALIGNMENT')}</td>
      <td colspan="4" class="val">${pcstring('LANGUAGES')}</td>
    </tr>
    <tr>
      <td colspan="2" class="topline">Deity &amp; Alignment</td>
      <td colspan="4" class="topline">Languages</td>
    </tr>
  </table>
</div>

<div class="compact-core-grid">
  <div class="compact-abilities"><!-- ═══ ABILITY SCORES ═══ -->
<div class="no-break">
<h2>Ability Scores</h2>
<div class="six-col" style="margin-bottom:2px;">
<@loop from=0 to=pcvar('COUNT[STATS]-1') ; stat , stat_has_next>
  <div class="stat-box">
    <span class="sname">${pcstring('STAT.${stat}.NAME')}</span>
    <span class="score">${pcstring('STAT.${stat}.NOTEMP.NOEQUIP')}</span>
    <span class="mod">${pcstring('STAT.${stat}.MOD.NOTEMP.NOEQUIP')}</span>
  </div>
</@loop>
</div>
</div>
</div>
  <div><!-- ═══ COMBAT ═══ -->
<h2>Combat Basics</h2>
<div class="no-break" style="margin-bottom:3px;">
  <table style="table-layout:fixed; margin-bottom:3px;">
    <tr>
      <td width="22%"><div class="mini"><span class="mname">Max HP</span><span class="mval">${pcstring('HP')}</span></div></td>
      <td width="39%"><div class="mini manual-hp"><span class="mname">Wounds / HP Lost</span><span class="mval">&nbsp;</span></div></td>
      <td width="39%"><div class="mini manual-hp"><span class="mname">Current HP</span><span class="mval">&nbsp;</span></div></td>
    </tr>
    <tr>
      <td><div class="mini-inv"><span class="mname">Initiative</span><span class="mval">${pcstring('INITIATIVEMOD')}</span></div></td>
      <td><div class="mini"><span class="mname">Speed</span><span class="mval"><@loop from=0 to=pcvar('COUNT[MOVE]-1') ; mv , mv_has_next>${pcstring('MOVE.${mv}.RATE')}</@loop></span></div></td>
      <td><div class="mini"><span class="mname">DR</span><span class="mval"><#if (pcstring('DR') != '')>${pcstring('DR')}<#else>0</#if></span></div></td>
    </tr>
  </table>
</div>
</div>
  <div><!-- ═══ SAVES ═══ -->
<div class="no-break">
  <h2>Saves</h2>
  <table style="table-layout:fixed; margin-bottom:2px;">
    <tr>
      <td width="32%"></td>
      <td width="17%" style="font-size:6.25pt;text-transform:uppercase;letter-spacing:0.5px;" align="center">Total</td>
      <td width="17%" style="font-size:6.25pt;text-transform:uppercase;letter-spacing:0.5px;" align="center">Base</td>
      <td width="17%" style="font-size:6.25pt;text-transform:uppercase;letter-spacing:0.5px;" align="center">Magic</td>
      <td width="17%" style="font-size:6.25pt;text-transform:uppercase;letter-spacing:0.5px;" align="center">Misc</td>
    </tr>
<@loop from=0 to=pcvar('COUNT[CHECKS]-1') ; chk , chk_has_next>
    <tr>
      <td class="border" style="background:var(--c1);color:var(--inv);font-size:7.25pt;font-family:'Raleway',sans-serif;letter-spacing:1px;">
        <b>${pcstring('CHECK.${chk}.NAME')}</b>
        <#if (pcstring('CHECK.${chk}.NAME') = 'Fortitude')><div style="font-size:5.5pt;color:var(--c5);letter-spacing:0.5px;text-transform:uppercase;">CON (${pcstring('CHECK.${chk}.STATMOD')})</div></#if>
        <#if (pcstring('CHECK.${chk}.NAME') = 'Reflex')><div style="font-size:5.5pt;color:var(--c5);letter-spacing:0.5px;text-transform:uppercase;">DEX (${pcstring('CHECK.${chk}.STATMOD')})</div></#if>
        <#if (pcstring('CHECK.${chk}.NAME') = 'Will')><div style="font-size:5.5pt;color:var(--c5);letter-spacing:0.5px;text-transform:uppercase;">WIS (${pcstring('CHECK.${chk}.STATMOD')})</div></#if>
      </td>
      <td class="border val">${pcstring('CHECK.${chk}.TOTAL')}</td>
      <td class="border" align="center">${pcstring('CHECK.${chk}.BASE')}</td>
      <td class="border" align="center">${pcstring('CHECK.${chk}.MAGIC')}</td>
      <td class="border" align="center">${pcstring('CHECK.${chk}.MISC.NOMAGIC.NOSTAT')}</td>
    </tr>
</@loop>
  </table>
  <#assign hasSaveCond = pcvar('countdistinct("ABILITIES","ASPECT=SaveBonus")-1') />
  <#if (hasSaveCond >= 0)>
  <div class="note-box">
    <span style="font-size:6.25pt;font-weight:bold;">Conditional Save Modifiers:</span><br/>
    <@loop from=0 to=hasSaveCond ; ab , ab_has_next>
      &bull; ${pcstring('ABILITYALL.ANY.${ab}.ASPECT=SaveBonus.ASPECT.SaveBonus')}<br/>
    </@loop>
  </div>
  </#if>
  <div class="help-text">
    <b>Fortitude</b> (CON): resists poison, disease, death effects &mdash;
    <b>Reflex</b> (DEX): resists area effects, traps &mdash;
    <b>Will</b> (WIS): resists mind-affecting, compulsion, fear &mdash;
    DC set by the source ability or spell
  </div>
</div>
</div>
  <div><!-- ═══ NOTES ═══ -->
<div class="no-break">
<h2>Notes (Description)</h2>
<div class="note-box" style="margin-bottom:2px;">
  <#assign descRaw = pcstring('DESC') />
  <#assign descRaw = descRaw?replace("&lt;","<") />
  <#assign descRaw = descRaw?replace("&gt;",">") />
  <#assign descRaw = descRaw?replace("&amp;","&") />
  <#assign descRaw = descRaw?replace("&quot;",'"') />
  <#assign descRaw = descRaw?replace("&#39;","'") />
  ${descRaw}
</div>
</div>
</div>
</div>
<!-- ═══ DEFENSE & ATTACKS ═══ -->
<h2>Defense &amp; Attacks</h2>
<div class="no-break" style="margin-bottom:3px;">
  <table style="table-layout:fixed; margin-bottom:2px;">
    <tr>
      <td width="7%" class="ac-component" style="background:var(--c1);color:var(--inv);">
        <span class="acl" style="color:var(--c5);">AC</span>
        <span class="acv" style="color:var(--inv);">${pcstring('AC.Total')}</span>
      </td>
      <td width="3%" class="ac-op">:</td>
      <td width="7%" class="ac-component"><span class="acl">Touch</span><span class="acv">${pcstring('AC.Touch')}</span></td>
      <td width="3%" class="ac-op">:</td>
      <td width="7%" class="ac-component"><span class="acl">Flat</span><span class="acv">${pcstring('AC.Flatfooted')}</span></td>
      <td width="3%" class="ac-op">=</td>
      <td width="7%" class="ac-component"><span class="acl">Base</span><span class="acv">${pcstring('AC.Base')}</span></td>
      <td width="2%" class="ac-op">+</td>
      <td width="7%" class="ac-component"><span class="acl">Armor*</span><span class="acv">${pcstring('AC.Armor')}</span></td>
      <td width="2%" class="ac-op">+</td>
      <td width="7%" class="ac-component"><span class="acl">Shield</span><span class="acv">${pcstring('AC.Shield')}</span></td>
      <td width="2%" class="ac-op">+</td>
      <td width="7%" class="ac-component"><span class="acl">Dex</span><span class="acv">${pcstring('AC.Ability')}</span></td>
      <td width="2%" class="ac-op">+</td>
      <td width="7%" class="ac-component"><span class="acl">Size</span><span class="acv">${pcstring('AC.Size')}</span></td>
      <td width="2%" class="ac-op">+</td>
      <td width="7%" class="ac-component"><span class="acl">Nat</span><span class="acv">${pcstring('AC.NaturalArmor')}</span></td>
      <td width="2%" class="ac-op">+</td>
      <td width="7%" class="ac-component"><span class="acl">Dodge</span><span class="acv">${pcstring('AC.Dodge')}</span></td>
      <td width="2%" class="ac-op">+</td>
      <td width="7%" class="ac-component"><span class="acl">Defl</span><span class="acv">${pcstring('AC.Deflection')}</span></td>
      <td width="2%" class="ac-op">+</td>
      <td width="7%" class="ac-component"><span class="acl">Misc</span><span class="acv">${pcstring('AC.Misc')}</span></td>
    </tr>
  </table>
  <div class="help-text">
    <b>Touch AC</b> ignores Armor, Shield, and Natural Armor &mdash;
    <b>Flat-Footed AC</b> ignores Dexterity and Dodge &mdash;
    <b>Deflection</b> and <b>Size</b> apply to all three &mdash;
    * Armor bonus reduced by check penalty if not proficient &mdash;
    Max Dex cap limits Dex bonus when wearing armor
  </div>
  <table style="table-layout:fixed; margin-top:1.5px; margin-bottom:2px;">
    <tr>
      <td><div class="mini"><span class="mname">BAB</span><span class="mval">${pcstring('ATTACK.MELEE')}</span></div></td>
      <td><div class="mini"><span class="mname">Melee Hit</span><span class="mval">${pcstring('ATTACK.MELEE.TOTAL')}</span></div></td>
      <td><div class="mini"><span class="mname">Ranged Hit</span><span class="mval">${pcstring('ATTACK.RANGED.TOTAL')}</span></div></td>
      <td><div class="mini"><span class="mname">Hit Die</span><span class="mval">${pcstring('HITDICE')}</span></div></td>
      <td><div class="mini"><span class="mname">CMB</span><span class="mval">${pcstring('VAR.CMB.INTVAL.SIGN')}</span></div></td>
      <td><div class="mini"><span class="mname">CMD</span><span class="mval">${pcstring('VAR.CMD.INTVAL')}</span></div></td>
      <td><div class="mini"><span class="mname">SR</span><span class="mval"><#if (pcstring('SR') != '')>${pcstring('SR')}<#else>0</#if></span></div></td>
    </tr>
  </table>
  <div class="help-text">
    <b>CMB</b> = BAB + Str + Size &mdash; <b>CMD</b> = 10 + BAB + Str + Dex + Size &mdash;
    <b>SR</b>: attacker rolls d20 + caster level &ge; SR to affect you
  </div>
</div>

<!-- ═══ SKILLS ═══ -->
<div style="">
<h2>Skills</h2>
<#assign skillCount = pcvar('count("SKILLSIT", "VIEW=VISIBLE_EXPORT")') />
<#assign skillHalf = (skillCount / 2)?int />
<div class="two-col" style="gap:4px; margin-bottom:2px; align-items:start;">
  <div>
    <table style="table-layout:fixed;">
      <tr>
        <th class="border" align="left" style="width:55%;">Skill</th>
        <th class="border" style="width:15%;" align="center">Total</th>
        <th class="border" style="width:15%;" align="center">+ Rnks</th>
        <th class="border" style="width:15%;" align="center">+ Misc</th>
      </tr>
<@loop from=0 to=skillHalf-1 ; sk , sk_has_next>
  <#assign skMisc = pcvar('SKILLSIT.${sk}.MISC') />
  <#assign isClassSkill = (skMisc >= 3) />
      <tr <#if (sk % 2 = 0)>class="shaded"</#if>>
        <td class="border" style="font-size:7.25pt;<#if isClassSkill>font-weight:bold;</#if>">
          <#if pcboolean("SKILLSIT.${sk}.UNTRAINED")>&#9670;</#if>${pcstring('SKILLSIT.${sk}')}<#if (pcstring('SKILLSIT.${sk}.ACPv') != "v")>*</#if>
          <br/><span style="font-size:5.5pt;color:var(--c4);text-transform:uppercase;letter-spacing:0.5px;font-weight:normal;">${pcstring('SKILLSIT.${sk}.ABILITY')} (+${pcstring('SKILLSIT.${sk}.ABMOD')})</span>
        </td>
        <td class="border val">${pcstring('SKILLSIT.${sk}.TOTAL')}</td>
        <td class="border" align="center">${pcstring("SKILLSIT.${sk}.RANK")?replace("\\.0","","rf")}</td>
        <td class="border" align="center">${pcstring('SKILLSIT.${sk}.MISC')}</td>
      </tr>
</@loop>
    </table>
  </div>
  <div>
    <table style="table-layout:fixed;">
      <tr>
        <th class="border" align="left" style="width:55%;">Skill</th>
        <th class="border" style="width:15%;" align="center">Total</th>
        <th class="border" style="width:15%;" align="center">+ Rnks</th>
        <th class="border" style="width:15%;" align="center">+ Misc</th>
      </tr>
<@loop from=skillHalf to=skillCount-1 ; sk , sk_has_next>
  <#assign skMisc = pcvar('SKILLSIT.${sk}.MISC') />
  <#assign isClassSkill = (skMisc >= 3) />
      <tr <#if (sk % 2 = 0)>class="shaded"</#if>>
        <td class="border" style="font-size:7.25pt;<#if isClassSkill>font-weight:bold;</#if>">
          <#if pcboolean("SKILLSIT.${sk}.UNTRAINED")>&#9670;</#if>${pcstring('SKILLSIT.${sk}')}<#if (pcstring('SKILLSIT.${sk}.ACPv') != "v")>*</#if>
          <br/><span style="font-size:5.5pt;color:var(--c4);text-transform:uppercase;letter-spacing:0.5px;font-weight:normal;">${pcstring('SKILLSIT.${sk}.ABILITY')} (+${pcstring('SKILLSIT.${sk}.ABMOD')})</span>
        </td>
        <td class="border val">${pcstring('SKILLSIT.${sk}.TOTAL')}</td>
        <td class="border" align="center">${pcstring("SKILLSIT.${sk}.RANK")?replace("\\.0","","rf")}</td>
        <td class="border" align="center">${pcstring('SKILLSIT.${sk}.MISC')}</td>
      </tr>
</@loop>
    </table>
  </div>
</div>
<div style="font-size:6.25pt; margin-top:1.5px;"><b>Bold</b> = class skill with rank (+3 bonus) &nbsp; &#9670; = usable untrained &nbsp; * = armor check penalty applies</div>
<div class="help-text" style="margin-top:1.5px;">
  Class skills give +3 if you have &ge;1 rank &mdash;
  Max ranks = character level &mdash;
  Take 10: non-stressful, treat roll as 10 &mdash;
  Take 20: 20&times; longer, treat roll as 20 (no fail consequence)
</div>
<div class="note-box" style="margin-top:1.5px;">
  <span style="font-size:6.25pt;font-weight:bold;">Conditional Skill Modifiers:</span><br/>
  <#assign hasSkillCond = false />
  <@loop from=0 to=pcvar('countdistinct("ABILITIES","ASPECT=SkillBonus")-1') ; ab , ab_has_next>
    <#assign hasSkillCond = true />
    &bull; ${pcstring('ABILITYALL.ANY.${ab}.ASPECT=SkillBonus.ASPECT.SkillBonus')}<br/>
  </@loop>
  <#if !hasSkillCond><span style="color:var(--c4);font-size:7.25pt;">No modifiers</span></#if>
</div>
</div>

<div class="two-col" style="gap:6px; align-items:start;">

<!-- LEFT: Special Qualities -->
<div>
<#if (pcvar('countdistinct("ABILITIES","CATEGORY=Special Ability","TYPE=SpecialQuality","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")') > 0)>
<div class="no-break">
<h2>Special Qualities</h2>
<div style="margin-bottom:2px;">
  <table style="table-layout:fixed;">
<@loop from=0 to=pcvar('countdistinct("ABILITIES","CATEGORY=Special Ability","TYPE=SpecialQuality","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1') ; sq , sq_has_next>
    <tr>
      <td class="border" style="font-size:7.25pt;">
        <b>${pcstring('ABILITYALL.Special Ability.VISIBLE.${sq}.TYPE=SpecialQuality')}</b><br/>
        <span class="src">[${pcstring('ABILITYALL.Special Ability.VISIBLE.${sq}.TYPE=SpecialQuality.SOURCE')}]</span><br/>
        <span style="font-size:6.25pt;">${pcstring('ABILITYALL.Special Ability.VISIBLE.${sq}.TYPE=SpecialQuality.DESC')}</span>
      </td>
    </tr>
</@loop>
  </table>
</div>
</div>
</#if>
</div>

<!-- RIGHT: Feats, Traits, Domains -->
<div>
<div class="no-break">
<h2>Feats</h2>
<div style="margin-bottom:2px;">
  <table style="table-layout:fixed;">
<@loop from=0 to=pcvar('countdistinct("ABILITIES","CATEGORY=FEAT","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1') ; ft , ft_has_next>
    <tr>
      <td class="border" style="font-size:7.25pt;">
        <b>${pcstring('ABILITYALL.Feat.VISIBLE.${ft}')}</b><br/>
        <span class="src">[${pcstring('ABILITYALL.Feat.VISIBLE.${ft}.SOURCE')}]</span><br/>
        <span style="font-size:6.25pt;">${pcstring('ABILITYALL.Feat.VISIBLE.${ft}.BENEFIT')}</span>
      </td>
    </tr>
</@loop>
  </table>
</div>
</div>

<#if (pcvar('count("ABILITIES","CATEGORY=Special Ability","TYPE=Trait","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")') > 0)>
<div class="no-break">
<h2>Traits</h2>
<div style="margin-bottom:2px;">
  <table style="table-layout:fixed;">
<@loop from=0 to=pcvar('count("ABILITIES","CATEGORY=Special Ability","TYPE=Trait","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1') ; tr , tr_has_next>
    <tr>
      <td class="border" style="font-size:7.25pt;">
        <b>${pcstring('ABILITYALL.Special Ability.VISIBLE.${tr}.TYPE=Trait')}</b><br/>
        <span class="src">[${pcstring('ABILITYALL.Special Ability.VISIBLE.${tr}.TYPE=Trait.SOURCE')}]</span><br/>
        <span style="font-size:6.25pt;">${pcstring('ABILITYALL.Special Ability.VISIBLE.${tr}.TYPE=Trait.DESC')}</span>
      </td>
    </tr>
</@loop>
  </table>
</div>
</div>
</#if>

<#if (pcstring('DOMAIN.1') != '')>
<div class="no-break">
<h2>Domains</h2>
<div style="margin-bottom:2px;">
  <table style="table-layout:fixed;">
<@loop from=1 to=pcvar('COUNT[DOMAINS]') ; dm , dm_has_next>
    <tr>
      <td class="border" style="font-size:7.25pt;">
        <b>${pcstring('DOMAIN.${dm}')}</b><br/>
        <span style="font-size:6.25pt;">${pcstring('DOMAIN.${dm}.POWER')}</span>
      </td>
    </tr>
</@loop>
  </table>
</div>
</div>
</#if>

</div>

</div><!-- end two-col: Special Qualities | Feats/Traits/Domains -->

<div class="no-break">
<h2>Weapons</h2>
<div style="margin-bottom:2px;">
  <table style="table-layout:fixed;">
    <tr>
      <th class="border" align="left" style="width:28%;">Weapon</th>
      <th class="border" style="width:10%;">1H-P</th>
      <th class="border" style="width:10%;">2H</th>
      <th class="border" style="width:10%;">2W-P</th>
      <th class="border" style="width:16%;">DMG (2H)</th>
      <th class="border" style="width:12%;">Crit</th>
    </tr>
<@loop from=0 to=pcvar('COUNT[EQTYPE.Weapon]-1') ; wp , wp_has_next>
<#if (pcstring("WEAPON.${wp}.NAME") != "")>
<#assign wCat = pcstring("WEAPON.${wp}.CATEGORY")?lower_case />
<#assign isRanged = wCat?contains("ranged") />
<#assign isLight = pcboolean("WEAPON.${wp}.ISTYPE.Light") />
<#assign wType = pcstring("WEAPON.${wp}.TYPE")?lower_case />
<#assign wName = pcstring("WEAPON.${wp}.NAME")?lower_case />
<#assign isSplash = pcboolean("WEAPON.${wp}.ISTYPE.Splash") || wType?contains("splash") || wName?contains("splash") />
<#assign wTypeFull = "" />
<#if wType?contains("p")><#assign wTypeFull = wTypeFull + "Piercing " /></#if>
<#if wType?contains("s")><#assign wTypeFull = wTypeFull + "Slashing " /></#if>
<#if wType?contains("b")><#assign wTypeFull = wTypeFull + "Bludgeoning" /></#if>
<#assign wTypeFull = wTypeFull?trim />
    <tr>
      <td class="border" style="font-size:7.25pt;">
        <b>${pcstring('WEAPON.${wp}.NAME')}</b><#if isLight> &#9651;</#if><br/>
        <span style="font-size:6.25pt;color:var(--c4);">${wTypeFull}</span>
      </td>
      <#if isRanged>
        <td class="border val" colspan="3" align="center" style="font-size:7.25pt;">${pcstring('WEAPON.${wp}.TOTALHIT')} (ranged, ${pcstring('WEAPON.${wp}.RANGE')})</td>
        <td class="border" align="center" style="font-size:7.25pt;"><#if isSplash>${pcstring('WEAPON.${wp}.BASICDAMAGE')?replace("[+\\-]\\d+\\s*$", "", "r")}<#else>${pcstring('WEAPON.${wp}.DAMAGE')}</#if></td>
      <#else>
        <td class="border val">${pcstring('WEAPON.${wp}.BASEHIT')}</td>
        <td class="border val">${pcstring('WEAPON.${wp}.THHIT')}</td>
        <td class="border val">${pcstring('WEAPON.${wp}.TWPHITH')}</td>
        <td class="border" align="center" style="font-size:7.25pt;">
          ${pcstring('WEAPON.${wp}.BASICDAMAGE')}<br/>
          <span style="font-size:6.25pt;color:var(--c4);">2H: ${pcstring('WEAPON.${wp}.THDAMAGE')}</span>
        </td>
      </#if>
      <td class="border" align="center" style="font-size:7.25pt;">${pcstring('WEAPON.${wp}.CRIT')}/x${pcstring('WEAPON.${wp}.MULT')}</td>
    </tr>
    <#if isRanged>
    <tr>
      <td colspan="6" style="font-size:6.25pt;background:var(--c6);padding:3px 6px;border:1px solid var(--c5);">
        <b>Range increments</b> (&minus;2 per increment):
        &nbsp;|&nbsp; 2x: ${pcstring('WEAPON.${wp}.RANGELIST.1.TOTALHIT')}
        &nbsp;|&nbsp; 3x: ${pcstring('WEAPON.${wp}.RANGELIST.2.TOTALHIT')}
        &nbsp;|&nbsp; 4x: ${pcstring('WEAPON.${wp}.RANGELIST.3.TOTALHIT')}
        &nbsp;|&nbsp; 5x: ${pcstring('WEAPON.${wp}.RANGELIST.4.TOTALHIT')}
        &nbsp;(max 5)
      </td>
    </tr>
    </#if>
    <#if (pcstring('WEAPON.${wp}.SPROP') != "")>
    <tr>
      <td colspan="6" style="font-size:6.25pt;background:var(--c5);padding:3px 6px;border:1px solid var(--c5); font-style: italic;">
        <b>Special:</b> ${pcstring('WEAPON.${wp}.SPROP')}
      </td>
    </tr>
    </#if>
</#if>
</@loop>
<#assign charSize = pcstring('SIZE')?lower_case />
<#assign sizeKey = charSize />
<#if charSize?starts_with("tiny")><#assign sizeKey = "t" />
<#elseif charSize?starts_with("small")><#assign sizeKey = "s" />
<#elseif charSize?starts_with("medium")><#assign sizeKey = "m" />
<#elseif charSize?starts_with("large")><#assign sizeKey = "l" />
<#elseif charSize?starts_with("huge")><#assign sizeKey = "h" />
<#elseif charSize?starts_with("gargantuan")><#assign sizeKey = "g" />
<#elseif charSize?starts_with("colossal")><#assign sizeKey = "c" />
</#if>
<#assign unarmedDie = "1d3" />
<#if sizeKey == "t" || sizeKey == "s"><#assign unarmedDie = "1d2" />
<#elseif sizeKey == "m"><#assign unarmedDie = "1d3" />
<#elseif sizeKey == "l"><#assign unarmedDie = "1d4" />
<#elseif sizeKey == "h"><#assign unarmedDie = "1d6" />
<#elseif sizeKey == "g"><#assign unarmedDie = "1d8" />
<#elseif sizeKey == "c"><#assign unarmedDie = "2d6" />
</#if>
<#assign strMod = pcstring('STAT.0.MOD.SIGN') />
    <tr style="background:var(--c6);">
      <td class="border" style="font-size:7.25pt;">
        <b>Unarmed</b> &#9651;<br/>
        <span style="font-size:6.25pt;color:var(--c4);">Bludgeoning</span>
      </td>
      <td class="border val">${pcstring('ATTACK.MELEE.TOTAL')}</td>
      <td class="border val">${pcstring('ATTACK.MELEE.TOTAL')}</td>
      <td class="border val">${pcstring('ATTACK.MELEE.TOTAL')}</td>
      <td class="border" align="center" style="font-size:7.25pt;">
        ${unarmedDie}${strMod}<br/>
        <span style="font-size:6.25pt;color:var(--c4);">2H: ${unarmedDie}${strMod}</span>
      </td>
      <td class="border" align="center" style="font-size:7.25pt;">20/x2</td>
    </tr>
  </table>
  <div class="help-text">
    <b>1H-P</b> = one-handed primary &nbsp;
    <b>2H</b> = two-handed, adds 1.5&times; Str to damage &nbsp;
    <b>2W-P</b> = two weapons, primary hand &nbsp;
    &#9651; = light weapon (Small or Tiny size)
  </div>
  <div class="help-text" style="margin-top:1px;">
    Two-weapon attack penalties &mdash;
    <b>2W-P</b>: &minus;4 (or &minus;2 with TWF feat) &nbsp;
    <b>2W-O(L) light off-hand</b>: &minus;4/&minus;4 (or &minus;2/&minus;2 with TWF feat) &nbsp;
    <b>2W-O(H) heavy off-hand</b>: &minus;4/&minus;8 (or &minus;2/&minus;6 with TWF feat) &mdash;
    Power Attack: &minus;1 hit per 4 BAB for +2 dmg (+3 two-handed)
  </div>
</div>
</div>

<div class="compact-combat-grid">
  <div><div class="no-break">
<h2>Special Attacks</h2>
<div style="margin-bottom:2px;">
  <table style="table-layout:fixed;">
    <#if (pcvar('countdistinct("ABILITIES","CATEGORY=Special Ability","TYPE=SpecialAttack","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")') > 0)>
    <@loop from=0 to=pcvar('countdistinct("ABILITIES","CATEGORY=Special Ability","TYPE=SpecialAttack","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1') ; sa , sa_has_next>
    <tr>
      <td class="border" style="font-size:7.25pt;">
        <b>${pcstring('ABILITYALL.Special Ability.VISIBLE.${sa}.TYPE=SpecialAttack')}</b><br />
        <span class="src">[${pcstring('ABILITYALL.Special Ability.VISIBLE.${sa}.TYPE=SpecialAttack.SOURCE')}]</span><br/>
        <span style="font-size:6.25pt;">${pcstring('ABILITYALL.Special Ability.VISIBLE.${sa}.TYPE=SpecialAttack.DESC')}</span>
      </td>
      <td class="border" align="center" style="font-size:7.25pt; width:35%;">
        <#assign saUses = pcstring('ABILITYALL.Special Ability.VISIBLE.${sa}.TYPE=SpecialAttack.ASPECT.UsesPerDay') />
        <#if (saUses != "")>
          Uses/day: <b>${saUses}</b><br/>
          <#assign saUsesN = pcvar('ABILITYALL.Special Ability.VISIBLE.${sa}.TYPE=SpecialAttack.ASPECT.UsesPerDay.INTVAL') />
          <#if (saUsesN > 0)>
          <span style="font-size:10pt; letter-spacing:3px;"><@loop from=1 to=saUsesN>&#9744;</@loop></span>
          </#if>
        </#if>
      </td>
    </tr>
    </@loop>
    </#if>
  </table>
</div>
</div>
</div>
  <div><div class="no-break" style="margin-bottom:2px;">
  <h2>Combat Maneuvers</h2>
  <table style="table-layout:fixed; margin-bottom:2px;">
    <tr>
      <th class="border" align="left" style="width:18%;">Maneuver</th>
      <th class="border" style="width:10%;">CMB</th>
      <th class="border" style="width:10%;">CMD</th>
      <th class="border" align="left" style="width:62%;">Notes</th>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:7.25pt;">Grapple</td>
      <td class="border val">${pcstring('VAR.CMB_Grapple.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_Grapple.INTVAL')}</td>
      <td class="border" style="font-size:6.25pt;">Pin, tie up, damage, or move a grappled foe. Grappled = &minus;2 attack/AC, no two-handed.</td>
    </tr>
    <tr>
      <td class="border" style="font-size:7.25pt;">Trip</td>
      <td class="border val">${pcstring('VAR.CMB_Trip.INTVAL.SIGN')}</td>
      <td class="border val"><#if (pcvar("CantBeTripped") != 0)>Immune<#else>${pcstring('VAR.CMD_Trip.INTVAL')}</#if></td>
      <td class="border" style="font-size:6.25pt;">Knock prone. Prone = &minus;4 melee attack, &minus;4 AC vs melee, +4 AC vs ranged.</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:7.25pt;">Disarm</td>
      <td class="border val">${pcstring('VAR.CMB_Disarm.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_Disarm.INTVAL')}</td>
      <td class="border" style="font-size:6.25pt;">Knock weapon from foe. Beat CMD by 10+ = item lands 10ft away.</td>
    </tr>
    <tr>
      <td class="border" style="font-size:7.25pt;">Bull Rush</td>
      <td class="border val">${pcstring('VAR.CMB_BullRush.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_BullRush.INTVAL')}</td>
      <td class="border" style="font-size:6.25pt;">Push foe back 5ft + 5ft per 5 over CMD. You may follow.</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:7.25pt;">Sunder</td>
      <td class="border val">${pcstring('VAR.CMB_Sunder.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_Sunder.INTVAL')}</td>
      <td class="border" style="font-size:6.25pt;">Damage a held/worn item. Broken = &minus;2 attack/damage or halved effectiveness.</td>
    </tr>
    <tr>
      <td class="border" style="font-size:7.25pt;">Overrun</td>
      <td class="border val">${pcstring('VAR.CMB_Overrun.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_Overrun.INTVAL')}</td>
      <td class="border" style="font-size:6.25pt;">Move through foe's space. Fail = blocked; beat by 5+ = foe prone.</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:7.25pt;">Dirty Trick</td>
      <td class="border val">${pcstring('VAR.CMB_DirtyTrick.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_DirtyTrick.INTVAL')}</td>
      <td class="border" style="font-size:6.25pt;">Blind, entangle, or sicken 1 round (+1 per 5 over CMD). Std action to remove.</td>
    </tr>
    <tr>
      <td class="border" style="font-size:7.25pt;">Drag</td>
      <td class="border val">${pcstring('VAR.CMB_Drag.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_Drag.INTVAL')}</td>
      <td class="border" style="font-size:6.25pt;">Pull foe 5ft + 5ft per 5 over CMD toward you. Must move with them.</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:7.25pt;">Reposition</td>
      <td class="border val">${pcstring('VAR.CMB_Reposition.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_Reposition.INTVAL')}</td>
      <td class="border" style="font-size:6.25pt;">Move foe to any adjacent square. Foe must remain adjacent.</td>
    </tr>
    <tr>
      <td class="border" style="font-size:7.25pt;">Steal</td>
      <td class="border val">${pcstring('VAR.CMB_Steal.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_Steal.INTVAL')}</td>
      <td class="border" style="font-size:6.25pt;">Take one carried/worn item (not wielded). No free hand required.</td>
    </tr>
  </table>
  <div class="help-text">All maneuvers provoke AoO unless you have the Improved feat for that maneuver &mdash; failing by 5+ lets the foe attempt the same maneuver on you as a free action</div>
</div>
</div>
</div>
<div class="note-box no-break" style="margin-bottom:2px;">
  <span style="font-size:6.25pt;font-weight:bold;">Conditional Attack / Combat Modifiers:</span><br/>
  <#assign hasCombatCond = false />
  <@loop from=0 to=pcvar('countdistinct("ABILITIES","ASPECT=CombatBonus")-1') ; ab , ab_has_next>
    <#assign hasCombatCond = true />
    &bull; ${pcstring('ABILITYALL.ANY.${ab}.ASPECT=CombatBonus.ASPECT.CombatBonus')}<br/>
  </@loop>
  <#if !hasCombatCond><span style="color:var(--c4);font-size:7.25pt;">No modifiers</span></#if>
</div>

<div class="no-break">
<h2>Armor &amp; Shields</h2>
<div style="margin-bottom:2px;">
  <table style="table-layout:fixed;">
    <tr>
      <th class="border" align="left" style="width:28%;">Item</th>
      <th class="border" style="width:10%;">Type</th>
      <th class="border" style="width:11%;">AC Bonus</th>
      <th class="border" style="width:11%;">Max Dex*</th>
      <th class="border" style="width:11%;">Check Pen&dagger;</th>
      <th class="border" style="width:11%;">Spell Fail</th>
      <th style="width:18%;"></th>
    </tr>
<@loop from=0 to=2 ; ar , ar_has_next>
<#if (pcstring("ARMOR.${ar}.NAME") != "")>
    <tr>
      <td class="border" style="font-size:7.25pt;"><b>${pcstring('ARMOR.EQUIPPED.${ar}.NAME')}</b></td>
      <td class="border" align="center">${pcstring('ARMOR.EQUIPPED.${ar}.TYPE')}</td>
      <td class="border val">${pcstring('ARMOR.EQUIPPED.${ar}.TOTALAC')}</td>
      <td class="border" align="center">${pcstring('ARMOR.EQUIPPED.${ar}.MAXDEX')}</td>
      <td class="border" align="center">${pcstring('ARMOR.EQUIPPED.${ar}.ACCHECK')}</td>
      <td class="border" align="center">${pcstring('ARMOR.EQUIPPED.${ar}.SPELLFAIL')}</td>
      <td></td>
    </tr>
</#if>
</@loop>
  </table>
  <div class="help-text">
    * <b>Max Dex</b>: Dex bonus to AC cannot exceed this &mdash;
    &dagger; <b>Check Penalty</b>: applies to Str/Dex skill checks and attacks if not proficient &mdash;
    <b>Spell Failure</b>: % chance arcane spells fail (divine spells ignore this) &mdash;
    Heavy armor reduces speed to 20ft &mdash; sleeping in medium/heavy armor leaves you fatigued
  </div>
</div>
</div>

<h2 style="">Prepared Spells</h2>
<div class="help-text" style="margin-bottom:2px;">
  Spell descriptions shown here come from PCGen's built-in effect summary. For the full text of any spell, refer to the source book listed in brackets &mdash; or search the spell name on the Archives of Nethys (aonprd.com) for free online access to the complete Pathfinder rules text.
</div>
<@loop from=2 to=pcvar('COUNT[SPELLBOOKS]-1') ; spellbook , spellbook_has_next>
<@loop from=pcvar('COUNT[SPELLRACE]') to=pcvar('COUNT[SPELLRACE]+COUNT[CLASSES]-1') ; class , class_has_next>
<#if (pcstring("SPELLLISTCLASS.${class}") != '')>
  <div class="no-break" style="font-size:7.25pt;font-weight:bold;margin:6px 0 0 0;background:var(--c6);padding:2px 6px;border-left:3px solid var(--c2);">
    ${pcstring('SPELLBOOKNAME.${spellbook}')} &mdash; ${pcstring('SPELLLISTCLASS.${class}')}
  </div>
  <@loop from=0 to=9 ; level , level_has_next>
    <#assign spelllevelcount = pcvar('COUNT[SPELLSINBOOK.${class}.${spellbook}.${level}]') />
    <#if (spelllevelcount > 0)>
      <div class="spell-level-block">
        <div class="spell-level-head">
          <#if (level == 0)>Cantrips (Level 0) &mdash; Unlimited Uses<#else>Level ${level} &mdash; Prepared: ${pcstring('SPELLLISTCAST.${class}.${level}')}</#if>
        </div>
        <table style="table-layout:fixed;margin-bottom:2px;">
          <tr>
            <th class="border" align="left" style="width:23%;">Spell</th>
            <th class="border" style="width:7%;" align="center">Uses</th>
            <th class="border" style="width:14%;" align="center">Save, DC &amp; SR</th>
            <th class="border" style="width:16%;" align="center">Range, Time &amp; Duration</th>
            <th class="border" align="left" style="width:40%;">Effect / Description</th>
          </tr>
<@loop from=0 to=spelllevelcount-1 ; spell , spell_has_next>
          <#assign spSave = pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.SAVEINFO') />
          <#assign spDC   = pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.DC') />
          <#assign spSR   = pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.SR') />
          <#assign spSaveShort = spSave />
          <#if spSave?lower_case?contains("fortitude")><#assign spSaveShort = "Fortitude" /></#if>
          <#if spSave?lower_case?contains("reflex")><#assign spSaveShort = "Reflex" /></#if>
          <#if spSave?lower_case?contains("will")><#assign spSaveShort = "Will" /></#if>
          <#assign hasNoSave = (spSave = "None" || spSave = "" || spSave?lower_case = "none") />
          <tr>
            <td class="border" style="font-size:7.25pt;">
              <b>${pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.BONUSSPELL')}${pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.NAME')}</b><br/>
              <i style="font-size:6.25pt;">${pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.SCHOOL')}</i><br />
              <span class="src">[${pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.SOURCE')}]</span>
            </td>
            <td class="border" align="center" style="font-size:9.5pt;letter-spacing:1px;">
              <#if (level == 0)>&infin;<#else><@loop from=1 to=pcvar("SPELLMEM.${class}.${spellbook}.${level}.${spell}.TIMES")>&#9744;</@loop></#if>
            </td>
            <td class="border" align="center" style="font-size:7.25pt;">
              <#if !hasNoSave><b>${spSaveShort}</b><br/>DC ${spDC}<br/></#if>
              SR: <#if (spSR != "")>${spSR}<#else>&mdash;</#if>
            </td>
            <td class="border" align="center" style="font-size:6.25pt;">
              ${pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.RANGE')}<br/>
              ${pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.CASTINGTIME')}<br/>
              ${pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.DURATION')}
            </td>
            <td class="border" style="font-size:6.25pt;">${pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.EFFECT')}</td>
          </tr>
</@loop>
        </table>
      </div>
    </#if>
  </@loop>
</#if>
</@loop>
</@loop>

<div class="compact-reference-grid">
  <div><div class="no-break" style="margin-bottom:2px;">
  <h2>Concentration Quick Reference</h2>
  <div class="note-box" style="margin-bottom:2px;">
    <b>Concentration Check</b><br/>
    d20 + caster level + spellcasting ability modifier + other bonuses<br/>
    Spellcasting ability modifier is INT (wizard), WIS (cleric/druid), CHA (sorcerer/bard/oracle), etc.
    <#assign hasConcClass = false />
    <@loop from=pcvar('COUNT[SPELLRACE]') to=pcvar('COUNT[SPELLRACE]+COUNT[CLASSES]-1') ; class , class_has_next>
      <#if (pcstring("SPELLLISTCLASS.${class}") != '' && pcstring("SPELLLISTCLASS.${class}.CONCENTRATION") != '')>
        <#assign hasConcClass = true />
        <br/>&bull; <b>${pcstring('SPELLLISTCLASS.${class}')}</b>: d20${pcstring('SPELLLISTCLASS.${class}.CONCENTRATION')} total
        (CL ${pcstring('SPELLLISTCLASS.${class}.CASTERLEVEL')} + ${pcstring('SPELLLISTDCSTAT.${class}.0')})
      </#if>
    </@loop>
    <#if !hasConcClass><br/><span style="color:var(--c4);">No spellcasting class concentration values found.</span></#if>
  </div>
  <table style="table-layout:fixed; margin-bottom:2px;">
    <tr>
      <th class="border" align="left" style="width:50%;">When A Check Is Required</th>
      <th class="border" align="left" style="width:50%;">Concentration DC</th>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:7.25pt;">Cast defensively (to avoid provoking)</td>
      <td class="border" style="font-size:7.25pt;">15 + (2 &times; spell level)</td>
    </tr>
    <tr>
      <td class="border" style="font-size:7.25pt;">Take damage while casting</td>
      <td class="border" style="font-size:7.25pt;">10 + damage dealt + spell level</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:7.25pt;">Taking continuous damage while casting</td>
      <td class="border" style="font-size:7.25pt;">10 + half last damage dealt + spell level</td>
    </tr>
    <tr>
      <td class="border" style="font-size:7.25pt;">Vigorous motion (mount, rough vehicle, choppy water)</td>
      <td class="border" style="font-size:7.25pt;">10 + spell level</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:7.25pt;">Violent motion (violent weather, heavy turbulence)</td>
      <td class="border" style="font-size:7.25pt;">15 + spell level</td>
    </tr>
    <tr>
      <td class="border" style="font-size:7.25pt;">Extra violent motion (earthquake-level disruption)</td>
      <td class="border" style="font-size:7.25pt;">20 + spell level</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:7.25pt;">Weather with high wind, rain, or debris</td>
      <td class="border" style="font-size:7.25pt;">5 + spell level</td>
    </tr>
    <tr>
      <td class="border" style="font-size:7.25pt;">Entangled while casting</td>
      <td class="border" style="font-size:7.25pt;">15 + spell level</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:7.25pt;">Grappled or pinned while casting</td>
      <td class="border" style="font-size:7.25pt;">10 + grappler CMB + spell level</td>
    </tr>
  </table>
  <div class="help-text">
    <b>Common Modifiers</b>: <b>Combat Casting</b> gives +4 on concentration checks to cast defensively or while grappled/pinned &mdash;
    ability score increases, feats, traits, class features, and situational bonuses also apply.<br/>
    If you fail the concentration check, the spell is lost and has no effect.
  </div>
</div>
</div>
  <div><!-- ═══ RULES REFERENCE ═══ -->
<div class="no-break" style="margin-bottom:2px;">
  <h2>Rules Reference</h2>
  <div class="note-box" style="margin-bottom:2px;">
    <b>Common Quick Rules</b><br/>
    &bull; <b>Flanking</b>: +2 attack.<br/>
    &bull; <b>Aid Another</b>: DC 10 check for ally +2 attack, AC, or check.<br/>
    &bull; <b>Cover / Soft Cover</b>: +4 AC (+2 Reflex); creatures can grant soft cover.<br/>
    &bull; <b>Ranged Into Melee</b>: &minus;4 to hit. Target 2 size &gt; ally? &minus;2 to hit. 3 sizes or Precise Shot? No penalty.<br/>
    &bull; <b>Concealment</b>: Roll to hit and then 1d100 that should be greater than % of concealment (20%/50%).<br/>
    &bull; <b>Casting Defensively</b>: Concentration DC = 15 + (2 &times; spell level).<br/>
    &bull; <b>DR / Resistance</b>: DR reduces weapon damage; resistance reduces matching energy damage.<br/>
    &bull; <b>Reach / Threatened Squares</b>: you threaten where you can melee; leaving can provoke.<br/>
    &bull; <b>Swift / Immediate</b>: one per round; immediate uses next turn's swift.<br/>
    &bull; <b>Criticals</b>: Nat 20 threatens; confirm with another hit roll (not another 20).<br/>
    &bull; <b>Dying / Stabilize</b>: &lt;0 HP lose 1 HP/round; stabilize check DC 10 + negative HP.
  </div>
</div>
</div>
</div>
<div class="compact-page-start"><div class="no-break">
<h2>Equipment</h2>
<div style="margin-bottom:2px;">
  <table style="table-layout:fixed;">
    <tr>
      <th class="border" align="left" style="width:30%;">Item</th>
      <th class="border" style="width:13%;">Location</th>
      <th class="border" style="width:6%;">Qty</th>
      <th class="border" style="width:10%;">Weight</th>
      <th class="border" style="width:10%;">Cost</th>
      <th class="border" align="center" style="width:31%;">Uses (check off when used)</th>
    </tr>
<@loop from=0 to=pcvar('COUNT[EQUIPMENT.Not.Coin.NOT.Gem]-1') ; eq , eq_has_next>
<#assign eqType = pcstring("EQ.Not.Coin.NOT.Gem.${eq}.TYPE")?lower_case />
<#assign eqQty = pcvar("EQ.Not.Coin.NOT.Gem.${eq}.QTY") />
<#assign eqCharges = pcvar("EQ.Not.Coin.NOT.Gem.${eq}.CHARGES") />
<#assign isUsable = eqType?contains("consumable") || eqType?contains("potion") || eqType?contains("ammunition") || eqType?contains("wand") || eqType?contains("scroll") || eqCharges gt 0 />
<#assign eqSprop = pcstring('EQ.Not.Coin.NOT.Gem.${eq}.SPROP') />
<#assign eqDesc = pcstring('EQ.Not.Coin.NOT.Gem.${eq}.DESC') />
<#assign hasDetail = (eqSprop != "" || eqDesc != "") />
    <tr>
      <td class="border" style="font-size:7.25pt;">${pcstring('EQ.Not.Coin.NOT.Gem.${eq}.NAME.MAGIC~<b>~</b>')}</td>
      <td class="border" align="center" style="font-size:7.25pt;">${pcstring('EQ.Not.Coin.NOT.Gem.${eq}.LOCATION')}</td>
      <td class="border" align="center">${pcstring('EQ.Not.Coin.NOT.Gem.${eq}.QTY')}</td>
      <td class="border" align="center">${pcstring('EQ.Not.Coin.NOT.Gem.${eq}.WT')}</td>
      <td class="border" align="center">${pcstring('EQ.Not.Coin.NOT.Gem.${eq}.COST')}</td>
      <td class="border" align="center" style="font-size:9.5pt;letter-spacing:2px;padding:2px 4px;">
        <#if isUsable>
          <#if eqCharges gt 0>
            <@loop from=1 to=eqCharges>&#9744;</@loop>
          <#else>
            <@loop from=1 to=eqQty?int>&#9744;</@loop>
          </#if>
        </#if>
      </td>
    </tr>
    <#if hasDetail>
    <tr>
      <td colspan="6" class="eq-detail">
        <#if (eqSprop != "")><b>Special:</b> ${eqSprop}<#if (eqDesc != "")> &mdash; </#if></#if><#if (eqDesc != "")>${eqDesc}</#if>
      </td>
    </tr>
    </#if>
</@loop>
    <tr>
      <td colspan="2" align="right" style="font-size:7.25pt;"><b>Totals:</b></td>
      <td class="border" colspan="2" align="center">${pcstring('TOTAL.WEIGHT')}</td>
      <td class="border" align="center">${pcstring('TOTAL.VALUE')}</td>
      <td></td>
    </tr>
  </table>
  <div class="help-text">
    Light load: no penalty &mdash;
    Medium: &minus;3 check penalty, max Dex +3, &minus;10ft speed &mdash;
    Heavy: &minus;6 check penalty, max Dex +1, &minus;10ft speed &mdash;
    Lift overhead = heavy max; lift off ground = 2&times;; drag = 5&times;
  </div>
</div>
</div>

<div class="no-break">
<div class="two-col" style="margin-bottom:2px;">
  <div class="mini">
    <span class="mname">Encumbrance</span>
    <span class="mval" style="font-size:9.5pt;">${pcstring('TOTAL.WEIGHT')}</span>
    <span style="font-size:7.25pt;display:block;">Light: ${pcstring('WEIGHT.LIGHT')} / Med: ${pcstring('WEIGHT.MEDIUM')} / Heavy: ${pcstring('WEIGHT.HEAVY')}</span>
  </div>
  <div class="mini">
    <span class="mname">Unspent Gold</span>
    <span class="mval" style="font-size:9.5pt;">${pcstring('GOLD.TRUNC')} gp</span>
  </div>
</div>
</div>
</div>
<div class="compact-reference-grid compact-page-start">
  <div><div class="no-break" style="">
<h2>Biography</h2>
<div class="note-box" style="margin-bottom:2px;">
  <#assign bioRaw = pcstring('BIO') />
  <#assign bioRaw = bioRaw?replace("&lt;","<") />
  <#assign bioRaw = bioRaw?replace("&gt;",">") />
  <#assign bioRaw = bioRaw?replace("&amp;","&") />
  <#assign bioRaw = bioRaw?replace("&quot;",'"') />
  <#assign bioRaw = bioRaw?replace("&#39;","'") />
  ${bioRaw}
</div>
</div>
</div>
  <div><#if (pcstring('PORTRAIT') != '')>
<div class="no-break">
<h2>Portrait</h2>
<div style="margin-bottom:2px; text-align:center;">
  <img src="file://localhost/${pcstring('PORTRAIT')}" style="max-height:240px; max-width:60%; border:3px solid var(--c5); box-shadow: 0 2px 8px rgba(0,0,0,0.2);" alt="${pcstring('NAME')}" />
</div>
</div>
</#if>
</div>
</div>
<hr/>
<div style="font-size:6.25pt;text-align:center;color:var(--c4);">
  PCGen ${pcstring('EXPORT.VERSION')} &mdash; ${pcstring('EXPORT.DATE')} &mdash;
  Player: ${pcstring('PLAYERNAME')} &mdash; Character: ${pcstring('NAME')}
</div>


</body>
</html>
