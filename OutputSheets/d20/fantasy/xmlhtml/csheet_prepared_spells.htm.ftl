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

<!-- ═══ ABILITY SCORES ═══ -->
<div class="no-break">
<h2>Ability Scores</h2>
<div class="six-col" style="margin-bottom:8px;">
<@loop from=0 to=pcvar('COUNT[STATS]-1') ; stat , stat_has_next>
  <div class="stat-box">
    <span class="sname">${pcstring('STAT.${stat}.NAME')}</span>
    <span class="score">${pcstring('STAT.${stat}.NOTEMP.NOEQUIP')}</span>
    <span class="mod">${pcstring('STAT.${stat}.MOD.NOTEMP.NOEQUIP')}</span>
  </div>
</@loop>
</div>
</div>

<!-- ═══ COMBAT ═══ -->
<h2>Combat</h2>
<div class="no-break" style="margin-bottom:6px;">
  <table style="table-layout:fixed; margin-bottom:6px;">
    <tr>
      <td width="16%"><div class="mini"><span class="mname">Max HP</span><span class="mval">${pcstring('HP')}</span></div></td>
      <td width="22%"><div class="mini"><span class="mname">HP Lost Today</span><span class="mval">&nbsp;</span></div></td>
      <td width="22%"><div class="mini"><span class="mname">Current HP</span><span class="mval">&nbsp;</span></div></td>
      <td width="13%"><div class="mini-inv"><span class="mname">Initiative</span><span class="mval">${pcstring('INITIATIVEMOD')}</span></div></td>
      <td width="13%"><div class="mini"><span class="mname">Speed</span><span class="mval"><@loop from=0 to=pcvar('COUNT[MOVE]-1') ; mv , mv_has_next>${pcstring('MOVE.${mv}.RATE')}</@loop></span></div></td>
      <td width="14%"><div class="mini"><span class="mname">DR</span><span class="mval"><#if (pcstring('DR') != '')>${pcstring('DR')}<#else>0</#if></span></div></td>
    </tr>
  </table>
</div>

<div class="no-break" style="margin-bottom:6px;">
  <table style="table-layout:fixed; margin-bottom:4px;">
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
  <table style="table-layout:fixed; margin-top:6px; margin-bottom:4px;">
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

<!-- ═══ SAVES ═══ -->
<div class="no-break">
  <h2>Saves</h2>
  <table style="table-layout:fixed; margin-bottom:4px;">
    <tr>
      <td width="20%"></td>
      <td width="12%" style="font-size:7pt;text-transform:uppercase;letter-spacing:0.5px;" align="center">Total</td>
      <td width="12%" style="font-size:7pt;text-transform:uppercase;letter-spacing:0.5px;" align="center">Base</td>
      <td width="12%" style="font-size:7pt;text-transform:uppercase;letter-spacing:0.5px;" align="center">Magic</td>
      <td width="12%" style="font-size:7pt;text-transform:uppercase;letter-spacing:0.5px;" align="center">Misc</td>
      <td width="32%"></td>
    </tr>
<@loop from=0 to=pcvar('COUNT[CHECKS]-1') ; chk , chk_has_next>
    <tr>
      <td class="border" style="background:var(--c1);color:var(--inv);font-size:9pt;font-family:'Raleway',sans-serif;letter-spacing:1px;">
        <b>${pcstring('CHECK.${chk}.NAME')}</b>
        <#if (pcstring('CHECK.${chk}.NAME') = 'Fortitude')><div style="font-size:6pt;color:var(--c5);letter-spacing:0.5px;text-transform:uppercase;">CON (${pcstring('CHECK.${chk}.STATMOD')})</div></#if>
        <#if (pcstring('CHECK.${chk}.NAME') = 'Reflex')><div style="font-size:6pt;color:var(--c5);letter-spacing:0.5px;text-transform:uppercase;">DEX (${pcstring('CHECK.${chk}.STATMOD')})</div></#if>
        <#if (pcstring('CHECK.${chk}.NAME') = 'Will')><div style="font-size:6pt;color:var(--c5);letter-spacing:0.5px;text-transform:uppercase;">WIS (${pcstring('CHECK.${chk}.STATMOD')})</div></#if>
      </td>
      <td class="border val">${pcstring('CHECK.${chk}.TOTAL')}</td>
      <td class="border" align="center">${pcstring('CHECK.${chk}.BASE')}</td>
      <td class="border" align="center">${pcstring('CHECK.${chk}.MAGIC')}</td>
      <td class="border" align="center">${pcstring('CHECK.${chk}.MISC.NOMAGIC.NOSTAT')}</td>
      <td></td>
    </tr>
</@loop>
  </table>
  <#assign hasSaveCond = pcvar('countdistinct("ABILITIES","ASPECT=SaveBonus")-1') />
  <#if (hasSaveCond >= 0)>
  <div class="note-box">
    <span style="font-size:7pt;font-weight:bold;">Conditional Save Modifiers:</span><br/>
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

<!-- ═══ NOTES ═══ -->
<div class="no-break">
<h2>Notes (Description)</h2>
<div class="note-box" style="margin-bottom:8px;">
  <#assign descRaw = pcstring('DESC') />
  <#assign descRaw = descRaw?replace("&lt;","<") />
  <#assign descRaw = descRaw?replace("&gt;",">") />
  <#assign descRaw = descRaw?replace("&amp;","&") />
  <#assign descRaw = descRaw?replace("&quot;",'"') />
  <#assign descRaw = descRaw?replace("&#39;","'") />
  ${descRaw}
</div>
</div>

