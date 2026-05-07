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