<!-- ═══ SKILLS ═══ -->
<div style="page-break-before: always;">
<h2>Skills</h2>
<#assign skillCount = pcvar('count("SKILLSIT", "VIEW=VISIBLE_EXPORT")') />
<#assign skillHalf = (skillCount / 2)?int />
<div class="two-col" style="gap:8px; margin-bottom:4px; align-items:start;">
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
        <td class="border" style="font-size:8pt;<#if isClassSkill>font-weight:bold;</#if>">
          <#if pcboolean("SKILLSIT.${sk}.UNTRAINED")>&#9670;</#if>${pcstring('SKILLSIT.${sk}')}<#if (pcstring('SKILLSIT.${sk}.ACPv') != "v")>*</#if>
          <br/><span style="font-size:6pt;color:var(--c4);text-transform:uppercase;letter-spacing:0.5px;font-weight:normal;">${pcstring('SKILLSIT.${sk}.ABILITY')} (+${pcstring('SKILLSIT.${sk}.ABMOD')})</span>
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
        <td class="border" style="font-size:8pt;<#if isClassSkill>font-weight:bold;</#if>">
          <#if pcboolean("SKILLSIT.${sk}.UNTRAINED")>&#9670;</#if>${pcstring('SKILLSIT.${sk}')}<#if (pcstring('SKILLSIT.${sk}.ACPv') != "v")>*</#if>
          <br/><span style="font-size:6pt;color:var(--c4);text-transform:uppercase;letter-spacing:0.5px;font-weight:normal;">${pcstring('SKILLSIT.${sk}.ABILITY')} (+${pcstring('SKILLSIT.${sk}.ABMOD')})</span>
        </td>
        <td class="border val">${pcstring('SKILLSIT.${sk}.TOTAL')}</td>
        <td class="border" align="center">${pcstring("SKILLSIT.${sk}.RANK")?replace("\\.0","","rf")}</td>
        <td class="border" align="center">${pcstring('SKILLSIT.${sk}.MISC')}</td>
      </tr>
</@loop>
    </table>
  </div>
</div>
<div style="font-size:7pt; margin-top:3px;"><b>Bold</b> = class skill with rank (+3 bonus) &nbsp; &#9670; = usable untrained &nbsp; * = armor check penalty applies</div>
<div class="help-text" style="margin-top:3px;">
  Class skills give +3 if you have &ge;1 rank &mdash;
  Max ranks = character level &mdash;
  Take 10: non-stressful, treat roll as 10 &mdash;
  Take 20: 20&times; longer, treat roll as 20 (no fail consequence)
</div>
<div class="note-box" style="margin-top:6px;">
  <span style="font-size:7pt;font-weight:bold;">Conditional Skill Modifiers:</span><br/>
  <#assign hasSkillCond = false />
  <@loop from=0 to=pcvar('countdistinct("ABILITIES","ASPECT=SkillBonus")-1') ; ab , ab_has_next>
    <#assign hasSkillCond = true />
    &bull; ${pcstring('ABILITYALL.ANY.${ab}.ASPECT=SkillBonus.ASPECT.SkillBonus')}<br/>
  </@loop>
  <#if !hasSkillCond><span style="color:var(--c4);font-size:8pt;">No modifiers</span></#if>
</div>
</div>

<div class="two-col" style="gap:14px; align-items:start;">

<!-- LEFT: Special Qualities -->
<div>
<#if (pcvar('countdistinct("ABILITIES","CATEGORY=Special Ability","TYPE=SpecialQuality","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")') > 0)>
<div class="no-break">
<h2>Special Qualities</h2>
<div style="margin-bottom:8px;">
  <table style="table-layout:fixed;">
<@loop from=0 to=pcvar('countdistinct("ABILITIES","CATEGORY=Special Ability","TYPE=SpecialQuality","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1') ; sq , sq_has_next>
    <tr>
      <td class="border" style="font-size:8pt;">
        <b>${pcstring('ABILITYALL.Special Ability.VISIBLE.${sq}.TYPE=SpecialQuality')}</b><br/>
        <span class="src">[${pcstring('ABILITYALL.Special Ability.VISIBLE.${sq}.TYPE=SpecialQuality.SOURCE')}]</span><br/>
        <span style="font-size:7pt;">${pcstring('ABILITYALL.Special Ability.VISIBLE.${sq}.TYPE=SpecialQuality.DESC')}</span>
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
<div style="margin-bottom:8px;">
  <table style="table-layout:fixed;">
<@loop from=0 to=pcvar('countdistinct("ABILITIES","CATEGORY=FEAT","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1') ; ft , ft_has_next>
    <tr>
      <td class="border" style="font-size:8pt;">
        <b>${pcstring('ABILITYALL.Feat.VISIBLE.${ft}')}</b><br/>
        <span class="src">[${pcstring('ABILITYALL.Feat.VISIBLE.${ft}.SOURCE')}]</span><br/>
        <span style="font-size:7pt;">${pcstring('ABILITYALL.Feat.VISIBLE.${ft}.BENEFIT')}</span>
      </td>
    </tr>
</@loop>
  </table>
</div>
</div>

<#if (pcvar('count("ABILITIES","CATEGORY=Special Ability","TYPE=Trait","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")') > 0)>
<div class="no-break">
<h2>Traits</h2>
<div style="margin-bottom:8px;">
  <table style="table-layout:fixed;">
<@loop from=0 to=pcvar('count("ABILITIES","CATEGORY=Special Ability","TYPE=Trait","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1') ; tr , tr_has_next>
    <tr>
      <td class="border" style="font-size:8pt;">
        <b>${pcstring('ABILITYALL.Special Ability.VISIBLE.${tr}.TYPE=Trait')}</b><br/>
        <span class="src">[${pcstring('ABILITYALL.Special Ability.VISIBLE.${tr}.TYPE=Trait.SOURCE')}]</span><br/>
        <span style="font-size:7pt;">${pcstring('ABILITYALL.Special Ability.VISIBLE.${tr}.TYPE=Trait.DESC')}</span>
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
<div style="margin-bottom:8px;">
  <table style="table-layout:fixed;">
<@loop from=1 to=pcvar('COUNT[DOMAINS]') ; dm , dm_has_next>
    <tr>
      <td class="border" style="font-size:8pt;">
        <b>${pcstring('DOMAIN.${dm}')}</b><br/>
        <span style="font-size:7pt;">${pcstring('DOMAIN.${dm}.POWER')}</span>
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
<h2>Special Attacks</h2>
<div style="margin-bottom:8px;">
  <table style="table-layout:fixed;">
    <#if (pcvar('countdistinct("ABILITIES","CATEGORY=Special Ability","TYPE=SpecialAttack","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")') > 0)>
    <@loop from=0 to=pcvar('countdistinct("ABILITIES","CATEGORY=Special Ability","TYPE=SpecialAttack","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1') ; sa , sa_has_next>
    <tr>
      <td class="border" style="font-size:8pt;">
        <b>${pcstring('ABILITYALL.Special Ability.VISIBLE.${sa}.TYPE=SpecialAttack')}</b><br />
        <span class="src">[${pcstring('ABILITYALL.Special Ability.VISIBLE.${sa}.TYPE=SpecialAttack.SOURCE')}]</span><br/>
        <span style="font-size:7pt;">${pcstring('ABILITYALL.Special Ability.VISIBLE.${sa}.TYPE=SpecialAttack.DESC')}</span>
      </td>
      <td class="border" align="center" style="font-size:8pt; width:35%;">
        <#assign saUses = pcstring('ABILITYALL.Special Ability.VISIBLE.${sa}.TYPE=SpecialAttack.ASPECT.UsesPerDay') />
        <#if (saUses != "")>
          Uses/day: <b>${saUses}</b><br/>
          <#assign saUsesN = pcvar('ABILITYALL.Special Ability.VISIBLE.${sa}.TYPE=SpecialAttack.ASPECT.UsesPerDay.INTVAL') />
          <#if (saUsesN > 0)>
          <span style="font-size:13pt; letter-spacing:3px;"><@loop from=1 to=saUsesN>&#9744;</@loop></span>
          </#if>
        </#if>
      </td>
    </tr>
    </@loop>
    </#if>
  </table>
</div>
</div>

<div class="no-break">
<h2>Weapons</h2>
<div style="margin-bottom:4px;">
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
<#assign wTypeFull = "" />
<#if wType?contains("p")><#assign wTypeFull = wTypeFull + "Piercing " /></#if>
<#if wType?contains("s")><#assign wTypeFull = wTypeFull + "Slashing " /></#if>
<#if wType?contains("b")><#assign wTypeFull = wTypeFull + "Bludgeoning" /></#if>
<#assign wTypeFull = wTypeFull?trim />
    <tr>
      <td class="border" style="font-size:8pt;">
        <b>${pcstring('WEAPON.${wp}.NAME')}</b><#if isLight> &#9651;</#if><br/>
        <span style="font-size:7pt;color:var(--c4);">${wTypeFull}</span>
      </td>
      <#if isRanged>
        <td class="border val" colspan="3" align="center" style="font-size:8pt;">${pcstring('WEAPON.${wp}.TOTALHIT')} (ranged, ${pcstring('WEAPON.${wp}.RANGE')})</td>
        <td class="border" align="center" style="font-size:8pt;">${pcstring('WEAPON.${wp}.DAMAGE')}</td>
      <#else>
        <td class="border val">${pcstring('WEAPON.${wp}.BASEHIT')}</td>
        <td class="border val">${pcstring('WEAPON.${wp}.THHIT')}</td>
        <td class="border val">${pcstring('WEAPON.${wp}.TWPHITH')}</td>
        <td class="border" align="center" style="font-size:8pt;">
          ${pcstring('WEAPON.${wp}.BASICDAMAGE')}<br/>
          <span style="font-size:7pt;color:var(--c4);">2H: ${pcstring('WEAPON.${wp}.THDAMAGE')}</span>
        </td>
      </#if>
      <td class="border" align="center" style="font-size:8pt;">${pcstring('WEAPON.${wp}.CRIT')}/x${pcstring('WEAPON.${wp}.MULT')}</td>
    </tr>
    <#if isRanged>
    <tr>
      <td colspan="6" style="font-size:7pt;background:var(--c6);padding:3px 6px;border:1px solid var(--c5);">
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
      <td colspan="6" style="font-size:7pt;background:var(--c5);padding:3px 6px;border:1px solid var(--c5); font-style: italic;">
        <b>Special:</b> ${pcstring('WEAPON.${wp}.SPROP')}
      </td>
    </tr>
    </#if>
</#if>
</@loop>
<#assign charSize = pcstring('SIZE')?lower_case />
<#assign unarmedDie = "1d3" />
<#if (charSize == "t" || charSize?starts_with("tiny") || charSize == "s" || charSize?starts_with("small"))><#assign unarmedDie = "1d2" />
<#elseif (charSize == "m" || charSize?starts_with("medium"))><#assign unarmedDie = "1d3" />
<#elseif (charSize == "l" || charSize?starts_with("large"))><#assign unarmedDie = "1d4" />
<#elseif (charSize == "h" || charSize?starts_with("huge"))><#assign unarmedDie = "1d6" />
<#elseif (charSize == "g" || charSize?starts_with("gargantuan"))><#assign unarmedDie = "1d8" />
<#elseif (charSize == "c" || charSize?starts_with("colossal"))><#assign unarmedDie = "2d6" />
</#if>
<#assign strMod = pcstring('STAT.0.MOD.SIGN') />
    <tr style="background:var(--c6);">
      <td class="border" style="font-size:8pt;">
        <b>Unarmed</b> &#9651;<br/>
        <span style="font-size:7pt;color:var(--c4);">Bludgeoning</span>
      </td>
      <td class="border val">${pcstring('ATTACK.MELEE.TOTAL')}</td>
      <td class="border val">${pcstring('ATTACK.MELEE.TOTAL')}</td>
      <td class="border val">${pcstring('ATTACK.MELEE.TOTAL')}</td>
      <td class="border" align="center" style="font-size:8pt;">
        ${unarmedDie}${strMod}<br/>
        <span style="font-size:7pt;color:var(--c4);">2H: ${unarmedDie}${strMod}</span>
      </td>
      <td class="border" align="center" style="font-size:8pt;">20/x2</td>
    </tr>
  </table>
  <div class="help-text">
    <b>1H-P</b> = one-handed primary &nbsp;
    <b>2H</b> = two-handed, adds 1.5&times; Str to damage &nbsp;
    <b>2W-P</b> = two weapons, primary hand &nbsp;
    &#9651; = light weapon (Small or Tiny size)
  </div>
  <div class="help-text" style="margin-top:2px;">
    Two-weapon attack penalties &mdash;
    <b>2W-P</b>: &minus;4 (or &minus;2 with TWF feat) &nbsp;
    <b>2W-O(L) light off-hand</b>: &minus;4/&minus;4 (or &minus;2/&minus;2 with TWF feat) &nbsp;
    <b>2W-O(H) heavy off-hand</b>: &minus;4/&minus;8 (or &minus;2/&minus;6 with TWF feat) &mdash;
    Power Attack: &minus;1 hit per 4 BAB for +2 dmg (+3 two-handed)
  </div>
</div>
</div>

<div class="no-break" style="margin-bottom:8px;">
  <table style="table-layout:fixed; margin-bottom:4px;">
    <tr>
      <th class="border" align="left" style="width:18%;">Maneuver</th>
      <th class="border" style="width:10%;">CMB</th>
      <th class="border" style="width:10%;">CMD</th>
      <th class="border" align="left" style="width:62%;">Notes</th>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;">Grapple</td>
      <td class="border val">${pcstring('VAR.CMB_Grapple.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_Grapple.INTVAL')}</td>
      <td class="border" style="font-size:7pt;">Pin, tie up, damage, or move a grappled foe. Grappled = &minus;2 attack/AC, no two-handed.</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;">Trip</td>
      <td class="border val">${pcstring('VAR.CMB_Trip.INTVAL.SIGN')}</td>
      <td class="border val"><#if (pcvar("CantBeTripped") != 0)>Immune<#else>${pcstring('VAR.CMD_Trip.INTVAL')}</#if></td>
      <td class="border" style="font-size:7pt;">Knock prone. Prone = &minus;4 melee attack, &minus;4 AC vs melee, +4 AC vs ranged.</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;">Disarm</td>
      <td class="border val">${pcstring('VAR.CMB_Disarm.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_Disarm.INTVAL')}</td>
      <td class="border" style="font-size:7pt;">Knock weapon from foe. Beat CMD by 10+ = item lands 10ft away.</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;">Bull Rush</td>
      <td class="border val">${pcstring('VAR.CMB_BullRush.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_BullRush.INTVAL')}</td>
      <td class="border" style="font-size:7pt;">Push foe back 5ft + 5ft per 5 over CMD. You may follow.</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;">Sunder</td>
      <td class="border val">${pcstring('VAR.CMB_Sunder.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_Sunder.INTVAL')}</td>
      <td class="border" style="font-size:7pt;">Damage a held/worn item. Broken = &minus;2 attack/damage or halved effectiveness.</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;">Overrun</td>
      <td class="border val">${pcstring('VAR.CMB_Overrun.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_Overrun.INTVAL')}</td>
      <td class="border" style="font-size:7pt;">Move through foe's space. Fail = blocked; beat by 5+ = foe prone.</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;">Dirty Trick</td>
      <td class="border val">${pcstring('VAR.CMB_DirtyTrick.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_DirtyTrick.INTVAL')}</td>
      <td class="border" style="font-size:7pt;">Blind, entangle, or sicken 1 round (+1 per 5 over CMD). Std action to remove.</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;">Drag</td>
      <td class="border val">${pcstring('VAR.CMB_Drag.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_Drag.INTVAL')}</td>
      <td class="border" style="font-size:7pt;">Pull foe 5ft + 5ft per 5 over CMD toward you. Must move with them.</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;">Reposition</td>
      <td class="border val">${pcstring('VAR.CMB_Reposition.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_Reposition.INTVAL')}</td>
      <td class="border" style="font-size:7pt;">Move foe to any adjacent square. Foe must remain adjacent.</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;">Steal</td>
      <td class="border val">${pcstring('VAR.CMB_Steal.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_Steal.INTVAL')}</td>
      <td class="border" style="font-size:7pt;">Take one carried/worn item (not wielded). No free hand required.</td>
    </tr>
  </table>
  <div class="help-text">All maneuvers provoke AoO unless you have the Improved feat for that maneuver &mdash; failing by 5+ lets the foe attempt the same maneuver on you as a free action</div>
</div>

<div class="note-box no-break" style="margin-bottom:8px;">
  <span style="font-size:7pt;font-weight:bold;">Conditional Attack / Combat Modifiers:</span><br/>
  <#assign hasCombatCond = false />
  <@loop from=0 to=pcvar('countdistinct("ABILITIES","ASPECT=CombatBonus")-1') ; ab , ab_has_next>
    <#assign hasCombatCond = true />
    &bull; ${pcstring('ABILITYALL.ANY.${ab}.ASPECT=CombatBonus.ASPECT.CombatBonus')}<br/>
  </@loop>
  <#if !hasCombatCond><span style="color:var(--c4);font-size:8pt;">No modifiers</span></#if>
</div>

<div class="no-break">
<h2>Armor &amp; Shields</h2>
<div style="margin-bottom:4px;">
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
      <td class="border" style="font-size:8pt;"><b>${pcstring('ARMOR.EQUIPPED.${ar}.NAME')}</b></td>
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

<h2 style="page-break-before: always;">Prepared Spells</h2>
<div class="help-text" style="margin-bottom:4px;">
  Spell descriptions shown here come from PCGen's built-in effect summary. For the full text of any spell, refer to the source book listed in brackets &mdash; or search the spell name on the Archives of Nethys (aonprd.com) for free online access to the complete Pathfinder rules text.
</div>
<@loop from=2 to=pcvar('COUNT[SPELLBOOKS]-1') ; spellbook , spellbook_has_next>
<@loop from=pcvar('COUNT[SPELLRACE]') to=pcvar('COUNT[SPELLRACE]+COUNT[CLASSES]-1') ; class , class_has_next>
<#if (pcstring("SPELLLISTCLASS.${class}") != '')>
  <div class="no-break" style="font-size:9pt;font-weight:bold;margin:6px 0 0 0;background:var(--c6);padding:2px 6px;border-left:3px solid var(--c2);">
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
            <td class="border" style="font-size:8pt;">
              <b>${pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.BONUSSPELL')}${pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.NAME')}</b><br/>
              <i style="font-size:7pt;">${pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.SCHOOL')}</i><br />
              <span class="src">[${pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.SOURCE')}]</span>
            </td>
            <td class="border" align="center" style="font-size:11pt;letter-spacing:1px;">
              <#if (level == 0)>&infin;<#else><@loop from=1 to=pcvar("SPELLMEM.${class}.${spellbook}.${level}.${spell}.TIMES")>&#9744;</@loop></#if>
            </td>
            <td class="border" align="center" style="font-size:8pt;">
              <#if !hasNoSave><b>${spSaveShort}</b><br/>DC ${spDC}<br/></#if>
              SR: <#if (spSR != "")>${spSR}<#else>&mdash;</#if>
            </td>
            <td class="border" align="center" style="font-size:7pt;">
              ${pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.RANGE')}<br/>
              ${pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.CASTINGTIME')}<br/>
              ${pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.DURATION')}
            </td>
            <td class="border" style="font-size:7pt;">${pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.EFFECT')}</td>
          </tr>
</@loop>
        </table>
      </div>
    </#if>
  </@loop>
</#if>
</@loop>
</@loop>

<div class="no-break" style="margin-bottom:8px;">
  <h2>Concentration Quick Reference</h2>
  <div class="note-box" style="margin-bottom:4px;">
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
  <table style="table-layout:fixed; margin-bottom:4px;">
    <tr>
      <th class="border" align="left" style="width:50%;">When A Check Is Required</th>
      <th class="border" align="left" style="width:50%;">Concentration DC</th>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;">Cast defensively (to avoid provoking)</td>
      <td class="border" style="font-size:8pt;">15 + (2 &times; spell level)</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;">Take damage while casting</td>
      <td class="border" style="font-size:8pt;">10 + damage dealt + spell level</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;">Taking continuous damage while casting</td>
      <td class="border" style="font-size:8pt;">10 + half last damage dealt + spell level</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;">Vigorous motion (mount, rough vehicle, choppy water)</td>
      <td class="border" style="font-size:8pt;">10 + spell level</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;">Violent motion (violent weather, heavy turbulence)</td>
      <td class="border" style="font-size:8pt;">15 + spell level</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;">Extra violent motion (earthquake-level disruption)</td>
      <td class="border" style="font-size:8pt;">20 + spell level</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;">Weather with high wind, rain, or debris</td>
      <td class="border" style="font-size:8pt;">5 + spell level</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;">Entangled while casting</td>
      <td class="border" style="font-size:8pt;">15 + spell level</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;">Grappled or pinned while casting</td>
      <td class="border" style="font-size:8pt;">10 + grappler CMB + spell level</td>
    </tr>
  </table>
  <div class="help-text">
    <b>Common Modifiers</b>: <b>Combat Casting</b> gives +4 on concentration checks to cast defensively or while grappled/pinned &mdash;
    ability score increases, feats, traits, class features, and situational bonuses also apply.<br/>
    If you fail the concentration check, the spell is lost and has no effect.
  </div>
</div>

<div class="no-break">
<h2>Equipment</h2>
<div style="margin-bottom:8px;">
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
      <td class="border" style="font-size:8pt;">${pcstring('EQ.Not.Coin.NOT.Gem.${eq}.NAME.MAGIC~<b>~</b>')}</td>
      <td class="border" align="center" style="font-size:8pt;">${pcstring('EQ.Not.Coin.NOT.Gem.${eq}.LOCATION')}</td>
      <td class="border" align="center">${pcstring('EQ.Not.Coin.NOT.Gem.${eq}.QTY')}</td>
      <td class="border" align="center">${pcstring('EQ.Not.Coin.NOT.Gem.${eq}.WT')}</td>
      <td class="border" align="center">${pcstring('EQ.Not.Coin.NOT.Gem.${eq}.COST')}</td>
      <td class="border" align="center" style="font-size:12pt;letter-spacing:2px;padding:2px 4px;">
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
      <td colspan="2" align="right" style="font-size:8pt;"><b>Totals:</b></td>
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
<div class="two-col" style="margin-bottom:8px;">
  <div class="mini">
    <span class="mname">Encumbrance</span>
    <span class="mval" style="font-size:11pt;">${pcstring('TOTAL.WEIGHT')}</span>
    <span style="font-size:8pt;display:block;">Light: ${pcstring('WEIGHT.LIGHT')} / Med: ${pcstring('WEIGHT.MEDIUM')} / Heavy: ${pcstring('WEIGHT.HEAVY')}</span>
  </div>
  <div class="mini">
    <span class="mname">Unspent Gold</span>
    <span class="mval" style="font-size:11pt;">${pcstring('GOLD.TRUNC')} gp</span>
  </div>
</div>
</div>

<!-- ═══ RULES REFERENCE ═══ -->
<div class="no-break" style="margin-bottom:8px;">
  <h2>Rules Reference</h2>
  <div class="note-box" style="margin-bottom:6px;">
    <b>Rest</b><br/>
    <b>8 hrs</b>: Recover 1 HP / level + 1 point of ability damage.<br/>
    <b>24 hrs</b>: Same, but 2 HP and points.<br/>
    <b>With healer present/health check</b>: Same, but 3 HP and points.
  </div>
  <div class="note-box" style="margin-bottom:6px;">
    <b>House Rules</b><br/>
    <b>Level Up</b>: Player and DM roll 1 Hit Die + Con modifier for extra HP. Highest value counts.
  </div>
  <div class="note-box" style="margin-bottom:4px;">
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
<div class="note-box" style="margin-bottom:6px;">
    <b>Coins</b><br/>
    <b>Gold (gp)</b>: Most common coin piece<br/>
    <b>Silver (sp)</b>: 10sp = 1gp<br/>
    <b>Copper (cp)</b>: 100cp = 10sp = 1gp<br/>
    <b>Platinum (pp)</b>: 1pp = 10gp
  </div>
</div>

<!-- ═══ ATTACKS OF OPPORTUNITY REFERENCE ═══ -->
<div class="no-break" style="margin-bottom:8px;">
  <h2>AoO Quick Reference</h2>
  <table style="table-layout:fixed; margin-bottom:4px;">
    <tr>
      <th class="border" align="left" style="width:45%;">Action</th>
      <th class="border" align="left" style="width:55%;">Notes</th>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;">Move out of threatened square</td>
      <td class="border" style="font-size:8pt;">5-ft step, withdraw (first square), or Acrobatics can avoid</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;">Ranged attack in melee</td>
      <td class="border" style="font-size:8pt;">Any ranged attack while threatened</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;">Cast spell in melee</td>
      <td class="border" style="font-size:8pt;">Cast defensively to avoid provoking (Concentration check)</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;">Drink potion / use scroll</td>
      <td class="border" style="font-size:8pt;">Using items in melee commonly provokes</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;">Stand up from prone</td>
      <td class="border" style="font-size:8pt;">Common trigger after trip</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;">Combat maneuver (without Improved feat)</td>
      <td class="border" style="font-size:8pt;">Trip, disarm, grapple, etc.; improved feat usually prevents</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;">Retrieve stowed item</td>
      <td class="border" style="font-size:8pt;">Digging in backpack/pouch while threatened</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;">Pick up item</td>
      <td class="border" style="font-size:8pt;">Picking up from ground in melee</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;">Load crossbow</td>
      <td class="border" style="font-size:8pt;">Most loading actions in melee provoke</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;">Unarmed strike without Improved Unarmed Strike</td>
      <td class="border" style="font-size:8pt;">Barehanded attacks vs armed foes can provoke</td>
    </tr>
  </table>
</div>

<!-- ═══ ABILITY INFLUENCE REFERENCE ═══ -->
<div class="no-break" style="margin-bottom:8px;">
  <h2>Ability Influence (Quick Calc)</h2>
  <table style="table-layout:fixed; margin-bottom:4px;">
    <tr>
      <th class="border" align="left" style="width:12%;">Ability</th>
      <th class="border" style="width:13%;" align="center">Score / Mod</th>
      <th class="border" align="left" style="width:43%;">Primary Effects On This Sheet</th>
      <th class="border" align="left" style="width:32%;">Current Derived Values</th>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;"><b>STR</b></td>
      <td class="border val">14 (+2)</td>
      <td class="border" style="font-size:8pt;">Melee attack, melee damage, CMB, CMD, carry/lift limits</td>
      <td class="border" style="font-size:8pt;">Melee: +2 | CMB: +2 | CMD: 13</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;"><b>DEX</b></td>
      <td class="border val">12 (+1)</td>
      <td class="border" style="font-size:8pt;">Ranged attack, initiative, AC ability bonus, CMD, Dexterity skills, Reflex save</td>
      <td class="border" style="font-size:8pt;">Ranged: +1 | Init: +1 | AC ability: 1</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;"><b>CON</b></td>
      <td class="border val">14 (+2)</td>
      <td class="border" style="font-size:8pt;">Hit points per level/HD, Fortitude save, concentration-related checks</td>
      <td class="border" style="font-size:8pt;">Max HP: 10 | Hit Dice: (1d8)+2</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;"><b>INT</b></td>
      <td class="border val">11 (+0)</td>
      <td class="border" style="font-size:8pt;">Bonus skill ranks/level, INT-based skills, knowledge checks, some feat prerequisites</td>
      <td class="border" style="font-size:8pt;">See Skills table for INT-based totals</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;"><b>WIS</b></td>
      <td class="border val">16 (+3)</td>
      <td class="border" style="font-size:8pt;">Will save, WIS-based skills, divine spellcasting checks/DCs when applicable</td>
      <td class="border" style="font-size:8pt;">See Saves/Skills and Prepared Spells sections</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;"><b>CHA</b></td>
      <td class="border val">12 (+1)</td>
      <td class="border" style="font-size:8pt;">Social skills, class features that key from CHA, turning/channel effects when used</td>
      <td class="border" style="font-size:8pt;">See class feature and ability notes</td>
    </tr>
  </table>
  <div class="help-text">
    Ability damage/drain quick rule: every 2 points usually changes the ability modifier by 1, which then shifts all dependent values above.
  </div>
</div>

<!-- ═══ CONDITIONS REFERENCE ═══ -->
<div class="no-break" style="margin-bottom:8px;">
  <h2>Common Conditions &amp; Modifiers</h2>
  <table style="table-layout:fixed; margin-bottom:4px;">
    <tr>
      <th class="border" align="left" style="width:22%;">Condition / Situation</th>
      <th class="border" align="left" style="width:48%;">Main Effect</th>
      <th class="border" align="left" style="width:30%;">Quick Modifier</th>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;"><b>Shaken</b></td>
      <td class="border" style="font-size:8pt;">General fear penalties</td>
      <td class="border" style="font-size:8pt;">&minus;2 attacks, saves, skills, ability checks</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;"><b>Frightened</b></td>
      <td class="border" style="font-size:8pt;">As shaken; must flee if possible</td>
      <td class="border" style="font-size:8pt;">&minus;2 attacks, saves, skills, checks</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;"><b>Courage</b></td>
      <td class="border" style="font-size:8pt;">Morale combat boost</td>
      <td class="border" style="font-size:8pt;">+1 to hit; +1 saves vs fear</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;"><b>Guidance</b></td>
      <td class="border" style="font-size:8pt;">Single-use bonus</td>
      <td class="border" style="font-size:8pt;">+1 attack, +1 save, or +1 skill check</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;"><b>Sickened</b></td>
      <td class="border" style="font-size:8pt;">Nausea/weakness penalties</td>
      <td class="border" style="font-size:8pt;">&minus;2 attacks, weapon dmg, saves, skills, checks</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;"><b>Fatigued</b></td>
      <td class="border" style="font-size:8pt;">Tired; cannot run/charge</td>
      <td class="border" style="font-size:8pt;">&minus;2 Str, &minus;2 Dex</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;"><b>Exhausted</b></td>
      <td class="border" style="font-size:8pt;">Severe fatigue; slower movement</td>
      <td class="border" style="font-size:8pt;">&minus;6 Str, &minus;6 Dex</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;"><b>Prone</b></td>
      <td class="border" style="font-size:8pt;">Worse in melee, better vs ranged</td>
      <td class="border" style="font-size:8pt;">&minus;4 melee attacks, &minus;4 AC vs melee, +4 AC vs ranged</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;"><b>Flat-Footed</b></td>
      <td class="border" style="font-size:8pt;">Not ready to react</td>
      <td class="border" style="font-size:8pt;">Lose Dex to AC (and dodge bonuses)</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;"><b>Entangled</b></td>
      <td class="border" style="font-size:8pt;">Restricted movement/offense</td>
      <td class="border" style="font-size:8pt;">&minus;2 attack, &minus;4 Dex, move at half speed</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;"><b>Grappled</b></td>
      <td class="border" style="font-size:8pt;">Limited actions in grapple</td>
      <td class="border" style="font-size:8pt;">&minus;2 attacks and AC; no AoO</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;"><b>Pinned</b></td>
      <td class="border" style="font-size:8pt;">Immobile in grapple</td>
      <td class="border" style="font-size:8pt;">Cannot move; very limited actions</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;"><b>Staggered</b></td>
      <td class="border" style="font-size:8pt;">Only one major action</td>
      <td class="border" style="font-size:8pt;">Either one standard or one move action</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;"><b>Stunned</b></td>
      <td class="border" style="font-size:8pt;">Drop items; no actions</td>
      <td class="border" style="font-size:8pt;">Drop everything, &minus;2 AC, lose Dex to AC, no actions</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;"><b>Flanking</b></td>
      <td class="border" style="font-size:8pt;">Attacking same foe from opposite sides</td>
      <td class="border" style="font-size:8pt;">+2 melee attack</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;"><b>Charge</b></td>
      <td class="border" style="font-size:8pt;">Move then strike aggressively</td>
      <td class="border" style="font-size:8pt;">+2 attack, &minus;2 AC until next turn</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;"><b>Fighting Defensively</b></td>
      <td class="border" style="font-size:8pt;">Trade attack for defense</td>
      <td class="border" style="font-size:8pt;">&minus;4 attack, +2 AC</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;"><b>Total Defense</b></td>
      <td class="border" style="font-size:8pt;">No attacks; full defense</td>
      <td class="border" style="font-size:8pt;">+4 AC</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;"><b>Blinded</b></td>
      <td class="border" style="font-size:8pt;">Cannot see</td>
      <td class="border" style="font-size:8pt;">&minus;2 AC, lose Dex to AC, &minus;4 many Str/Dex checks, move half speed</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;"><b>Invisible Attacker</b></td>
      <td class="border" style="font-size:8pt;">Defender cannot see attacker</td>
      <td class="border" style="font-size:8pt;">Attacker often +2 melee; target loses Dex to AC; may require miss chance</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;"><b>Helpless / Coup de Grace</b></td>
      <td class="border" style="font-size:8pt;">Helpless targets are vulnerable</td>
      <td class="border" style="font-size:8pt;">Coup de grace: auto crit; target Fort save (DC 10 + damage dealt) or die</td>
    </tr>
  </table>
  <div class="help-text">
    Quick reference only: if an effect conflicts with a specific spell, feat, or monster ability, use the specific rule text first.
  </div>
</div>

<div class="quick-page" style="page-break-before: always;">
  <h2>Quick Reference Sheet</h2>

  <div class="six-col" style="margin-bottom:6px;">
    <div class="stat-box"><span class="sname">STR</span><span class="score">${pcstring('STAT.0.NOTEMP.NOEQUIP')}</span><span class="mod">${pcstring('STAT.0.MOD.NOTEMP.NOEQUIP')}</span></div>
    <div class="stat-box"><span class="sname">DEX</span><span class="score">${pcstring('STAT.1.NOTEMP.NOEQUIP')}</span><span class="mod">${pcstring('STAT.1.MOD.NOTEMP.NOEQUIP')}</span></div>
    <div class="stat-box"><span class="sname">CON</span><span class="score">${pcstring('STAT.2.NOTEMP.NOEQUIP')}</span><span class="mod">${pcstring('STAT.2.MOD.NOTEMP.NOEQUIP')}</span></div>
    <div class="stat-box"><span class="sname">INT</span><span class="score">${pcstring('STAT.3.NOTEMP.NOEQUIP')}</span><span class="mod">${pcstring('STAT.3.MOD.NOTEMP.NOEQUIP')}</span></div>
    <div class="stat-box"><span class="sname">WIS</span><span class="score">${pcstring('STAT.4.NOTEMP.NOEQUIP')}</span><span class="mod">${pcstring('STAT.4.MOD.NOTEMP.NOEQUIP')}</span></div>
    <div class="stat-box"><span class="sname">CHA</span><span class="score">${pcstring('STAT.5.NOTEMP.NOEQUIP')}</span><span class="mod">${pcstring('STAT.5.MOD.NOTEMP.NOEQUIP')}</span></div>
  </div>

  <table class="mini-row-fill" style="margin-bottom:6px;">
    <tr>
      <td><div class="mini"><span class="mname">HP</span><span class="mval">${pcstring('HP')}</span></div></td>
      <td><div class="mini-inv"><span class="mname">Init</span><span class="mval">${pcstring('INITIATIVEMOD')}</span></div></td>
      <td><div class="mini"><span class="mname">Move</span><span class="mval"><@loop from=0 to=pcvar('COUNT[MOVE]-1') ; mv , mv_has_next>${pcstring('MOVE.${mv}.RATE')}</@loop></span></div></td>
      <td><div class="mini"><span class="mname">AC</span><span class="mval">${pcstring('AC.Total')}</span></div></td>
      <td><div class="mini"><span class="mname">Touch</span><span class="mval">${pcstring('AC.Touch')}</span></div></td>
      <td><div class="mini"><span class="mname">Flat</span><span class="mval">${pcstring('AC.Flatfooted')}</span></div></td>
      <td><div class="mini"><span class="mname">BAB</span><span class="mval">${pcstring('ATTACK.MELEE')}</span></div></td>
      <td><div class="mini"><span class="mname">Melee</span><span class="mval">${pcstring('ATTACK.MELEE.TOTAL')}</span></div></td>
      <td><div class="mini"><span class="mname">Ranged</span><span class="mval">${pcstring('ATTACK.RANGED.TOTAL')}</span></div></td>
    </tr>
  </table>

  <table style="table-layout:fixed; margin-bottom:6px;">
    <tr>
      <th class="border" align="left" style="width:33%;">Save</th>
      <th class="border" style="width:17%;">Total</th>
      <th class="border" align="left" style="width:50%;">Quick Notes</th>
    </tr>
    <tr class="shaded"><td class="border" style="font-size:8pt;"><b>Fortitude</b></td><td class="border val">${pcstring('CHECK.0.TOTAL')}</td><td class="border" style="font-size:8pt;">Poison, disease, body effects</td></tr>
    <tr><td class="border" style="font-size:8pt;"><b>Reflex</b></td><td class="border val">${pcstring('CHECK.1.TOTAL')}</td><td class="border" style="font-size:8pt;">Area effects, traps, avoid damage</td></tr>
    <tr class="shaded"><td class="border" style="font-size:8pt;"><b>Will</b></td><td class="border val">${pcstring('CHECK.2.TOTAL')}</td><td class="border" style="font-size:8pt;">Mental control, fear, compulsion</td></tr>
  </table>

  <div class="two-col" style="gap:8px;">
    <div>
      <table style="table-layout:fixed;">
        <tr>
          <th class="border" align="left" style="width:70%;">Skill</th>
          <th class="border" style="width:30%;">Total</th>
        </tr>
<@loop from=0 to=(pcvar('count("SKILLSIT", "VIEW=VISIBLE_EXPORT")')/2)?int-1 ; skq1 , skq1_has_next>
        <tr <#if (skq1 % 2 = 0)>class="shaded"</#if>>
          <td class="border" style="font-size:7.5pt;">${pcstring('SKILLSIT.${skq1}')}</td>
          <td class="border val">${pcstring('SKILLSIT.${skq1}.TOTAL')}</td>
        </tr>
</@loop>
      </table>
    </div>
    <div>
      <table style="table-layout:fixed;">
        <tr>
          <th class="border" align="left" style="width:70%;">Skill</th>
          <th class="border" style="width:30%;">Total</th>
        </tr>
<#assign skillCount = pcvar('count("SKILLSIT", "VIEW=VISIBLE_EXPORT")') />
<#assign splitPoint = (skillCount/2)?int />
<@loop from=splitPoint to=skillCount-1 ; skq2 , skq2_has_next>
        <tr <#if (skq2 % 2 = 0)>class="shaded"</#if>>
          <td class="border" style="font-size:7.5pt;">${pcstring('SKILLSIT.${skq2}')}</td>
          <td class="border val">${pcstring('SKILLSIT.${skq2}.TOTAL')}</td>
        </tr>
</@loop>
      </table>
    </div>
  </div>

  <div class="help-text">
    Quick use: keep this page visible during combat for AC, attacks, saves, and top skill totals.
  </div>
</div>

<div class="no-break" style="page-break-before: always;">
<h2>Biography</h2>
<div class="note-box" style="margin-bottom:8px;">
  <#assign bioRaw = pcstring('BIO') />
  <#assign bioRaw = bioRaw?replace("&lt;","<") />
  <#assign bioRaw = bioRaw?replace("&gt;",">") />
  <#assign bioRaw = bioRaw?replace("&amp;","&") />
  <#assign bioRaw = bioRaw?replace("&quot;",'"') />
  <#assign bioRaw = bioRaw?replace("&#39;","'") />
  ${bioRaw}
</div>
</div>

<#if (pcstring('PORTRAIT') != '')>
<div class="no-break">
<h2>Portrait</h2>
<div style="margin-bottom:8px; text-align:center;">
  <img src="file://localhost/${pcstring('PORTRAIT')}" style="max-height:400px; max-width:60%; border:3px solid var(--c5); box-shadow: 0 2px 8px rgba(0,0,0,0.2);" alt="${pcstring('NAME')}" />
</div>
</div>
</#if>

<hr/>
<div style="font-size:7pt;text-align:center;color:var(--c4);">
  PCGen ${pcstring('EXPORT.VERSION')} &mdash; ${pcstring('EXPORT.DATE')} &mdash;
  Player: ${pcstring('PLAYERNAME')} &mdash; Character: ${pcstring('NAME')}
</div>


</body>
</html>
